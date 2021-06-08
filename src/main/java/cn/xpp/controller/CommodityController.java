package cn.xpp.controller;


import cn.xpp.pojo.Commodity;
import cn.xpp.pojo.Order;
import cn.xpp.pojo.User;
import cn.xpp.service.CommodityServiceImpl;
import cn.xpp.service.LoginServiceImpl;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/Commodity")
public class CommodityController {
    @Autowired
    @Qualifier("commodityService")
    private CommodityServiceImpl commodityService;

    @Autowired
    @Qualifier("loginService")
    private LoginServiceImpl loginService;

    @RequestMapping("/test")
    public String text(HttpSession session){
        String username =(String) session.getAttribute("username");
        System.out.println(username);
        User userByName = loginService.getUserByName(username);
        if (userByName==null){
            session.invalidate();
            return "login";
        }
        List<Order> orders = commodityService.getOrderAll(userByName.getId());
        for (Order order : orders) {
            System.out.println(order);
        }
        return "redirect:/index.jsp";
    }

    //获取商品详细信息
    @RequestMapping("/getCommodity/{name}")
    public String getCommodity(@PathVariable("name") String name, Model model){
        Commodity commodity = commodityService.getCommodityByName(name);
        System.out.println(commodity);
        if (commodity==null) return "redirect:/index.jsp";
        model.addAttribute("commodity",commodity);
        return "template";
    }

    //前往购物车请求 提示获取订单信息
    @RequestMapping("/SC")
    public String SC(HttpSession session,Model model){
        String username =(String) session.getAttribute("username");
        User userByName = loginService.getUserByName(username);
        if (userByName==null){
            session.invalidate();
            return "login";
        }
        List<Order> orders = commodityService.getOrderAll(userByName.getId());
        double pricesum=0;
        int index=0;
        for (Order order : orders) {
            index+=order.getCommoditySize();
            pricesum+=order.getPrice()*order.getCommoditySize();
        }
        model.addAttribute("orders",orders);
        session.setAttribute("pricesum",pricesum);
        session.setAttribute("index",index);
//        model.addAttribute("pricesum",pricesum);
//        model.addAttribute("index",index);
        return "SC";
    }

    @RequestMapping("/updateSize")
    @ResponseBody
    public void updateSize(int size,int id){
        System.out.println("正在修改id:"+id+"修改数量为:"+size);
        commodityService.updateSize(size, id);
    }

    @RequestMapping("/del/{id}")
    public String del(@PathVariable("id") int id){
        int del = commodityService.del(id);
        return "redirect:/Commodity/SC";
    }

    @RequestMapping("/add/{commodityID}")
    @ResponseBody
    public String add(@PathVariable("commodityID") int commodityID, HttpSession session){
        String username =(String) session.getAttribute("username");
        User userByName = loginService.getUserByName(username);
        if (userByName==null){
            session.invalidate();
            return "login";
        }
        System.out.println("进来"+userByName.getId());
        int add = commodityService.add(commodityID, userByName.getId());
        if (add<=0){
            return "添加购物车失败";
        }
        return "添加购物车成功";
    }


    //搜索商品
    @RequestMapping("/list")
    public String list(String name,Model model){
        System.out.println("查询:"+name);
        List<Commodity> commodities = commodityService.CommodityList(name);
        for (Commodity commodity : commodities) {
            System.out.println(commodity);
        }
        model.addAttribute("commodities",commodities);
        return "list";
    }

    //结算商品
    @RequestMapping("/closing/{money}")
    public String closing(@PathVariable("money") String money,Model model){
        model.addAttribute("money",money);
        return "closing";
    }


}
