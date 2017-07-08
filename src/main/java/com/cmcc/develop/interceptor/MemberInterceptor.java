package com.cmcc.develop.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.cmcc.develop.lightuser.model.Lightuser;
import com.cmcc.develop.lightuser.service.LightuserService;
import com.wiwi.jsoil.exception.NoMemberLoginException;

public class MemberInterceptor
  implements HandlerInterceptor
{
  public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object arg2, Exception arg3)
    throws Exception
  {
  }

  public void postHandle(HttpServletRequest request, HttpServletResponse response, Object arg2, ModelAndView arg3)
    throws Exception
  {
  }

  public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object arg2)
    throws Exception
  {
    System.out.println("----------begin check url-----------------------");
    Lightuser member = (Lightuser)request.getSession().getAttribute("MeMbErLoGiNsEsSiOnKeY");
   System.out.println("member"+member);
    //放入数据
//    LightuserService serivce = new LightuserService();
//    Lightuser user = serivce.getByUsercode("001");
//    request.getSession().setAttribute("MeMbErLoGiNsEsSiOnKeY",user);//临时添加
//    
//    member = user;
    if (member != null) {
      return true;
    }

    request.getSession().setAttribute("BeFoReLoGiNuRl", request.getRequestURL().toString());
    request.setAttribute("operationMessage", "没访问权限！");
    throw new NoMemberLoginException("手机端登录，所请求的资源需要登录认证，请先登录！");
  }
}