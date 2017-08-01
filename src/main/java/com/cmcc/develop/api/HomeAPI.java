package com.cmcc.develop.api;

import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.ui.Model;
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
@RequestMapping(value = "/api/develop/home/")
public class HomeApi extends BaseController{


    private static final Logger logger = LoggerFactory.getLogger(HomeApi.class);

    LightuserService service = new LightuserService();
    LightService lightservice = new LightService();
    MusicService musicservice = new MusicService();
    MusichistoryService historyservice = new MusichistoryService();

   

    @RequestMapping(value = "setLight.do" ,produces ={ "application/json; charset=utf-8"})
    public String setLight(@RequestParam String telephone,@RequestParam String type,String lightId,HttpServletRequest request) throws Exception {
        JSONObject all = new JSONObject();
    	try{
    		System.out.println("ltitle====================ssssssss");
    		Lightuser user = service.getByTelphone(telephone);
    		if(lightId!=null&&!lightId.equals("")){
    		Light light = lightservice.get(lightId);
    		  if(user!=null&&light!=null){
    			user.setLight(light);
    			user.setLtitle(light.getTitle());
    			System.out.println("ltitle============"+light.getTitle());
    			Lighthistory lighthistory = new Lighthistory();
        		lighthistory.setCreateDate(new Date());
        		lighthistory.setDescrible(light.getDescrible());
        		lighthistory.setInstructions(light.getInstructions());
        		lighthistory.setStatus(light.getStatus());
        		lighthistory.setTitle(light.getTitle());
        		lighthistory.setUsercode(user.getUsercode());
        		lighthistory.setId(UUID.randomUUID().toString());
        		LighthistoryService s = new LighthistoryService();
        		s.insert(lighthistory);
    		  }
    		}
    		user.setLstatus(type);//0、关灯 1、开灯
    		service.update(user);//更新
    		
    
    		//添加灯光历史
    		all.put("result", "操作成功");
    	}catch(Exception e){
    		e.printStackTrace();
    		all.put("result", "操作失败");
    	}
        return all.toString();
    }
    
    /**
     * 设置聊天开关
     * @param telephone
     * @param type
     * @param lightId
     * @param request
     * @return
     * @throws Exception
     */
    @RequestMapping(value = "setTalk.do" ,produces ={ "application/json; charset=utf-8"})
    public String setTalk(@RequestParam String telephone,@RequestParam String type,HttpServletRequest request) throws Exception {
        JSONObject all = new JSONObject();
    	try{
    		Lightuser user = service.getByTelphone(telephone);
    		
    		user.setTalkstatus(type);//0、关灯1、开
    		service.update(user);//更新
    		
    
    		//添加灯光历史
    		all.put("result", "操作成功");
    	}catch(Exception e){
    		e.printStackTrace();   
    		all.put("result", "操作失败");
    	}
        return all.toString();
    }

    
    @RequestMapping(value = "setSoundControler.do" ,produces ={ "application/json; charset=utf-8"})
    public String setSoundControler(@RequestParam String telephone,@RequestParam String type,HttpServletRequest request) throws Exception {
        JSONObject all = new JSONObject();
    	try{
    		Lightuser user = service.getByTelphone(telephone);
            System.out.println("type"+type);
    		user.setSoundcontroler(type);//0、停止1、开
    		service.update(user);//更新
    		
    
    		//添加灯光历史
    		all.put("result", "操作成功");
    	}catch(Exception e){
    		e.printStackTrace();
    		all.put("result", "操作失败");
    	}
        return all.toString();
    }
    
    @RequestMapping(value = "setMusic.do" ,produces ={ "application/json; charset=utf-8"})
    public String setMusic(@RequestParam String telephone,@RequestParam String musicId,@RequestParam String status,HttpServletRequest request) throws Exception {
        JSONObject all = new JSONObject();
    	try{
    		Lightuser user = service.getByTelphone(telephone);
    		Music music = musicservice.get(musicId);
    		if(user!=null&&music!=null){
        		Musichistory musichistory = new Musichistory();
        		musichistory.setId(UUID.randomUUID().toString());
        		musichistory.setCreateDate(new Date());
        		musichistory.setDescrible(music.getDescrible());
        		musichistory.setTitle(music.getTitle());
        		musichistory.setVideourl(music.getVideourl());
        		musichistory.setUsercode(user.getUsercode());
        		historyservice.insert(musichistory);
        		
        		user.setMusicstatus(status);//设置音乐播放状态
    			user.setMusic(music);
    			user.setMtitle(music.getTitle());
    			user.setCmusictitle(music.getTitle());
    			user.setCurrentmusic(music);
    	 		service.update(user);//更新
    		}
   
    		//添加灯光历史
    		
    		all.put("result", "操作成功");
    	}catch(Exception e){
    		e.printStackTrace();
    		all.put("result", "操作失败");
    	}
        return all.toString();
    }
    
    /**
     * 设置音乐播放模式
     * @param telephone
     * @param musicId
     * @param status
     * @param request
     * @return
     * @throws Exception
     */
    @RequestMapping(value = "setMusicStatus.do" ,produces ={ "application/json; charset=utf-8"})
    public String setMusicStatus(@RequestParam String telephone,@RequestParam String status,HttpServletRequest request) throws Exception {
        JSONObject all = new JSONObject();
    	try{
    		Lightuser user = service.getByTelphone(telephone);
    		if(user!=null){
        		user.setBofangstatus(status);//设置播放状态
    	 		service.update(user);//更新
    		}
    		
    		all.put("result", "操作成功");
    	}catch(Exception e){
    		e.printStackTrace();
    		all.put("result", "操作失败");
    	}
        return all.toString();
    }

  
    @RequestMapping(value = "getAllSelectLight.do" ,produces ={ "application/json; charset=utf-8"})
    public String getAllSelectLight(@RequestParam String telephone,@RequestParam String type,HttpServletRequest request) throws Exception {
        JSONObject all = new JSONObject();
    	JSONArray lightarray = new JSONArray();
		
    	try{
    		Lightuser user = service.getByTelphone(telephone);
    		List<Light> lights = lightservice.getListByUsercodeAndType(user.getUsercode(), type);
    		for(Light l:lights){
    			JSONObject lightobject = new JSONObject();
    			lightobject.put("id", l.getId());
    			lightobject.put("title", l.getTitle());
    			lightobject.put("describle", l.getDescrible());
    			lightobject.put("type", l.getStatus());
    			lightobject.put("instructions", l.getInstructions());
    			lightarray.put(lightobject);//放入
    		}
    	}catch(Exception e){
    		e.printStackTrace();
    	}
        return all.toString();
    }

    
    
    
    /**
     * 获取当前播放音乐
     * @param telephone
     * @param musicId
     * @param status
     * @param request
     * @return
     * @throws Exception
     */
    @RequestMapping(value = "getCurrentMusic.do" ,produces ={ "application/json; charset=utf-8"})
    public String getCurrentMusic(HttpServletRequest request) throws Exception {
        JSONObject all = new JSONObject();
    	try{
    		Lightuser user = this.getLightuser();
    		if(user!=null){
        		user = service.getByTelphone(user.getTelephone());
    		}
    		if(user.getMusic()!=null){
    		   all.put("id", user.getMusic().getId());
    		   all.put("title", user.getMtitle());
    		}
    		all.put("result", "操作成功");
    	}catch(Exception e){
    		e.printStackTrace();
    		all.put("result", "操作失败");
    	}
        return all.toString();
    }
    
    
    /**
     * 设置灯光亮度
     * @param brightness
     * @param request
     * @return
     * @throws Exception
     */
    @RequestMapping(value = "setLightbrightness.do" ,produces ={ "application/json; charset=utf-8"})
    public String setLightbrightness(@RequestParam String brightness,HttpServletRequest request) throws Exception {
        JSONObject all = new JSONObject();
    	try{
    		Lightuser user = this.getLightuser();
    		if(user!=null){
    			System.out.println("brightness"+brightness);
        		user = service.getByTelphone(user.getTelephone());
        		user.setLbrightness(brightness);//灯光亮度
        		service.update(user);
    		}
    		
    		all.put("result", "操作成功");
    	}catch(Exception e){
    		e.printStackTrace();
    		all.put("result", "操作失败");
    	}
        return all.toString();
    }
 
    
    
    /**
     * 设置灯光操作指令
     * @param telephone
     * @param musicId
     * @param status
     * @param request
     * @return
     * @throws Exception
     */
    @RequestMapping(value = "setLightInstruction.do",produces ={ "application/json; charset=utf-8"})
    public String setLightInstruction(@RequestParam String red,@RequestParam String green,@RequestParam String blue,HttpServletRequest request) throws Exception {
        JSONObject all = new JSONObject();
    	try{
    		Lightuser user = this.getLightuser();
    		if(user!=null){
    			JSONObject object = new JSONObject();
    			object.put("red", red);
    			object.put("green", green);
    			object.put("blue", blue);
        		user = service.getByTelphone(user.getTelephone());
        		System.out.println("ightinstructions"+object.toString());
        		user.setLinstructions(object.toString());
        		service.update(user);
    		}
    		
    		all.put("result", "操作成功");
    	}catch(Exception e){
    		e.printStackTrace();
    		all.put("result", "操作失败");
    	}
        return all.toString();
    }
 

}