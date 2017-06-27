package com.cmcc.develop.musichistory.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.ui.Model;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.wiwi.jsoil.base.BaseController;
import com.cmcc.develop.musichistory.model.Musichistory;
import com.cmcc.develop.musichistory.model.MusichistoryQ;
import com.cmcc.develop.musichistory.service.MusichistoryService;

@Controller
@RequestMapping(value = "/develop/musichistory/")
public class MusichistoryController extends BaseController{


    private static final Logger logger = LoggerFactory.getLogger(MusichistoryController.class);

    MusichistoryService service = new MusichistoryService();



    @RequestMapping(value = "list.do")
    public String list(@ModelAttribute(value="query") MusichistoryQ query,Model model) throws Exception {

        model.addAttribute("list", service.getList(query));

        model.addAttribute("pager", query);

        processOperationMessage(model);

        return "thymeleaf/develop/musichistory/musichistoryList";

    }


    @RequestMapping(value = "add.do")
    public String addView(Model model)  {

        model.addAttribute("instance", new Musichistory() );

        return "thymeleaf/develop/musichistory/musichistoryAdd";

    }


    @RequestMapping(value = "addAction.do")
    public String addAction(@ModelAttribute(value="instance") Musichistory instance,Model model) throws Exception {

        service.insert(instance);

        setOperationMessage("添加成功！");

        return "redirect:list.do";

    }


    @RequestMapping(value = "edit.do")
    public String editView(@RequestParam String id,Model model)  throws Exception {

        model.addAttribute("instance", service.get(id) );

        return "thymeleaf/develop/musichistory/musichistoryEdit";

    }


    @RequestMapping(value = "editAction.do")
    public String editAction(@ModelAttribute(value="instance") Musichistory instance,Model model) throws Exception {

        service.update(instance);

        setOperationMessage("修改成功！");

        return "redirect:list.do";

    }


    @RequestMapping(value = "view.do")
    public String view(@RequestParam String id, @RequestParam(required = false,value="isModal") Boolean isModal, Model model) throws Exception  {

        model.addAttribute("instance", service.get(id) );

        model.addAttribute("isModal", isModal == null?true:isModal );

        return "thymeleaf/develop/musichistory/musichistoryView";

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