package com.qsxh.service.impl;

import com.qsxh.dao.RelationDao;
import com.qsxh.entity.TblRelation;
import com.qsxh.entity.TblUser;
import com.qsxh.service.RelationService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("/relation")
public class RelationServiceImpl implements RelationService {

    @Resource
    private  RelationDao relationDao;

    //查询关系，包括点赞和关注
    @Override
    public TblRelation findRelation(TblRelation relation) {

        TblRelation result = relationDao.findRelation(relation);

        if (result==null){
            relationDao.addRelation(relation);
        }

        return result;
    }

    @Override
    public List<TblUser> updateRelation(TblRelation relation) {
        return null;
    }

    @Override
    public boolean good(TblRelation relation) {
        return false;
    }

    @Override
    public boolean follow(TblRelation relation) {
        return false;
    }
}
