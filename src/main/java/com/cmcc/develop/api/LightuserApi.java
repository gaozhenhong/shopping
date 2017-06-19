package com.cmcc.develop.api;

import java.util.List;

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
import com.cmcc.develop.lightuser.model.Lightuser;
import com.cmcc.develop.lightuser.service.LightuserService;
import com.cmcc.develop.music.model.Music;
import com.cmcc.develop.music.service.MusicService;
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


    @RequestMapping(value = "getAll.do")
    public String list(HttpServletRequest request) throws Exception {
        JSONObject all = new JSONObject();
    	try{
    		JSONArray lightarray = new JSONArray();
    		JSONObject lightobject = new JSONObject();
    		List<Light>allLightList = lightservice.getList();
    		
    		if(allLightList!=null&&allLightList.size()>0){
    			for(Light l:allLightList){
    				lightobject.put("id", l.getId());
    				lightobject.put("name", l.getTitle());
    				lightarray.put(lightobject);
    			}
    		}
    		
    		JSONArray musicarray = new JSONArray();
    		JSONObject musicobject = new JSONObject();
    		List<Music>allmusicLIst = musicservice.getList();
    		if(allmusicLIst!=null&&allmusicLIst.size()>0){
    			for(Music m:allmusicLIst){
    				musicobject.put("id", m.getId());
    				musicobject.put("name", m.getTitle());
    				musicobject.put("musicurl", ResourceUploadUtil.getFileBasePath(request)+""+(new ResourceService().get(Long.valueOf(m.getVideourl())).getResPath()));
    				musicarray.put(musicobject);
    			}
    		}
    		
    		all.put("lights", lightarray);
    		all.put("musics", musicarray);
    		
    	}catch(Exception e){
    		e.printStackTrace();
    	}
        return all.toString();
    }


    @RequestMapping(value = "setLight.do")
    public String setLight(@RequestParam String usercode,@RequestParam String lightId,HttpServletRequest request) throws Exception {
        JSONObject all = new JSONObject();
    	try{
    		Lightuser user = service.getByUsercode(usercode);
    		Light light = lightservice.get(lightId);
    		if(user!=null&&light!=null){
    			user.setLight(light);
    		}
    		service.update(user);//更新
    		all.put("result", "操作成功");
    	}catch(Exception e){
    		e.printStackTrace();
    		all.put("result", "操作失败");
    	}
        return all.toString();
    }

    @RequestMapping(value = "setMusic.do")
    public String setMusic(@RequestParam String usercode,@RequestParam String musicId,HttpServletRequest request) throws Exception {
        JSONObject all = new JSONObject();
    	try{
    		Lightuser user = service.getByUsercode(usercode);
    		Music music = musicservice.get(musicId);
    		if(user!=null&&music!=null){
    			user.setMusic(music);
    		}
    		service.update(user);//更新
    		all.put("result", "操作成功");
    	}catch(Exception e){
    		e.printStackTrace();
    		all.put("result", "操作失败");
    	}
        return all.toString();
    }
    

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
    		all.put("lightCode", light==null?"":light.getInstructions());
    		all.put("musicurl",music==null?"":ResourceUploadUtil.getFileBasePath(request)+""+(new ResourceService().get(Long.valueOf(music.getVideourl())).getResPath()));
    	}catch(Exception e){
    		e.printStackTrace();
    	}
        return all.toString();
    }

 


}