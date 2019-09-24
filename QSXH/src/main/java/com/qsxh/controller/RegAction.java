package com.qsxh.controller;

import com.qsxh.service.IUserBiz;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/regManager")
public class RegAction {
    @Resource
    private IUserBiz userBiz;//用户业务处理对象

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
        boolean flag = userBiz.reg(phone, password);//插入tbluser
        boolean flag2 = userBiz.addHisData(phone);//插入tbldata

        Map<String , String> map = new HashMap<>();
        if (flag && flag2)
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
