package com.qsxh.controller;

import com.qsxh.entity.User;
import com.qsxh.service.UserBiz;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/admin")
public class VipUserAction {

    @Resource
    private UserBiz userBiz;

    private String userid;
    private User user;
    private List<User> vipUserBaseList;
//    普通用户查询
    @RequestMapping(value = "/vipUserSelect.action")
    public @ResponseBody
    Map<String,Object> userSelect(User user){
        int page= user.getPage();
        int limit= user.getLimit();
        user.setPage((page - 1) * limit);
        int count=userBiz.getVipUserNum(user);
        vipUserBaseList =userBiz.findVipUserList(user);
        Map<String, Object> vipUserMap = new HashMap<String, Object>();
        vipUserMap.put("code", 0);
        vipUserMap.put("count", count);
        vipUserMap.put("data", vipUserBaseList);
        return vipUserMap;
    }


//    重置密码
    @RequestMapping(value = "/vipResetPwd.action")
    public @ResponseBody String vipUserPassReset(String userid){
        int flag=0;
        System.out.println("==========="+userid);
        flag=userBiz.userPassReset(userid);
        return String.valueOf(flag);
    }
    //    修改vip用户数据
    @RequestMapping(value = "/updateVipUser.action")
    public @ResponseBody String vipUserUpdate(User user){
        int flag=0;
        System.out.println("修改后的"+ user.getUedu()+ user.getUname()+ user.getUsex());
        flag=userBiz.updateUser(user);
        System.out.println("修改成功为2，失败为0=========="+flag);
        return String.valueOf(flag);
    }

    //删除vip用户变为普通用户
    @RequestMapping(value = "/deleteVipUser.action")
    public @ResponseBody String deleteVipUser(String userid){
        int flag=0;
        flag=userBiz.deleteVipUser(userid);
        return String.valueOf(flag);
    }

    //批量删除vip用户变为普通用户
    @RequestMapping(value = "/deleteVipUsers.action")
    public @ResponseBody String deleteVipUsers(User user){
        try {
            userBiz.deleteVipUsers(user.getUserids());
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
