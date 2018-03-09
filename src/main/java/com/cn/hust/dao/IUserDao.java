package com.cn.hust.dao;

import java.util.List;

import com.cn.hust.pojo.User;

public interface IUserDao {
	int deleteByPrimaryKey(Integer uId);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer uId);
    
    User getUserByEmail(String email);

    User selectByName(String uName);
    
    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
    
    List<User> findUserList();
}
