package com.qsxh.service;

import org.apache.ibatis.annotations.Param;

public interface IUserBiz {
    //账号重复验证
    public boolean checkUserid(String userid);
    //前台注册 插入tbluser表
    public boolean reg( String userid , String upass);
    //前台注册 插入tbldata表
    public boolean addHisData( String userid);
}
