package com.cmcc.develop.api;

import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.json.JSONArray;
import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.cmcc.develop.light.model.Light;
import com.cmcc.develop.light.service.LightService;
import com.cmcc.develop.lighthistory.model.Lighthistory;
import com.cmcc.develop.lighthistory.service.LighthistoryService;
import com.cmcc.develop.lightuser.model.Lightuser;
import com.cmcc.develop.lightuser.service.LightuserService;
import com.cmcc.develop.music.model.Music;
import com.cmcc.develop.music.service.MusicService;
import com.cmcc.develop.musichistory.model.Musichistory;
import com.cmcc.develop.musichistory.service.MusichistoryService;
import com.wiwi.jsoil.base.BaseController;
import com.wiwi.jsoil.sys.service.ResourceService;
import com.wiwi.jsoil.util.ResourceUploadUtil;

@RestController
@RequestMapping(value = "/api/develop/lightuserapi/",produces = {"application/json;charset=UTF-8"})
public class LightuserApi extends BaseController{


    private static final Logger logger = LoggerFactory.getLogger(LightuserApi.class);

    LightuserService service = new LightuserService();
    LightService lightservice = new LightService();
    MusicService musicservice = new MusicService();


    

    @RequestMapping(value = "getUserInfo.do")
    public String getUserInfo(@RequestParam String usercode,HttpServletRequest request) throws Exception {
        JSONObject all = new JSONObject();
    	try{
    		Lightuser user = service.getByUsercode(usercode);
    		Music music = null;
    		Light light = null;
    		if(user.getMusic()!=null&&user.getMusic().getId()!=null){
    		   music = musicservice.get(user.getMusic().getId());
    		}
    		
    		if(user.getLight()!=null&&user.getLight().getId()!=null){
    	       light = lightservice.get(user.getLight().getId());
    		}
    		all.put("musicstatus", user.getMusicstatus());
    		all.put("lightstatus", user.getLstatus());
    		all.put("soundcontroler", user.getSoundcontroler());
    		all.put("lightbrightness", user.getLightbrightness());//灯光明暗
    		all.put("lightCode", light==null?"":light.getInstructions());
    		all.put("musicurl",music==null?"":ResourceUploadUtil.getFileBasePath(request)+""+(new ResourceService().get(Long.valueOf(music.getVideourl())).getResPath()));
    	}catch(Exception e){
    		e.printStackTrace();
    	}
        return all.toString();
    }
    
    
    
   

 


}