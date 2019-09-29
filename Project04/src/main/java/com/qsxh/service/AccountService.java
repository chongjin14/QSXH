package com.qsxh.service;

import com.qsxh.entity.Account;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface AccountService {
    //用户充值金币逻辑
    public int recharge(Account ac);
    //更改用户金币
    public int changegold(@Param("gold") String gold, @Param("id") String id);
    //查找 金币/消费 记录
    public List<Account> selectArecords(@Param("id") String id, @Param("type") List typeid);
    // 更新/删除 VIP用户到期时间
    public int addVipenddate(@Param("id") String userid, @Param("date") String vipEndDate);
    //得到VIP用户到期时间
    public String getVipenddate(@Param("id") String userid);
}
