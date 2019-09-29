package com.qsxh.service;

import com.qsxh.entity.User;
import org.apache.ibatis.annotations.Param;

public interface UserService {

    //用户登录
    public User userLogin(@Param("userid") String userid, @Param("upass") String upass);
    //查询用户信息
    public User getUser(@Param("userid") String userid);
    //查看金币
    public String selectGold(@Param("id") String userid);
    //获取角色名
    public String getRolename(@Param("rid") String rid);
    //获取参数名
    public String getParam(@Param("paramid") String paramid);
    //更改用户身份（成为/失去 会员）
    public int changeRoldid(@Param("id") String userid, @Param("rid") String roleid);


}
