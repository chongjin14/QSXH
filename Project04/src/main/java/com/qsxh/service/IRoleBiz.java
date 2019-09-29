package com.qsxh.service;

import com.qsxh.entity.Role;

import java.util.List;

public interface IRoleBiz {
    public List<Role> findRoleList(Role role);
    public int getRoleNum(Role role);
}
