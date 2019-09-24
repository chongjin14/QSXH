package com.qsxh.service;

import com.qsxh.entity.User;
import org.apache.ibatis.annotations.Param;

public interface IUserBiz {
    //账号重复验证
    public boolean checkUserid(String userid);
    //前台注册 插入tbluser表和tbldata
    public boolean regAndAddData( String userid , String upass);
}
