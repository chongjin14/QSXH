package com.qsxh.service.impl;

import com.qsxh.dao.RoleDao;
import com.qsxh.entity.Role;
import com.qsxh.service.IRoleBiz;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("iRoleBiz")
public class RoleBizImpl implements IRoleBiz {
    @Resource
    private RoleDao roleDao;
    @Override
    public List<Role> findRoleList(Role role) {
        return roleDao.findRoleList(role);
    }

    @Override
    public int getRoleNum(Role role) {
        return roleDao.getRoleNum(role);
    }
}
