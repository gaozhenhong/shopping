package com.cmcc.develop.controler;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cmcc.develop.light.model.Light;
import com.cmcc.develop.light.service.LightService;
import com.cmcc.develop.lightuser.model.Lightuser;
import com.cmcc.develop.lightuser.service.LightuserService;
import com.cmcc.develop.music.model.Music;
import com.cmcc.develop.music.service.MusicService;
import com.wiwi.jsoil.base.BaseController;
import com.wiwi.jsoil.sys.model.Resource;
import com.wiwi.jsoil.sys.service.ResourceService;

@Controller
public class AllController extends BaseController
{
  private static final Logger logger = LoggerFactory.getLogger(AllController.class);
  LightuserService userService = new LightuserService();
  LightService lightservice = new LightService();
  MusicService musicservice = new MusicService();

  
  @RequestMapping(value={"/mobile/light/lightlist.do"})
  public String lightList( HttpServletRequest request, Model model, HttpSession session)
    throws Exception
  {

	 Lightuser user = this.getLightuser();
	 //获取灯光
  	try{
  	    user = userService.get(user.getId());
        List<Light>lights = lightservice.getListByUsercodeAndType(user.getUsercode(), "");
        model.addAttribute("lights",lights);
        model.addAttribute("user", user);
  	}catch(Exception e){
  		e.printStackTrace();
  	}

	  
     return "thymeleaf/develop/mobile/light";
  }
  
  
  
  @RequestMapping(value={"/mobile/music/list.do"})
  public String musicList( HttpServletRequest request, Model model, HttpSession session)
    throws Exception
  {

	 Lightuser user = this.getLightuser();
	 //获取灯光
  	try{
  	    user = userService.get(user.getId());
        List<Music>allmusicLIst = musicservice.getList();
        List<Music>allmusicLIsttemp = new ArrayList<Music>();
        for(Music instance:allmusicLIst){
          if(instance.getImgurl()!=null&&!instance.getImgurl().equals("")){
            Resource logo = new ResourceService().get(Long.valueOf(instance.getImgurl()));
            instance.setImgurl(logo.getResPath());
          }
          allmusicLIsttemp.add(instance);
        }
        model.addAttribute("musics",allmusicLIsttemp);
        model.addAttribute("user", user);
  	}catch(Exception e){
  		e.printStackTrace();
  	}

	  
     return "thymeleaf/develop/mobile/song";
  }
  
 
}