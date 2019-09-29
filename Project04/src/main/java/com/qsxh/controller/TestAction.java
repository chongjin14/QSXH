package com.qsxh.controller;

import com.opensymphony.xwork2.ActionSupport;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/testManager2")
public class TestAction extends ActionSupport {

    //登录测试
    @RequestMapping("/login")
    public ModelAndView managerLogin(){
        ModelAndView mv = new ModelAndView();
        //这是测试
        mv.setViewName("cregdata");
        return mv;
    }
}
