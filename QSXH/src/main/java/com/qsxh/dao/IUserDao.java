package com.qsxh.dao;

import com.qsxh.entity.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository("userDao")
public interface IUserDao {
    //账号重复验证
    public User checkUserid(@Param("userid") String userid);
    //前台注册 插入tbluser
    public Integer reg(@Param("userid") String userid , @Param("upass") String upass , @Param("regdate") String regdate);
    //前台注册 插入tbldata
    public Integer addHisData(/*@Param("userid") String userid*/);
}
