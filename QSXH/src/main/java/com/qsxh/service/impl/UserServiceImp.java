package com.qsxh.service.impl;

import com.qsxh.dao.UserDao;
import com.qsxh.entity.User;
import com.qsxh.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("/iTest")
public class UserServiceImp implements UserService {

    @Resource
    private UserDao UserDao;

    @Override
    public User userLogin(String userid, String upass) {
        return UserDao.userLogin(userid,upass);
    }
}
