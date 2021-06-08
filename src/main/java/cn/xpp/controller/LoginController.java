package cn.xpp.controller;


import cn.xpp.pojo.Order;
import cn.xpp.pojo.User;
import cn.xpp.service.CommodityServiceImpl;
import cn.xpp.service.LoginServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/login")
public class LoginController {

    @Autowired
    @Qualifier("commodityService")
    private CommodityServiceImpl commodityService;

    @Autowired
    @Qualifier("loginService")
    private LoginServiceImpl loginService;

    public void setLoginService(LoginServiceImpl loginService) {
        this.loginService = loginService;
    }

    //前往登录页面
    @RequestMapping("/gologin")
    public String gologin(){
        return "login";
    }

    //前往注册页面
    @RequestMapping("/goregister")
    public String goregister(){
        return "register";
    }

    //登录判断
    @RequestMapping("/login")
    public String login(User user, HttpServletRequest request){
        System.out.println(user.getUsername()+":"+user.getPassword());

        User resUser = loginService.getUser(user.getUsername(), user.getPassword());

        System.out.println(resUser);

        HttpSession session = request.getSession();

        if (resUser==null) return "login";
        session.setAttribute("username",resUser.getUsername());
        List<Order> orders = commodityService.getOrderAll(resUser.getId());
        double pricesum=0;
        int index=0;
        for (Order order : orders) {
            index+=order.getCommoditySize();
            pricesum+=order.getPrice()*order.getCommoditySize();
            System.out.println(order);
        }
        session.setAttribute("pricesum",pricesum);
        session.setAttribute("index",index);
        return "redirect:/index.jsp";
    }

    //注销用户
    @RequestMapping("/loginout")
    public String loginout(HttpSession session){
        session.removeAttribute("username");
        session.invalidate();;
        return "redirect:/index.jsp";
    }

    //ajax判断注册用户名是否存在
    @RequestMapping("/nameAjax")
    @ResponseBody//当我们加上这个注释的话，该方法的返回值不会被视图解析器解析，而是直接返回JSON解析后的字符
    public String UsernameAjax(String username){
        User userByName = loginService.getUserByName(username);
        System.out.println(userByName);
        if (userByName==null) return "";
        return "用户名已存在";
    }


    //注册用户
    @RequestMapping("/register")
    public String userregister(User user){
        System.out.println(user.getUsername()+":"+user.getPassword());
        int register = loginService.register(user.getUsername(), user.getPassword());
        return "login";
    }


}
