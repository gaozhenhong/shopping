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
    		
    
    		all.put("talkstatus", user.getTalkstatus());
    		all.put("musicstatus", user.getMstatus());
    		all.put("bofangstatus", user.getBofangstatus());//播放模式1、顺序播放 2、随机播放3、单曲
    		all.put("lightstatus", user.getLstatus());//灯光状态
    		all.put("soundcontroler", user.getSoundcontroler());//聊天状态0、关闭 1、打开
    		all.put("lightbrightness", user.getLbrightness());//灯光明暗
    		all.put("lightCode", user.getLinstructions());//灯光执行指令
    		System.out.println("lightcode="+user.getLinstructions());
    		all.put("musicid",music==null?"":music.getId());//音乐执行id
    		all.put("musicurl",music==null?"":ResourceUploadUtil.getFileBasePath(request)+""+(new ResourceService().get(Long.valueOf(music.getVideourl())).getResPath()));
    	}catch(Exception e){
    		e.printStackTrace();
    	}
        return all.toString();
    }
    
    @RequestMapping(value = "getAll.do")
    public String list(@RequestParam String usercode,HttpServletRequest request) throws Exception {
        JSONObject all = new JSONObject();
    	try{
    		JSONArray commonlightarray = new JSONArray();
    		JSONArray privatelightarray = new JSONArray();
    		List<Light> lights = lightservice.getListByUsercodeAndType(usercode, "");
    		Lightuser user = service.getByUsercode(usercode);
    		int i=0;
    		int j=0;
    		if(lights!=null&&lights.size()>0){
    			for(Light l:lights){
    				if(l.getStatus().equals("1")){
    					  i++;
    				      JSONObject lightobject = new JSONObject();
        			      lightobject.put("id", l.getId());
        			      lightobject.put("name", l.getTitle());
        			      lightobject.put("describle", l.getDescrible());
        			      lightobject.put("type", l.getStatus());
        			      lightobject.put("instructions", l.getInstructions());
        			      lightobject.put("sort", i);
        			      commonlightarray.put(lightobject);
    				}else{
    					  j++;
    					  JSONObject lightobject = new JSONObject();
            			  lightobject.put("id", l.getId());
            			  lightobject.put("name", l.getTitle());
            			  lightobject.put("describle", l.getDescrible());
            			  lightobject.put("type", l.getStatus());
            			  lightobject.put("instructions", l.getInstructions());
            			  lightobject.put("sort", j);
            			  privatelightarray.put(lightobject);
    				}
    			}
    		}
    		
    		JSONArray musicarray = new JSONArray();
    		JSONObject musicobject = new JSONObject();
    		List<Music>allmusicLIst = musicservice.getList();
    		if(allmusicLIst!=null&&allmusicLIst.size()>0){
    			for(Music m:allmusicLIst){
    				musicobject.put("id", m.getId());
    				musicobject.put("name", m.getTitle());
    				musicobject.put("playtimes", m.getPlaytimes());
    				musicobject.put("imgurl", ResourceUploadUtil.getFileBasePath(request)+""+(new ResourceService().get(Long.valueOf(m.getImgurl())).getResPath()));
    				musicobject.put("musicurl", ResourceUploadUtil.getFileBasePath(request)+""+(new ResourceService().get(Long.valueOf(m.getVideourl())).getResPath()));
    				musicarray.put(musicobject);
    			}
    		}
    		
    		all.put("commonlights", commonlightarray);
    		all.put("privateights", privatelightarray);
    		all.put("musics", musicarray);
    		all.put("name", user.getName());
    	}catch(Exception e){
    		e.printStackTrace();
    	}
        return all.toString();
    }

    //提供给硬件设置当前播放音乐
    @RequestMapping(value = "setCurrentMusic.do")
    public String setCurrentMusic(@RequestParam String usercode,@RequestParam String musicId,@RequestParam String ifend,HttpServletRequest request) throws Exception {
        JSONObject all = new JSONObject();
    	try{
    		Lightuser user = service.getByUsercode(usercode);
    		Music music = null;

    		if(user.getMusic()!=null&&user.getMusic().getId()!=null){
    		   music = musicservice.get(user.getMusic().getId());
    		}
    		user.setCmusictitle(music.getTitle());
    		user.setCurrentmusic(music);
    		user.setMusic(music);
    		user.setMtitle(music.getTitle());
    		service.update(user);//更新用户
    		
    		all.put("result", "success");

    	}catch(Exception e){
    		e.printStackTrace();
    		all.put("result", "fail");
    	}
        return all.toString();
    }

   /**
    * 修改灯光状态
    * @param usercode
    * @param type
    * @param request
    * @return
    * @throws Exception
    */
    @RequestMapping(value = "setLight.do" ,produces ={ "application/json; charset=utf-8"})
    public String setLight(@RequestParam String usercode,@RequestParam String type,HttpServletRequest request) throws Exception {
        JSONObject all = new JSONObject();
    	try{
    		Lightuser user = service.getByUsercode(usercode);
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


}