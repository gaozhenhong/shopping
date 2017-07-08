package com.wiwi.jsoil.base;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.cmcc.develop.lightuser.model.Lightuser;
import com.wiwi.jsoil.exception.NoLoginException;
import com.wiwi.jsoil.sys.UserUtil;
import com.wiwi.jsoil.sys.model.LoginLog;
import com.wiwi.jsoil.sys.model.User;
import com.wiwi.jsoil.sys.service.OperationLogService;
import com.wiwi.jsoil.util.AppConstants;
import com.wiwi.jsoil.util.DictionaryUtil;
import com.wiwi.jsoil.util.PlatformPropertyUtil;
import com.wiwi.jsoil.util.ResourceUtil;

public class JsoilInterceptor
  implements HandlerInterceptor
{
  private static List<String> guestPermissionFileList = new ArrayList<String>();
  private static final Logger logger;

  static
  {
    guestPermissionFileList.add(".js");
    guestPermissionFileList.add(".css");
    guestPermissionFileList.add(".png");
    guestPermissionFileList.add(".jpg");
    guestPermissionFileList.add(".xml");
    guestPermissionFileList.add("loginAction.do");
    guestPermissionFileList.add("logoutAction.do");
    guestPermissionFileList.add("sendverifycode.do");
    guestPermissionFileList.add("registerAction.do");
    guestPermissionFileList.add("bdcheck.do");
    

    logger = LoggerFactory.getLogger(JsoilInterceptor.class);
  }

  public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object arg2, Exception arg3)
    throws Exception
  {
  }

  public void postHandle(HttpServletRequest request, HttpServletResponse response, Object arg2, ModelAndView modelAndView)
    throws Exception
  {
    request.setAttribute("DictionaryUtil", DictionaryUtil.class);
    request.setAttribute("UserUtil", UserUtil.class);
    request.setAttribute("ResourceUtil", ResourceUtil.class);
    request.setAttribute("AppConstants", AppConstants.class);
    request.setAttribute("PlatformPropertyUtil", PlatformPropertyUtil.class);
  }

  public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object arg2)
    throws Exception
  {
	  //先判断客户端有没有验证
	 Lightuser member = (Lightuser)request.getSession().getAttribute("MeMbErLoGiNsEsSiOnKeY");
	 if (member != null) {
	      return true;
	 }
	 
    String requestURI = request.getRequestURI();
    String queryStr = request.getQueryString();
    if (queryStr == null)
      queryStr = "";
    if (!(queryStr.equalsIgnoreCase("")))
      requestURI = requestURI + "?" + queryStr;
    boolean isGuestPermission = isGuestPermission(request);
    logger.debug("判断{}地址是否允许非登录用户查看：：：：：{}", requestURI, Boolean.valueOf(isGuestPermission));
    if (!(isGuestPermission))
    {
      HttpSession session = request.getSession();
      LoginLog loginLog = (LoginLog)session.getAttribute("LoGiNsEsSiOnKeY");
      if (loginLog != null) {
        User user = loginLog.getUser();
        if (user != null) {
          request.setAttribute("user", user);
          if (AppConstants.LOG_OPERATE)
            OperationLogService.logOperateLog(request, user);

          return true;
        }
      }
      String beforeUrl = request.getRequestURL().toString();
      if (!(queryStr.equalsIgnoreCase("")))
        beforeUrl = beforeUrl + "?" + queryStr;

      request.getSession().setAttribute("BeFoReLoGiNuRl", beforeUrl);
      request.setAttribute("operationMessage", "没访问权限！");
      throw new NoLoginException("所请求的资源需要登录认证，请先登录！");
    }
    return true;
  }

  private boolean isGuestPermission(HttpServletRequest request)
  {
		String requestURI = request.getRequestURI();
		String baseName = request.getContextPath();
		if(requestURI.equalsIgnoreCase(baseName) || requestURI.equalsIgnoreCase(baseName+"/")){
			return true;
		}
		
		for(String guestPermissionFile : guestPermissionFileList){
			if( requestURI.endsWith(guestPermissionFile)){
				return true;
			}
			
			if( requestURI.indexOf("/login")>-1){
				return true;
			}
		}
		
		List <String> guestPermissionList = new ArrayList<String>();
		String guestPath = AppConstants.GUEST_PERMISSION;
		if(guestPath != null && guestPath.trim().length()>0){
			guestPermissionList.addAll(Arrays.asList(AppConstants.GUEST_PERMISSION.split(",")));
		}
		guestPermissionList.add("/resources/");
		guestPermissionList.add("/uploadFile/");
		guestPermissionList.add("/site/");
		guestPermissionList.add("/pano/");
		guestPermissionList.add("/api/");
		
		logger.info(guestPermissionList.toString());
		for(String guestPermissionPath : guestPermissionList){
			if( requestURI.startsWith(baseName+guestPermissionPath)){
				return true;
			}
		}
		
		return false;
  }
}