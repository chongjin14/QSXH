package com.qsxh.controller;

import com.opensymphony.xwork2.ActionSupport;
import com.qsxh.entity.Manager;
import com.qsxh.entity.Users;
import com.qsxh.service.IAdmin;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/loginManager")
public class LoginAction extends ActionSupport {

    @Resource
    private IAdmin iAdmin;

    @RequestMapping("/login")
    public ModelAndView managerLogin(String uname, String password){

        ModelAndView mv = new ModelAndView();
        Users users = iAdmin.userLogin(uname,password);
        System.out.println("账号名"+uname+"   "+"密码"+password);
        if(null!=users)
        {
            mv.addObject("useM",users);
            mv.setViewName("home");
        }else{
            mv.setViewName("loginfile");
        }

        return mv;
    }
    //ModelAndView 提供保存域的功能相当于 request.setAttribute();
    // 视屏上说这种框架方式降低了耦合度，企业开发基本都用这种

}
