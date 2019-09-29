package com.qsxh.service.impl;

import com.qsxh.dao.MatchUserDao;
import com.qsxh.entity.UserAndData;
import com.qsxh.service.MatchUserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("matchUserService")
public class MatchUserServiceImpl implements MatchUserService {

    private List<UserAndData> list;
    @Resource
    private MatchUserDao matchUserDao;

    /*
    按照魅力值查询用户列表
     */
    public List<UserAndData> findUserByCharisma(){
        list = matchUserDao.findUserByCharisma();
        return list;
    }
    /*
    按照搜索条件查询用户列表
     */
    public List<UserAndData> findUserByCondition(UserAndData userAndData){
        System.out.println(userAndData.getUageRange()+"---年龄范围");
        System.out.println(userAndData.getUedu()+"---学历");
        System.out.println(userAndData.getUmerried()+"---婚姻状况");
        System.out.println(userAndData.getUhouse()+"---住房");
        System.out.println(userAndData.getUwork()+"---从事行业");
        System.out.println(userAndData.getUincome()+"---月收入");
        System.out.println(userAndData.getS_province()+"---省");
        System.out.println(userAndData.getS_city()+"---市");
        if("省份".equals(userAndData.getS_province())){
            userAndData.setUaddress("不限");
        }else if("地级市".equals(userAndData.getS_city())){
            userAndData.setUaddress(userAndData.getS_province());
        }else {
            userAndData.setUaddress(userAndData.getS_province()+userAndData.getS_city());
        }
        System.out.println(userAndData.getUaddress()+"：地址");
        int minage = 0;
        int maxage = 0;
        if("不限".equals(userAndData.getUageRange())){
            minage = 18;
            maxage = 200;
        }else if("53以上".equals(userAndData.getUageRange())){
            minage = 53;
            maxage = 200;
        }else{
            String age[] = userAndData.getUageRange().split("-");
            minage = Integer.parseInt(age[0]);
            maxage = Integer.parseInt(age[1]);
        }
        userAndData.setMinage(minage);
        userAndData.setMaxage(maxage);
        System.out.println("最小年龄:"+minage);
        System.out.println("最大年龄:"+maxage);
        list = matchUserDao.findUserByCondition(userAndData);
        System.out.println(list+"打印list");
        for (int i =0; i<list.size();i++){
            System.out.println(list.get(i).getUname()+"List名字");
            System.out.println(list.get(i).getUage()+"List年龄");
        }
        return list;
    }

    @Override
    public List<UserAndData> findUserByTime(String sex) {
        list = matchUserDao.findUserByTime(sex);
        return list;
    }
}
