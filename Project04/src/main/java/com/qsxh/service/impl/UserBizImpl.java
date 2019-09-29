package com.qsxh.service.impl;

import com.qsxh.dao.UserDao;

import com.qsxh.entity.User;
import com.qsxh.service.UserBiz;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Service("userBiz")
public class UserBizImpl implements UserBiz {
    /*=============gjy==============*/
    @Resource
    private UserDao userDao;
    @Override
    public List<User> findUserList(User user) {
        return userDao.findUserList(user);
    }

    @Override
    public List<User> findVipUserList(User user) {
        return userDao.findVipUserList(user);
    }

    @Override
    public int getUserNum(User user) {
        return userDao.getUserNum(user);
    }

    @Override
    public int getVipUserNum(User user) {
        return userDao.getVipUserNum(user);
    }

    @Override
    public int userPassReset(String userid) {
        return userDao.userPassReset(userid);
    }

    @Override
    public int updateUser(User user) {
        return userDao.updateUser(user);
    }

    @Override
    public int deleteUser(String userid) {
        return userDao.deleteUser(userid);
    }

    @Override
    public int deleteVipUser(String userid) {
        return userDao.deleteVipUser(userid);
    }

    @Override
    public void deleteUsers(String[] userids) {
        for (String userid:userids) {
            deleteUser(userid);
        }
    }

    @Override
    public void deleteVipUsers(String[] userids) {
        for (String userid:userids) {
            deleteVipUser(userid);
        }
    }
    /*============wzq=================*/
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
    @Transactional(propagation= Propagation.REQUIRED,rollbackForClassName="Exception")
    public boolean insert4table(String userid, String upass) {
        System.out.println("进入regAndAddData业务");
        //获取系统时间
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        String regdate = sdf.format(new Date());

        Integer num = 0;
        Integer num2 = 0;
        Integer num3 = 0;
        Integer num4 = 0;
        num = userDao.reg(userid, upass , regdate);
        num2 = userDao.addHisData(userid);//测试，让第二个dao层插入失败
//        num3 = userDao.addHisHabit(userid);//暂时先不插入，还没确定这个表的结构
        num4 = userDao.addHisCplimit(userid);
        if (num > 0 && num2 > 0 && num4 > 0)
        {
            return true;
        }
        else
        {
            return false;
        }

//        try {
//            num = userDao.reg(userid, upass , regdate);
////            int i = 1/0;
//            num2 = userDao.addHisData("ffff");//测试，让第二个dao层插入失败
//            if (num > 0 && num2 > 0)
//            {
//                return true;
//            }
//            else
//            {
//                return false;
//            }
//        } catch (Exception e) {
//            e.printStackTrace();
//            return false;
//        }
    }
}
