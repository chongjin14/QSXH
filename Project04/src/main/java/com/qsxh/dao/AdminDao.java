package com.qsxh.dao;

import com.qsxh.entity.User;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AdminDao {
    public List<User> findAdminList(User userBase);
    public int getAdminNum(User userBase);
    public int adminPassReset(String userid);
    public int updateAdmin(User userBase);

    public int deleteAdmin(String userid);


    public int addAdmin(User userBase);
}
