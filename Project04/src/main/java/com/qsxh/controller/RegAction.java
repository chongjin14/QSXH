package com.qsxh.controller;

import com.qsxh.service.UserBiz;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

//注册功能
@Controller
@RequestMapping("/regManager")
public class RegAction {
    @Resource
    private UserBiz userBiz;//用户业务处理对象

    //验证账号重复 ajax
    @RequestMapping(value = "/checkPhone.action" , method=RequestMethod.GET , produces="application/json;charset=utf-8")
    public @ResponseBody Map checkPhone(HttpServletRequest re ,String phone)
    {
        System.out.println("手机号："+phone);
        boolean flag = userBiz.checkUserid(phone);
        Map<String , String> map = new HashMap<>();
        if (flag)
        {
            map.put("msg", "fail");
        }
        else
        {
            map.put("msg", "success");
        }
        return map;
    }

    //注册 ajax
    @RequestMapping(value = "/reg.action" , method=RequestMethod.GET , produces="application/json;charset=utf-8")
//    @Transactional(propagation= Propagation.REQUIRED,rollbackForClassName="Exception")
    public @ResponseBody Map reg(HttpServletRequest re ,String phone, String password)
    {
        System.out.println("手机号："+ phone + "密码:"+ password);
        boolean flag = userBiz.insert4table(phone, password);//插入tbluser和tbldata

        Map<String , String> map = new HashMap<>();
        if (flag)
        {
            map.put("msg", "success");
        }
        else
        {
            map.put("msg", "fail");
        }
        return map;
    }
}
