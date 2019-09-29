package com.qsxh.dao;

import com.qsxh.entity.UserAndData;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface MatchUserDao {

    //按照魅力值查询排序
    public List<UserAndData> findUserByCharisma();

    //按照搜索条件查询排序
    public List<UserAndData> findUserByCondition(UserAndData userAndData);

    //按照时间查询排序
    public List<UserAndData> findUserByTime(@Param("usex") String sex);
}
