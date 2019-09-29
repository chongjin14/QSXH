package com.qsxh.controller;

import com.qsxh.entity.UserAndData;
import com.qsxh.service.impl.MatchUserServiceImpl;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/matchUser")
public class MatchUserAction {
    private List<UserAndData> list;
    private List<UserAndData> manlist;
    private List<UserAndData> womanlist;
    private ModelAndView mv = new ModelAndView();
    @Resource
    private MatchUserServiceImpl matchUserService;

    @RequestMapping("/smartMatch")
    public ModelAndView smartMatch(){
        //条件搜索页面默认查询
        list = matchUserService.findUserByCharisma();
//        for (int i =0; i<list.size();i++){
//            System.out.println(list.get(i).getUname());
//        }
        //request传给页面数据
        mv.addObject("MatchUserList",list);//回传魅力值排序用户列表
        mv.setViewName("searchmember");//跳转到条件搜索界面
        return mv;
    }

    @RequestMapping("/matchByCondition")
    public ModelAndView MatchUserListByCondition(UserAndData userAndData){
//        条件搜索页面按条件查询
        list = matchUserService.findUserByCondition(userAndData);
        //request传给页面数据
        mv.addObject("MatchUserList",list);//回传魅力值排序用户列表
        mv.addObject("userAndData",userAndData);//回传所选条件
        mv.setViewName("searchmember");//跳转到条件搜索界面
        return mv;
    }

    @RequestMapping("/matchByTime")
    public ModelAndView MatchByTime(){
        //条件搜索页面默认查询
        manlist = matchUserService.findUserByTime("男");
        womanlist = matchUserService.findUserByTime("女");
//        for (int i =0; i<list.size();i++){
//            System.out.println(list.get(i).getUname());
//        }
        //request传给页面数据
        mv.addObject("ManList",manlist);//回传近期男性用户列表
        mv.addObject("WomanList",womanlist);//回传近期女性用户列表
        mv.setViewName("index");//跳转到首页
        return mv;
    }


//    //ajax请求待条件的查询list
//    @RequestMapping(value="/MatchByCondition", method= RequestMethod.POST, produces="application/json;charset=utf-8")
//    public @ResponseBody List<UserAndData> MatchUserAllList(@RequestBody UserAndData userAndData){
//
//        return list;
//    }


}
