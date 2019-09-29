package com.qsxh.dao;

import com.qsxh.entity.Account;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AccountDao {

    //增加金币收支记录
    public int recharge(Account ac);

    //更改用户金币
    public int changegold(@Param("gold") String gold, @Param("id") String id);

    //查找 金币/消费 记录
    public List<Account> selectArecords(@Param("id") String id, @Param("type") List<String> typeid);

    // 更新/删除 VIP用户到期时间
    public int addVipenddate(@Param("id") String userid, @Param("date") String vipEndDate);

    //得到VIP用户到期时间
    public String getVipenddate(@Param("id") String userid);
}
