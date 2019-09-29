package com.qsxh.controller;

import com.qsxh.entity.User;
import com.qsxh.service.IAdminBiz;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/admin")
public class AdminAction {

    @Resource
    private IAdminBiz iAdminBiz;

    private String userid;
    private User user;
    private List<User> adminList;
//    普通用户查询
    @RequestMapping(value = "/adminselect.action")
    public @ResponseBody
    Map<String,Object> userSelect(User userBase){
        int page= userBase.getPage();
        int limit= userBase.getLimit();
        userBase.setPage((page - 1) * limit);
        int count=iAdminBiz.getAdminNum(userBase);
        adminList=iAdminBiz.findAdminList(userBase);
        Map<String, Object> adminMap = new HashMap<String, Object>();
        adminMap.put("code", 0);
        adminMap.put("count", count);
        adminMap.put("data", adminList);
        return adminMap;
    }


//    重置密码
    @RequestMapping(value = "/adminResetPwd.action")
    public @ResponseBody String userPassReset(String userid){
        int flag=0;
        System.out.println("==========="+userid);
        flag=iAdminBiz.adminPassReset(userid);
        return String.valueOf(flag);
    }
    //    修改用户数据
    @RequestMapping(value = "/updateAdmin.action")
    public @ResponseBody String updateMethod(User user){
        int flag=0;
        System.out.println("修改后的"+ user.getUedu()+ user.getUname()+ user.getUsex());
        flag=iAdminBiz.updateAdmin(user);
        System.out.println("修改成功为1，失败为0=========="+flag);
        return String.valueOf(flag);
    }

    // 添加管理员
    @RequestMapping(value = "/addAdmin.action")
    public @ResponseBody String addAdmin(User user){
        int flag=0;
//        注册日期
        Date now=new Date();
        SimpleDateFormat dateFormat=new SimpleDateFormat("yyyy-MM-dd");//设置日期格式
        String createTime = dateFormat.format(now);//格式化然后放入字符串中
        user.setRegdate(createTime);
        try {
            flag=iAdminBiz.addAdmin(user);
        } catch (Exception e) {
            e.printStackTrace();
            flag=0;
        }
        System.out.println("修改成功为1，失败为0=========="+flag);
        return String.valueOf(flag);
    }

    //删除用户
    @RequestMapping(value = "/deleteAdmin.action")
    public @ResponseBody String deleteUser(String userid){
        int flag=0;
        flag=iAdminBiz.deleteAdmin(userid);
        return String.valueOf(flag);
    }

    //批量删除用户
    @RequestMapping(value = "/deleteAdmins.action")
    public @ResponseBody String deleteUsers(User user){
        try {
            iAdminBiz.deleteAdmins(user.getUserids());
            return "1";
        } catch (Exception e) {
            e.printStackTrace();
            return "0";
        }
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }



}
