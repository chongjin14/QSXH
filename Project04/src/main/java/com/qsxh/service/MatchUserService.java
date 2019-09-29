package com.qsxh.service;

import com.qsxh.entity.UserAndData;

import java.util.List;

public interface MatchUserService {
    //按照魅力值查询排序
    public List<UserAndData> findUserByCharisma();

    //按照搜索条件查询排序
    public List<UserAndData> findUserByCondition(UserAndData userAndData);

    //按照时间查询排序
    public List<UserAndData> findUserByTime(String sex);
}
