package com.qsxh.dao;

import com.qsxh.entity.Dating;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

//约会表
@Repository("datingDao")
public interface DatingDao {
    //我的约会
    public List<Dating> datingInform(@Param("userid") String userid);
    //查看详情
    public Dating datingDetails(@Param("dateid") String dateid);
//    //改状态为已读
//    public Integer readDating(@Param("dateid") String dateid);
}
