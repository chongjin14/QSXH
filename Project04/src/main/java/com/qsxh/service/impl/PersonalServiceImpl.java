package com.qsxh.service.impl;

import com.qsxh.dao.PersonalDao;
import com.qsxh.entity.PersonalData;
import com.qsxh.service.IPersonalService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;


@Service("/iPersonalService")
public class PersonalServiceImpl implements IPersonalService {

    @Resource
    private PersonalDao personalDao;

    @Override
    public Integer improvingRegData(PersonalData personalData) {
        return personalDao.regUpdate(personalData);
    }
}
