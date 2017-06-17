package com.cmcc.shopping.statistic.controller;

import org.json.JSONArray;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wiwi.jsoil.base.BaseController;
import com.wiwi.jsoil.util.JSONUtil;

@Controller
@RequestMapping({"/statistic/myStatistic/"})
public class MyStatisticController extends BaseController
{
  public static String[] colorArray = { "#68BC31", "#2091CF", "#AF4E96", "#DA5430", "#FEE074" };

  public MyStatisticController()
  {
  }

  @RequestMapping({"myStatisticList.do"})
  public String myStatisticList(Model model) throws Exception {
    Integer companyId = getCompany().getId();
    double totalSales = 0D;
    double totalReturnAmount = 0D;
    long totalOrderCount = 0L;
    double sales = 0D;
    double returnAmount = 0D;
    long orderCount = 0L;
    JSONArray newJsonArray = new JSONArray();
  


    model.addAttribute("totalSales", Double.valueOf(totalSales));
    model.addAttribute("totalReturnAmount", Double.valueOf(totalReturnAmount));
    model.addAttribute("totalOrderCount", Long.valueOf(totalOrderCount));
    model.addAttribute("pieChartData", newJsonArray);
    model.addAttribute("JSONUtil", JSONUtil.class);
    return "thymeleaf/statistic/myStatistic/myStatisticList";
  }
}