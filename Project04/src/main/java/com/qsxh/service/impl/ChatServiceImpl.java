package com.qsxh.service.impl;

import com.qsxh.dao.ChatUserDao;
import com.qsxh.entity.TblChatUser;
import com.qsxh.entity.TblUser;
import com.qsxh.service.ChatService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("/chat")
public class ChatServiceImpl implements ChatService {

    @Resource
    private ChatUserDao chatUserDao;

    private boolean flag;

    @Override
    public boolean addChat(TblChatUser cm) {

        int result = chatUserDao.addChat(cm);
        flag = result > 0 ? true : false;

        return flag;
    }

    @Override
    public List<TblUser> findUser(String userid) {
        return chatUserDao.findUser(userid);
    }

    @Override
    public boolean offLine(String userid) {

        int result = chatUserDao.offLine(userid);
        flag = result > 0 ? true : false;

        return flag;
    }
}
