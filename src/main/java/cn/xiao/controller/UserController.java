package cn.xiao.controller;


import cn.xiao.domain.User;
import cn.xiao.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * 账户web控制器
 */
@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    /**
     * 保存
     * @param
     * @return
     */
    @RequestMapping("/register")
    public void register(User user, HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println("表现层：注册账户");
        //调用应用层service
        User user_register = userService.findTel(user.getTelephone());
        if (user_register==null) {
            userService.register(user);
            response.sendRedirect(request.getContextPath()+"/login.jsp");
        }else {
            response.sendRedirect(request.getContextPath()+"/register.jsp?again=error");
        }
    }
    @RequestMapping(value = "/login")
    public void login(String telephone,String password, HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println("表现层：登录账户");
        //调用应用层service
        User user = userService.login(telephone, password);
        System.out.println(user);
        if(user!=null){
//            request.getSession().setAttribute("uid", user.getUid());
            request.getSession().setAttribute("uname", user.getUname());
            request.getSession().setAttribute("uid", user.getUid());
            response.sendRedirect(request.getContextPath()+"/index.jsp");
        }else {
            response.sendRedirect(request.getContextPath()+"/login.jsp");

        }

    }
    @RequestMapping(value = "/clear")
    public void login(HttpServletRequest request, HttpServletResponse response) throws IOException {
        request.getSession().invalidate();
        response.sendRedirect(request.getContextPath()+"/index.jsp");
    }
}
