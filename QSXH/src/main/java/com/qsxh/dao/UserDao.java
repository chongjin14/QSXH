package com.qsxh.dao;

import com.qsxh.entity.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface UserDao {

    //用户登录
    public User userLogin(@Param("userid") String userid, @Param("upass") String upass);
}
