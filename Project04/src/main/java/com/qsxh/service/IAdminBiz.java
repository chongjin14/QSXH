package com.qsxh.service;

import com.qsxh.entity.User;

import java.util.List;

public interface IAdminBiz {
    public List<User> findAdminList(User user);

    public int getAdminNum(User user);

    public int adminPassReset(String userid);

    public int updateAdmin(User user);

    public int deleteAdmin(String userid);
    public void deleteAdmins(String[] userids);
    public int addAdmin(User user);
}
