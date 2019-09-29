package com.qsxh.dao;


import com.qsxh.entity.TblChatUser;
import com.qsxh.entity.TblUser;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ChatUserDao {

    //增加聊天用户
    public Integer addChat(TblChatUser cm);

    //获取聊天列表
    public List<TblUser> findUser(@Param("userid") String userid);

    //用户下线
    public Integer offLine(@Param("userid") String userid);

}
