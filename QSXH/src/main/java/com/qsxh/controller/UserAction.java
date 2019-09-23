package com.qsxh.controller;

import com.opensymphony.xwork2.ActionSupport;
import com.qsxh.entity.User;
import com.qsxh.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/testManager")
public class UserAction extends ActionSupport {

    @Resource
    private UserService us;

    //登录测试
    @RequestMapping("/login")
    public ModelAndView managerLogin(HttpServletRequest request, String uname, String password){
        ModelAndView mv = new ModelAndView();
        User user = us.userLogin(uname,password);
        HttpSession session = request.getSession();
        System.out.println("账号名"+uname+"   "+"密码"+password);
        if(null!=user)
        {
          session.setAttribute("user",user);
          mv.addObject("useM",user);
        mv.setViewName("muban");
        }else{
            mv.setViewName("loginfile");
        }
        return mv;
    }
    //注销方法
    @RequestMapping("/outLogin")
    public String outLogin(HttpSession session){
        System.out.println("账号已注销");
        //通过session.invalidata()方法来注销当前的session
        session.invalidate();
        return "test";
    }

}
