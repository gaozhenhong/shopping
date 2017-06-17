package com.cmcc.shopping.statistic.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wiwi.jsoil.base.BaseController;
import com.wiwi.jsoil.util.JSONUtil;

@Controller
@RequestMapping({"/statistic/"})
public class StatisticController extends BaseController
{
  public static String[] colorArray = { "#68BC31", "#2091CF", "#AF4E96", "#DA5430", "#FEE074" };
  public StatisticController()
  {
  }

  @RequestMapping({"statisticList.do"})
  public String statisticList(Model model) throws Exception {
    double totalSales = 0D;
    double totalReturnAmount = 0D;
    long totalOrderCount = 0L;
    double sales = 0D;
    double returnAmount = 0D;
    long orderCount = 0L;

    model.addAttribute("totalSales", Double.valueOf(totalSales));
    model.addAttribute("totalReturnAmount", Double.valueOf(totalReturnAmount));
    model.addAttribute("totalOrderCount", Long.valueOf(totalOrderCount));
    model.addAttribute("JSONUtil", JSONUtil.class);
    return "thymeleaf/statistic/statisticList";
  }
}