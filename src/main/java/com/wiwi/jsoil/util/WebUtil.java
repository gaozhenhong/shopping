package com.wiwi.jsoil.util;

import com.alibaba.fastjson.JSONObject;

import com.wiwi.jsoil.sys.service.XinWangService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.thymeleaf.util.StringUtils;

import javax.servlet.http.HttpServletRequest;
import java.util.*;

/**
 * Created by LiJiQiu on 2017/6/21.
 */
public class WebUtil {
    private static final Logger logger = LoggerFactory.getLogger(WebUtil.class);

    public static int randomInt(int from, int to) {
        Random r = new Random();
        return from + r.nextInt(to - from);
    }

    /**
     * 生成数字验证码
     * @return
     * @param length 验证码长度
     */
    public static String genVerifyCode(int length){
        StringBuilder verifyCode = new StringBuilder();
        for (int i = 0; i < length; i++) {
            char c = (char) (WebUtil.randomInt( 0, 10 ) + '0');
            // [注]：不要使用字符串相加的模式，性能非常差。一般情况使用StringBuilder，如果需要线程安全可以使用StringBuffer
            verifyCode.append(String.valueOf( c ));
        }
        return  verifyCode.toString();
    }
    /**
     * 发送验证码
     *
     * @param phone   　手机号
     * @param request 　需包含type参数
     * @return
     */
    public static Map<String, String> sendVerifyCode(String phone, HttpServletRequest request) {
        Map<String, String> result = new HashMap<>();
        String type = "loginVerifyCode";
        if (type == null || "".equals(type)) {
            result.put("success", "false");
            result.put("des", "需要验证码类型!");
            return result;
        }
        String msg = WebUtil.genSMSMsg(type);
        if ("verifyCodeTypeError".equals(msg)) {
            result.put("success", "false");
            result.put("des", "验证码类型不合法!");
            return result;
        }
        String flagcode = type + "_" + phone;
        String flagtime = type + "_time_" + phone;

        Optional last_time = Optional.ofNullable(request.getSession().getAttribute(flagtime));
        long lasttime = (Long) last_time.orElseGet(() -> new Long(0));
        if (lasttime != 0 && new Date().getTime() - lasttime < 60 * 1000) {
            result.put("success", "false");
            result.put("des", "请稍后重试!");
            return result;
        }
        String verifyCode = WebUtil.genVerifyCode(6);
        msg = msg.replace("{VerifyCode}", verifyCode);
        logger.debug("{}", msg);
        String response = XinWangService.sendSMS(phone, msg);
        JSONObject responseJson = (JSONObject) JSONObject.parse(response);
        if (responseJson.get("success").equals(true)) {
            request.getSession().setAttribute(flagtime, new Date().getTime());
            request.getSession().setAttribute(flagcode, verifyCode);
            result.put("success", "true");
            result.put("des", ((String) responseJson.get("resultMsg")) + "!");
            return result;
        } else {
            result.put("success", "false");
            result.put("des", "验证码发送失败");
            return result;
        }
    }

    /**
     * 生成短消息内容，验证码用{VerifyCode}表示
     * TODO 放到数据库中，便于后期自定义
     * @param type　验证码类型，是登录还是重置密码等
     * @return      短信内容
     */
    public static String genSMSMsg(String type){
        String msg = "";
        switch (type){
            case "loginVerifyCode":
                msg = "【阿拉丁】尊敬的客户,您好!您本次验证码是:{VerifyCode},有效时间5分钟!";
                break;
            case "resetPassVerifyCode":
                msg = "【阿拉丁】尊敬的客户,您好!您本次验证码是:{VerifyCode},有效时间5分钟!";
                break;
            default:
                msg = "verifyCodeTypeError";
        }
        return msg;
    }

    /**
     * 校验验证码是否正确
     *
     * @param verifyCode 　验证码
     * @param request    　需包含type参数  checktype 什么地方用的验证码,1:第一次修改信息 不用验证码,返回true
     * @return
     */
    public static Map<String, String> checkVerifyCode(String phone, String verifyCode, HttpServletRequest request) {
        Map<String, String> result = new HashMap<>();
        String type = "loginVerifyCode";
        if (type == null || "".equals(type)) {
            result.put("success", "false");
            result.put("des", "需要验证码类型!");
            return result;
        }
        String flagcode = type + "_" + phone;
        String flagtime = type + "_time_" + phone;
        Optional<String> verify_code = Optional.ofNullable((String) request.getSession().getAttribute(flagcode))
                .filter((value) -> value.equals(verifyCode));
        if (StringUtils.equals("null", verify_code.orElse("null"))) {
            result.put("success", "false");
            result.put("des", "验证码错误，请仔细填写!");
            return result;
        }

//        验证码时限检查
        Optional last_time = Optional.ofNullable(request.getSession().getAttribute(flagtime));
        long lasttime = (Long) last_time.orElseGet(() -> new Long(0));
        if (new Date().getTime() - lasttime > 5 * 60 * 1000) {
            result.put("success", "false");
            result.put("des", "验证码已过期,请重新获取!");
            request.getSession().removeAttribute(flagcode);
            return result;
        }
        result.put("success", "true");
        result.put("des", "验证码正确");
        return result;
    }
}
