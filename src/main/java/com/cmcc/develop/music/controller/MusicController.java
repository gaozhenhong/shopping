package com.cmcc.develop.music.controller;

import javax.servlet.http.HttpServletRequest;

import org.jsoup.helper.StringUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cmcc.develop.music.model.Music;
import com.cmcc.develop.music.model.MusicQ;
import com.cmcc.develop.music.service.MusicService;
import com.wiwi.jsoil.base.BaseController;
import com.wiwi.jsoil.sys.model.Resource;
import com.wiwi.jsoil.sys.model.User;
import com.wiwi.jsoil.sys.service.ResourceService;
import com.wiwi.jsoil.util.RequestUtil;
import com.wiwi.jsoil.util.ResourceUploadUtil;

@Controller
@RequestMapping(value = "/develop/music/")
public class MusicController extends BaseController{


    private static final Logger logger = LoggerFactory.getLogger(MusicController.class);

    MusicService service = new MusicService();



    @RequestMapping(value = "list.do")
    public String list(@ModelAttribute(value="query") MusicQ query,Model model) throws Exception {

        model.addAttribute("list", service.getList(query));

        model.addAttribute("pager", query);

        processOperationMessage(model);

        return "thymeleaf/develop/music/musicList";

    }


    @RequestMapping(value = "add.do")
    public String addView(Model model)  {

        model.addAttribute("instance", new Music() );

        return "thymeleaf/develop/music/musicAdd";

    }


    @RequestMapping(value = "addAction.do")
    public String addAction(@ModelAttribute(value="instance") Music instance, HttpServletRequest request,Model model) throws Exception {
    	User user = getUser();
        Resource resourceInstance = ResourceUploadUtil.uploadFile(request, user, "music");
        if (resourceInstance != null)
        {
          instance.setVideourl(resourceInstance.getId()+"");
        }
        
        Long thumbId = Long.valueOf(RequestUtil.getLongParameter(request, "thumbId"));
        instance.setImgurl(thumbId+"");
        
        service.insert(instance);

        setOperationMessage("添加成功！");

        return "redirect:list.do";

    }


    @RequestMapping(value = "edit.do")
    public String editView(@RequestParam String id,Model model)  throws Exception {
    	Music instance = service.get(id);
        model.addAttribute("instance", instance );
        if(!StringUtil.isBlank(instance.getVideourl())){
           model.addAttribute("musicFile", new ResourceService().get(Long.valueOf(instance.getVideourl())));
        }
        if(instance.getImgurl()!=null&&!instance.getImgurl().equals("")){
          Resource logo = new ResourceService().get(Long.valueOf(instance.getImgurl()));
          model.addAttribute("resource", logo);
        }

        return "thymeleaf/develop/music/musicEdit";

    }


    @RequestMapping(value = "editAction.do")
    public String editAction(@ModelAttribute(value="instance") Music instance, HttpServletRequest request,Model model) throws Exception {
		User user = getUser();
		Resource resourceInstance = ResourceUploadUtil.uploadFile(request, user, "music");
		if (resourceInstance != null) {
			instance.setVideourl(resourceInstance.getId() + "");
		}

        Long thumbId = Long.valueOf(RequestUtil.getLongParameter(request, "thumbId"));
        instance.setImgurl(thumbId+"");
        
		service.update(instance);

        setOperationMessage("修改成功！");

        return "redirect:list.do";

    }


    @RequestMapping(value = "view.do")
    public String view(@RequestParam String id, @RequestParam(required = false,value="isModal") Boolean isModal, Model model) throws Exception  {
    	Music instance = service.get(id);
        model.addAttribute("instance", instance );
        if(!StringUtil.isBlank(instance.getVideourl())){
            model.addAttribute("musicFile", new ResourceService().get(Long.valueOf(instance.getVideourl())));
         }
        model.addAttribute("isModal", isModal == null?true:isModal );
        if(instance.getImgurl()!=null&&!instance.getImgurl().equals("")){
            Resource logo = new ResourceService().get(Long.valueOf(instance.getImgurl()));
            model.addAttribute("resource", logo);
          }

        return "thymeleaf/develop/music/musicView";

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

}