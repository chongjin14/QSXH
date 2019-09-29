package com.qsxh.dao;

import com.qsxh.entity.Role;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RoleDao {

    public List<Role> findRoleList(Role role);
    public int getRoleNum(Role role);
}
