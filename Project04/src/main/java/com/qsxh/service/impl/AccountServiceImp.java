package com.qsxh.service.impl;

import com.qsxh.dao.AccountDao;
import com.qsxh.entity.Account;
import com.qsxh.service.AccountService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("/Account")
public class AccountServiceImp implements AccountService {

    @Resource
    private AccountDao aDao;

    @Override
    public int recharge(Account ac) {

        return aDao.recharge(ac);
    }

    @Override
    public int changegold(String gold, String id) {
        return aDao.changegold(gold,id);
    }

    @Override
    public List<Account> selectArecords(String id, List typeid) {
        return aDao.selectArecords(id,typeid);
    }

    @Override
    public int addVipenddate(String userid, String vipEndDate) {
        return aDao.addVipenddate(userid,vipEndDate);
    }

    @Override
    public String getVipenddate(String userid) {
        return aDao.getVipenddate(userid);
    }


}
