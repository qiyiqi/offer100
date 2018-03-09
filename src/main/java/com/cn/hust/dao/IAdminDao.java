package com.cn.hust.dao;

import com.cn.hust.pojo.Admin;

public interface IAdminDao {
    int deleteByPrimaryKey(Integer aId);

    int insert(Admin record);

    int insertSelective(Admin record);

    Admin selectByPrimaryKey(Integer aId);
    
    Admin selectByEmail(String aEmail);

    int updateByPrimaryKeySelective(Admin record);

    int updateByPrimaryKey(Admin record);
    
}