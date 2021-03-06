package com.cmcc.develop.lighthistory.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.ui.Model;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.wiwi.jsoil.base.BaseController;
import com.cmcc.develop.lighthistory.model.Lighthistory;
import com.cmcc.develop.lighthistory.model.LighthistoryQ;
import com.cmcc.develop.lighthistory.service.LighthistoryService;

@Controller
@RequestMapping(value = "/develop/lighthistory/")
public class LighthistoryController extends BaseController{


    private static final Logger logger = LoggerFactory.getLogger(LighthistoryController.class);

    LighthistoryService service = new LighthistoryService();



    @RequestMapping(value = "list.do")
    public String list(@ModelAttribute(value="query") LighthistoryQ query,Model model) throws Exception {

        model.addAttribute("list", service.getList(query));

        model.addAttribute("pager", query);

        processOperationMessage(model);

        return "thymeleaf/develop/lighthistory/lighthistoryList";

    }


    @RequestMapping(value = "add.do")
    public String addView(Model model)  {

        model.addAttribute("instance", new Lighthistory() );

        return "thymeleaf/develop/lighthistory/lighthistoryAdd";

    }


    @RequestMapping(value = "addAction.do")
    public String addAction(@ModelAttribute(value="instance") Lighthistory instance,Model model) throws Exception {

        service.insert(instance);

        setOperationMessage("添加成功！");

        return "redirect:list.do";

    }


    @RequestMapping(value = "edit.do")
    public String editView(@RequestParam String id,Model model)  throws Exception {

        model.addAttribute("instance", service.get(id) );

        return "thymeleaf/develop/lighthistory/lighthistoryEdit";

    }


    @RequestMapping(value = "editAction.do")
    public String editAction(@ModelAttribute(value="instance") Lighthistory instance,Model model) throws Exception {

        service.update(instance);

        setOperationMessage("修改成功！");

        return "redirect:list.do";

    }


    @RequestMapping(value = "view.do")
    public String view(@RequestParam String id, @RequestParam(required = false,value="isModal") Boolean isModal, Model model) throws Exception  {

        model.addAttribute("instance", service.get(id) );

        model.addAttribute("isModal", isModal == null?true:isModal );

        return "thymeleaf/develop/lighthistory/lighthistoryView";

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