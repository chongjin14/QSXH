package com.qsxh.dao;

import com.qsxh.entity.TblRelation;
import com.qsxh.entity.TblUser;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RelationDao {

    //查找关系
    public TblRelation findRelation(TblRelation tblRelation);

    //更新关系
    public Integer updateRelation(TblRelation tblRelation);

    //增加无关系
    public Integer addRelation(TblRelation tblRelation);

    //查找已关注列表
    public List<TblUser> findFollowed(TblRelation relation);

}
