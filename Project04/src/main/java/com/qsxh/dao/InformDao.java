package com.qsxh.dao;

import com.qsxh.entity.Inform;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

//消息表
@Repository("informDao")
public interface InformDao {
    //系统消息
    public List<Inform> systemInform(@Param("userid") String userid);
    //活动消息
    public List<Inform> activeInform(@Param("userid") String userid);
    //查看详情
    public Inform informDetails(@Param("informid") String informid);
    //更改已读
    public Integer readSysOrActive(@Param("informid") String informid);
}
