package com.cn.hust.dao;

import com.cn.hust.pojo.User;

public interface IUserDao {
	int deleteByPrimaryKey(Integer uId);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer uId);
    
    User getUserByEmail(String email);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
}
