package com.cmcc.develop.lightuser.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cmcc.develop.light.service.LightService;
import com.cmcc.develop.lightuser.model.Lightuser;
import com.cmcc.develop.lightuser.model.LightuserQ;
import com.cmcc.develop.lightuser.service.LightuserService;
import com.cmcc.develop.music.service.MusicService;
import com.wiwi.jsoil.base.BaseController;

@Controller
@RequestMapping(value = "/develop/lightuser/")
public class LightuserController extends BaseController{


    private static final Logger logger = LoggerFactory.getLogger(LightuserController.class);

    LightuserService service = new LightuserService();



    @RequestMapping(value = "list.do")
    public String list(@ModelAttribute(value="query") LightuserQ query,Model model) throws Exception {

        model.addAttribute("list", service.getList(query));

        model.addAttribute("pager", query);

        processOperationMessage(model);

        return "thymeleaf/develop/lightuser/lightuserList";

    }


    @RequestMapping(value = "add.do")
    public String addView(Model model)  {
    	model.addAttribute("lightlist", getLightList());
       	model.addAttribute("musiclist", getMusicList());
        model.addAttribute("instance", new Lightuser() );

        return "thymeleaf/develop/lightuser/lightuserAdd";

    }


    @RequestMapping(value = "addAction.do")
    public String addAction(@ModelAttribute(value="instance") Lightuser instance,Model model) throws Exception {

        service.insert(instance);

        setOperationMessage("添加成功！");

        return "redirect:list.do";

    }


    @RequestMapping(value = "edit.do")
    public String editView(@RequestParam String id,Model model)  throws Exception {
       	model.addAttribute("lightlist", getLightList());
       	model.addAttribute("musiclist", getMusicList());
        model.addAttribute("instance", service.get(id) );

        return "thymeleaf/develop/lightuser/lightuserEdit";

    }


    @RequestMapping(value = "editAction.do")
    public String editAction(@ModelAttribute(value="instance") Lightuser instance,Model model) throws Exception {

        service.update(instance);

        setOperationMessage("修改成功！");

        return "redirect:list.do";

    }


    @RequestMapping(value = "view.do")
    public String view(@RequestParam String id, @RequestParam(required = false,value="isModal") Boolean isModal, Model model) throws Exception  {

       	model.addAttribute("lightlist", getLightList());
       	model.addAttribute("musiclist", getMusicList());
        model.addAttribute("instance", service.get(id) );

        model.addAttribute("isModal", isModal == null?true:isModal );

        return "thymeleaf/develop/lightuser/lightuserView";

    }


    @RequestMapping(value = "deleteAction.do")
    public String deleteAction(@RequestParam(required=true) String id,Model model) throws Exception {

        service.delete(id);

        setOperationMessage("删除成功！");

        return "redirect:list.do";

    }


    @RequestMapping(value = "batchDeleteAction.do")
    public String batchDeleteAction(@RequestParam(value="ids",required=true) String ids,Model model) throws Exception {

        service.batchDelete(ids);

        setOperationMessage("批量删除成功！");

        return "redirect:list.do";

    }
    
    /**
     * 获取所有的灯光
     * @return
     */
    private List   getLightList() { // Byte code:
     	 
      LightService cservice = new LightService();
  	  try{
  		  
         List allLightList = cservice.getList();
         
         return allLightList;
  	  }catch(Exception e){
  			  e.printStackTrace();
  	  }
        	return null;
    }
    
    
    /**
     * 获取所有的音乐
     * @return
     */
    private List   getMusicList() { // Byte code:
     	 
      MusicService cservice = new MusicService();
  	  try{
  		  
         List allLightList = cservice.getList();
         
         return allLightList;
  	  }catch(Exception e){
  			  e.printStackTrace();
  	  }
        	return null;
    }

}