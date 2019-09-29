package com.qsxh.service.impl;

import com.qsxh.dao.AdminDao;
import com.qsxh.entity.User;
import com.qsxh.service.IAdminBiz;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("iAdminBiz")
public class AdminBizImpl implements IAdminBiz {

    @Resource
    private AdminDao adminDao;
    @Override
    public List<User> findAdminList(User user) {
        return adminDao.findAdminList(user);
    }

    @Override
    public int getAdminNum(User user) {
        return adminDao.getAdminNum(user);
    }

    @Override
    public int adminPassReset(String userid) {
        return adminDao.adminPassReset(userid);
    }

    @Override
    public int updateAdmin(User user) {
        return adminDao.updateAdmin(user);
    }

    @Override
    public int deleteAdmin(String userid) {
        return adminDao.deleteAdmin(userid);
    }

    @Override
    public void deleteAdmins(String[] userids) {
        for (String userid:userids) {
            deleteAdmin(userid);
        }
    }

    @Override
    public int addAdmin(User user) {
        return adminDao.addAdmin(user);
    }
}
