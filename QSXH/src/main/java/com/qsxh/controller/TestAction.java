package com.qsxh.controller;

import com.opensymphony.xwork2.ActionSupport;
import com.qsxh.entity.User;
import com.qsxh.service.ITest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;

@Controller
@RequestMapping("/testManager")
public class TestAction extends ActionSupport {

    @Resource
    private ITest iTest;

    //登录测试
    @RequestMapping("/login")
    public ModelAndView managerLogin(String uname, String password){
        ModelAndView mv = new ModelAndView();
        User user = iTest.userLogin(uname,password);
        System.out.println(user);
        mv.addObject("useM",user);
        mv.setViewName("muban");
        return mv;
    }

}
