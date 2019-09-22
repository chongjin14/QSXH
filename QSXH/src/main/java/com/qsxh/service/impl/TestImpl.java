package com.qsxh.service.impl;

import com.qsxh.dao.TestDao;
import com.qsxh.entity.User;
import com.qsxh.service.ITest;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("/iTest")
public class TestImpl implements ITest {

    @Resource
    private TestDao testDao;

    @Override
    public User userLogin(String userid, String upass) {
        return testDao.userLogin(userid,upass);
    }
}
