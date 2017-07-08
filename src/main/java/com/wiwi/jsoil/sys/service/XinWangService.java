package com.wiwi.jsoil.sys.service;/*
/**
 * Created by LiJiQiu on 2017/6/21.
 */

import com.alibaba.fastjson.JSONObject;

import okhttp3.FormBody;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import org.apache.commons.codec.binary.Base64;
import org.apache.commons.codec.digest.DigestUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

@Service
public class XinWangService {
    private static final Logger logger = LoggerFactory.getLogger(XinWangService.class);

    private static final OkHttpClient okHttpClient = new OkHttpClient();

    //签名KEY，需保密
    private static final String KEY = "!kdfaicUFd32%f!Cds*%dls2B#4lodd+klcvP*Iqpy@gH3K(b^7ckd@!29=kfs6=A";
    //APPID
    private static final String APPID = "0001";
    //接口地址（欣网地址）
    private static final String URL = "http://www.yn.10086.cn/openapi/bus/handler.json";
    //公共参数
    private static final String CHANNEL = "app";
    //操作ID
    private static final String SEND_SMS_HANDLER = "send_sms_handler"; //发送短信

    public static String sendSMS(String mobilePhone, String msgContent) {
        String response = "";
        String base64Content = getBase64String(msgContent);
        JSONObject field = addCommonField(mobilePhone, SEND_SMS_HANDLER);

        ArrayList<JSONObject> smsList = new ArrayList<JSONObject>();
        JSONObject object = new JSONObject();
        object.put("mobile", mobilePhone);
        object.put("content", base64Content);
        smsList.add(object);

        field.put("content", base64Content);
        field.put("smsList", smsList);

        //TODO 最多发送两次？
        int i = 1;
        do {
            response = request(URL, field);
            logger.debug("{}下发短信次数：{}", mobilePhone, i);
            if (i == 2)
                break;
            i++;
        }while (response.equals("{success:false}"));
        logger.debug("下发短信结果：{}", response);
        return response;
    }

    private static JSONObject addCommonField(String mobilePhone, String oprateId){
        //生成Token
        String token = DigestUtils.md5Hex(CHANNEL + "_" + oprateId + "_" + mobilePhone + KEY);
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("mobile", mobilePhone);
        jsonObject.put("channel", CHANNEL);
        jsonObject.put("token", token);
        jsonObject.put("appid", APPID);
        jsonObject.put("id", oprateId);
        jsonObject.put("citycode", "KMDQ");
        return jsonObject;
    }

    private static FormBody createFormBody(JSONObject field){
        Set<String> key = field.keySet();
        FormBody.Builder builder = new FormBody.Builder();
        for(String item:key){
            builder.add(item, field.getString( item ));
        }
        FormBody body = builder.build();
        return body;
    }

    private static String request(String url, JSONObject field) {
        Map<String, Object> resp = new HashMap<>();

        Request request = new Request.Builder()
                .url(url)
                .post(createFormBody( field ))
                .build();

        try {
            Response response = okHttpClient.newCall(request).execute();
            //判断请求是否成功
            if(response.isSuccessful()){
                return response.body().string();
            }
        } catch (IOException e) {
            logger.error("短信发送失败：{}",e);
            e.printStackTrace();
        }
        return "{success:false}";
    }

    private static String getBase64String(String str){
        return Base64.encodeBase64String( str.getBytes( Charset.forName("UTF-8")) );
    }

    public static void main(String[] args) {
        System.out.print(sendSMS("13987698382", "测试短信下发！"));
    }
}