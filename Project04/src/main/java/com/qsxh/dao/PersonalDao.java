package com.qsxh.dao;

import com.qsxh.entity.PersonalData;
import org.springframework.stereotype.Repository;

@Repository
public interface PersonalDao {

    //注册完善
    public Integer regUpdate(PersonalData personalData);
}
