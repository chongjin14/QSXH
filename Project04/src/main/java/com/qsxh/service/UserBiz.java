package com.qsxh.service;

import com.qsxh.entity.User;

import java.util.List;

public interface UserBiz {
    /*=================gjy===================*/
    public List<User> findUserList(User user);
    public List<User> findVipUserList(User user);
    public int getUserNum(User user);
    public int getVipUserNum(User user);

    public int userPassReset(String userid);

    public int updateUser(User user);

    public int deleteUser(String userid);
    public int deleteVipUser(String userid);
    public void deleteUsers(String[] userids);
    public void deleteVipUsers(String[] userids);

    /*=====================wzq===================*/
    //账号重复验证
    public boolean checkUserid(String userid);
    //前台注册 插入tbluser表和tbldata
    public boolean insert4table(String userid, String upass);


}
