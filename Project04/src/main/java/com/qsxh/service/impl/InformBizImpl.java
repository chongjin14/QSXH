package com.qsxh.service.impl;

import com.qsxh.dao.DatingDao;
import com.qsxh.dao.InformDao;
import com.qsxh.dao.MessageDao;
import com.qsxh.entity.Dating;
import com.qsxh.entity.Inform;
import com.qsxh.entity.Message;
import com.qsxh.service.IInformBiz;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

//我的消息业务
@Service("informBiz")
public class InformBizImpl implements IInformBiz {
    @Resource
    private InformDao informDao ;//系统、活动消息dao层
    @Resource
    private MessageDao messageDao ;//留言dao层
    @Resource
    private DatingDao datingDao;//约会dao层

    //系统消息
    @Override
    public List<Inform> systemInform(String userid) {
        List<Inform> list = informDao.systemInform(userid);
        return list;
    }
    //活动消息
    @Override
    public List<Inform> activeInform(String userid) {
        List<Inform> list = informDao.activeInform(userid);
        return list;
    }
    //我的留言
    @Override
    public List<Message> messageInform(String userid) {
        List<Message> list = messageDao.messageInform(userid);
        return list;
    }
    //我的约会
    @Override
    public List<Dating> datingInform(String userid) {
        List<Dating> list = datingDao.datingInform(userid);
        return list;
    }

    //系统消息，活动消息 查看详情
    @Override
    public Inform informDetails(String informid) {
        Inform inform = informDao.informDetails(informid);
        return inform;
    }
    //系统消息，活动消息 已读
    @Override
    public boolean readSysOrActive(String informid) {
        Integer num = informDao.readSysOrActive(informid);
        if(num > 0 )
        {
            return true;
        }
        else
        {
            return false;
        }
    }

    //我的留言 查看详情
    @Override
    public Message msgDetails(String msgid) {
        Message message = messageDao.messageDetails(msgid);
        return message;
    }
    //我的留言 已读
    @Override
    public boolean readMsg(String msgid) {
        Integer num = messageDao.readMessage(msgid);
        if(num > 0)
        {
            return true;
        }
        else
        {
            return false;
        }
    }

    //我的约会 查看详情
    @Override
    public Dating datingDetails(String dateid) {
        Dating dating = datingDao.datingDetails(dateid);
        return dating;
    }

}
