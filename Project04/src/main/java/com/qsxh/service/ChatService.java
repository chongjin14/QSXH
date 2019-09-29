package com.qsxh.service;

import com.qsxh.entity.TblChatUser;
import com.qsxh.entity.TblUser;

import java.util.List;

public interface ChatService {

    //增加聊天用户
    public boolean addChat(TblChatUser cm);

    //获取聊天列表
    public List<TblUser> findUser(String userid);

    //用户下线
    public boolean offLine(String userid);

}
