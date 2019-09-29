package com.qsxh.service.impl;

import com.qsxh.dao.UserDao;
import com.qsxh.entity.User;
import com.qsxh.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("/userService")
public class UserServiceImp implements UserService {

    @Resource
    private UserDao uDao;

    @Override
    public User userLogin(String userid, String upass) {
        return uDao.userLogin(userid,upass);
    }

    @Override
    public User getUser(String userid) {
        return uDao.getUser(userid);
    }

    @Override
    public String selectGold(String userid) {
        return uDao.selectGold(userid);
    }

    @Override
    public String getRolename(String rid) {
        return uDao.getRolename(rid);
    }

    @Override
    public String getParam(String paramid) {
        return uDao.getParam(paramid);
    }

    @Override
    public int changeRoldid(String userid, String roleid) {
        return uDao.changeRoldid(userid,roleid);
    }
}
