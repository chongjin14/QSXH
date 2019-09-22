package com.qsxh.service;

import com.qsxh.entity.User;
import org.apache.ibatis.annotations.Param;

public interface ITest {

    //用户登录
    public User userLogin(@Param("userid") String userid, @Param("upass") String upass);
}
