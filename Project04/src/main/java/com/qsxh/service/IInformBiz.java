package com.qsxh.service;

import com.qsxh.entity.Dating;
import com.qsxh.entity.Inform;
import com.qsxh.entity.Message;

import java.util.List;

public interface IInformBiz {
    //系统消息
    public List<Inform> systemInform(String userid);
    //活动消息
    public List<Inform> activeInform(String userid);
    //系统消息、活动消息 查看详情
    public Inform informDetails(String informid);
    //改状态为已读
    public boolean readSysOrActive(String informid);


    //我的留言
    public List<Message> messageInform(String userid);
    //我的留言 查看详情
    public Message msgDetails(String msgid);
    //改状态为已读
    public boolean readMsg(String msgid);



    //我的约会
    public List<Dating> datingInform(String userid);
    //我的约会 查看详情
    public Dating datingDetails(String dateid);
//    //改状态为已读
//    public boolean readDating(String dateid);
}
