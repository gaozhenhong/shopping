package com.cmcc.develop.api;

import java.net.URLEncoder;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cmcc.develop.api.model.Vericode;
import com.cmcc.develop.light.model.Light;
import com.cmcc.develop.light.service.LightService;
import com.cmcc.develop.lightuser.model.Lightuser;
import com.cmcc.develop.lightuser.service.LightuserService;
import com.cmcc.develop.music.model.Music;
import com.cmcc.develop.music.service.MusicService;
import com.wiwi.jsoil.base.BaseController;
import com.wiwi.jsoil.exception.DaoException;
import com.wiwi.jsoil.exception.RenderException;
import com.wiwi.jsoil.util.WebUtil;

@Controller
public class MemberLoginController extends BaseController
{
  private static final Logger logger = LoggerFactory.getLogger(MemberLoginController.class);
  LightuserService userService = new LightuserService();
  LightService lightservice = new LightService();
  MusicService musicservice = new MusicService();

  @RequestMapping(value={"/mobile/light/member/login"}, method={org.springframework.web.bind.annotation.RequestMethod.GET})
  public String login(Locale locale, HttpServletRequest request, Model model, HttpSession session)
    throws Exception
  {

    return "thymeleaf/develop/mobile/login";
  }
  
  @RequestMapping(value={"/mobile/light/sys/home.do"}, method={org.springframework.web.bind.annotation.RequestMethod.GET})
  public String home(Locale locale, HttpServletRequest request, Model model, HttpSession session)
    throws Exception
  {

	 Lightuser user = this.getLightuser();
	 JSONObject all = new JSONObject();
  	try{
        user = userService.get(user.getId());
  		List<Light> lights = lightservice.getListByUsercodeAndType(user.getUsercode(), "");
  		List<Music>allmusicLIst = musicservice.getList();
  		model.addAttribute("lights",lights);
  		model.addAttribute("musics",allmusicLIst);
  		model.addAttribute("user", user);
  		
  	}catch(Exception e){
  		e.printStackTrace();
  	}

	  
    return "thymeleaf/develop/mobile/index";
  }
  
  
  @RequestMapping(value={"/sys/sendverifycode.do"},produces ={ "application/json; charset=utf-8"})
  @ResponseBody
  public String verifycode(@RequestBody Vericode code, HttpServletRequest request) {
      Lightuser user = null;
      JSONObject result = new JSONObject();
      try {
           user = userService.getByUsercode(code.getUsercode());
          if (user == null) {
              result.put("success", "false");
              result.put("des", URLEncoder.encode("设备号不存在，请重新输入设备号!", "UTF-8"));
          } else {
              Map<String, String> responseResult = WebUtil.sendVerifyCode(code.getTelephone(), request);
              result.put("success", responseResult.get("success"));
              result.put("des", responseResult.get("des"));
              if(user.getTelephone().equals(code.getTelephone())){
            	 result.put("old", "1");
              }else{
            	  result.put("old", "0");
              }
          }
      } catch (Exception e) {
          logger.error("{}短信验证码发送失败。异常信息：{}", code.getUsercode(), e);
          e.printStackTrace();
      }
      System.out.println(result.toString());
      return result.toString();
  }
  
 

  @RequestMapping(value={"/mobile/member/login/registerAction.do"},produces ={ "application/json; charset=utf-8"})
  @ResponseBody
  public String registerAction(@RequestBody Vericode code, Model model, HttpServletRequest request,HttpSession session)
    throws Exception
  {
	  JSONObject resultobject = new JSONObject();
	  if (StringUtils.isEmpty(code.getTelephone()) || StringUtils.isEmpty(code.getVerifycode())|| StringUtils.isEmpty(code.getUsercode())) {
          setOperationMessage("手机号码、验证码、设备号不能为空!");
          resultobject.put("result", "fail");
    	  resultobject.put("message", "手机号码、验证码、设备号不能为空!");
      }
	  System.out.println("333");
      Lightuser user = null;
      try {
    	  System.out.println("444");
          user = this.userService.getByUsercode(code.getUsercode());
      } catch (DaoException e) {
          logger.error("{}绑定失败。异常信息：{}", code.getTelephone(), e);
          e.printStackTrace();
      } catch (RenderException e) {
          logger.error("{}绑定失败。异常信息：{}", code.getTelephone(), e);
          e.printStackTrace();
      }
      System.out.println("222444");
      if (user != null) {
    	 
          //判断验证码是否正确
          Map<String, String> result = WebUtil.checkVerifyCode(code.getTelephone(), code.getVerifycode(), request);
          if (!result.get("success").equals("true")) {
        	  System.out.println("555"+result);
              setOperationMessage(result.get("des"));
              resultobject.put("result", "fail");
        	  resultobject.put("message", result.get("des"));
          }

          user.setName("");
          user.setTelephone(code.getTelephone());
          user.setLoginName(code.getTelephone());
          user.setLstatus("0");
          user.setMusicstatus("0");
          user.setSoundcontroler("0");
          userService.update(user);//更新user
          System.out.println("666");
          session.setAttribute("MeMbErLoGiNsEsSiOnKeY", user);
          model.addAttribute("user", user);
          String beforeLoginUrl = (String) getRequest().getSession().getAttribute("BeFoReLoGiNuRl");
          logger.info("登录成功后：AppConstants.BEFORE_LOGIN_URL：{}", beforeLoginUrl);
          resultobject.put("result", "success");

      }
      resultobject.put("result", "fail");
	  resultobject.put("message", "用户名或密码错误，请重新登录！");

      return resultobject.toString();
  }
//
//  @RequestMapping(value={"/mobile/sys/loginAction.do"},produces ={ "application/json; charset=utf-8"})
//  @ResponseBody
//  public String loginAction(@RequestBody Vericode code, Model model, HttpServletRequest request,
//                            HttpSession session) throws DaoException, RenderException {
//      logger.info("登录.........【{}】", code.getTelephone());
//      JSONObject resultobject = new JSONObject();
//      if (StringUtils.isEmpty(code.getTelephone()) || StringUtils.isEmpty(code.getVerifycode())) {
//          //setOperationMessage("手机号码或验证码不能为空!");
//    	  resultobject.put("result", "fail");
//    	  resultobject.put("message", "手机号码或验证码不能为空!");
//      }
//      Lightuser user = null;
//      try {
//          user = this.userService.getByTelphone(code.getTelephone());
//      } catch (DaoException e) {
//          logger.error("{}登录失败。异常信息：{}", code.getTelephone(), e);
//          e.printStackTrace();
//      } catch (RenderException e) {
//          logger.error("{}登录失败。异常信息：{}", code.getTelephone(), e);
//          e.printStackTrace();
//      }
//      if (user != null) {
//
//          //判断验证码是否正确
//          Map<String, String> result = WebUtil.checkVerifyCode(user.getTelephone(), code.getVerifycode(), request);
//          if (!result.get("success").equals("true")) {
//              setOperationMessage(result.get("des"));
//        	  resultobject.put("result", "fail");
//        	  resultobject.put("message", result.get("des"));
//          }
//
//          session.setAttribute("MeMbErLoGiNsEsSiOnKeY", user);
//          model.addAttribute("user", user);
//          String beforeLoginUrl = (String) getRequest().getSession().getAttribute("BeFoReLoGiNuRl");
//          logger.info("登录成功后：AppConstants.BEFORE_LOGIN_URL：{}", beforeLoginUrl);
////          if ((beforeLoginUrl != null) && (beforeLoginUrl.length() > 0)) {
////              getRequest().getSession().setAttribute("BeFoReLoGiNuRl", "");
////              processOperationMessage(model);
////              return "redirect:" + beforeLoginUrl.toString();
////          }
//          
//          resultobject.put("result", "success");
//          //return "redirect:/mobile/light/sys/home.do";
//      }else{
//	      resultobject.put("result", "fail");
//		  resultobject.put("message", "请仔细核对手机号码");
//      }
//	 
//      return resultobject.toString();
//  }
  
  
  
  @RequestMapping(value={"/api/sys/bdcheck.do"},produces ={ "application/json; charset=utf-8"})
  @ResponseBody
  public String loginAction(@RequestBody Vericode code, Model model, HttpServletRequest request,
                            HttpSession session) throws DaoException, RenderException {
      logger.info("登录.........【{}】", code.getTelephone());
      JSONObject resultobject = new JSONObject();
      Lightuser user = null;
      try {
          user = this.userService.getByUsercode(code.getUsercode());
      } catch (DaoException e) {
          logger.error("{}登录失败。异常信息：{}", code.getTelephone(), e);
          e.printStackTrace();
      } catch (RenderException e) {
          logger.error("{}登录失败。异常信息：{}", code.getTelephone(), e);
          e.printStackTrace();
      }
      if (user != null) {

          if(user.getTelephone()!=null&&!user.getTelephone().equals(""))
          {
          session.setAttribute("MeMbErLoGiNsEsSiOnKeY", user);
          model.addAttribute("user", user);
          String beforeLoginUrl = (String) getRequest().getSession().getAttribute("BeFoReLoGiNuRl");
          logger.info("登录成功后：AppConstants.BEFORE_LOGIN_URL：{}", beforeLoginUrl);
//          if ((beforeLoginUrl != null) && (beforeLoginUrl.length() > 0)) {
//              getRequest().getSession().setAttribute("BeFoReLoGiNuRl", "");
//              processOperationMessage(model);
//              return "redirect:" + beforeLoginUrl.toString();
//          }
          
          resultobject.put("result", "success");
          }else{
        	  resultobject.put("result", "fail");
    		  resultobject.put("message", "还没有绑定");
          }
          //return "redirect:/mobile/light/sys/home.do";
      }else{
	      resultobject.put("result", "fail");
		  resultobject.put("message", "请仔细核对手机号码");
      }
	 
      return resultobject.toString();
  }
  

  @RequestMapping(value={"/site/mobile/member/getVerificationCode.do"}, produces={"application/x-www-form-urlencoded; charset=utf-8"})
  @ResponseBody
  public String getVerificationCode(@RequestParam String telphone) {
    //JSONResult json = SMSUtil.sendRegisterCode(telphone);
//    JSONObject jsonObj = json.getJSONObject();
//    if (jsonObj.getBoolean("success")) {
//      return jsonObj.getJSONObject("result").getString("code");
//    }
    return "failed";
  }

  private String validateVerificationCode(@RequestParam String telphone, @RequestParam String code)
  {
//    JSONResult json = SMSUtil.validateCode(telphone, code);
//    JSONObject jsonObj = json.getJSONObject();
//    if (jsonObj.getBoolean("success")) {
//      return "success";
//    }
//    return jsonObj.getJSONObject("result").getString("error");'
	  return "";
  }
}