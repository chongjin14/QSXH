package com.qsxh.service.impl;

import com.qsxh.dao.IUserDao;
import com.qsxh.entity.User;
import com.qsxh.service.IUserBiz;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.text.SimpleDateFormat;
import java.util.Date;

@Service("userBiz")
public class UserBizImpl implements IUserBiz {

    @Resource
    private IUserDao userDao;//用户dao层

    //账号重复验证
    @Override
    public boolean checkUserid(String userid) {
        User user = userDao.checkUserid(userid);
        boolean flag = false;
        if(null == user)
        {
            flag = false;
        }
        else
        {
            flag = true;
        }
        return flag;
    }
    //前台注册 插入tbluser和tbldata
    @Override
    @Transactional
    public boolean regAndAddData(String userid, String upass) {
        System.out.println("进入regAndAddData业务");
        //获取系统时间
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        String regdate = sdf.format(new Date());

        Integer num = 0;
        Integer num2 = 0;
        try {
            num = userDao.reg(userid, upass , regdate);
            num2 = userDao.addHisData(userid);
            if (num > 0 && num2 > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}
