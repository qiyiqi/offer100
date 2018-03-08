package com.cn.hust.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cn.hust.dao.IUserDao;
import com.cn.hust.pojo.User;
import com.cn.hust.service.IUserService;

@Service("userService")
public class UserServiceImpl implements IUserService{
	@Resource
	private IUserDao userDao;
	@Override
	public User getUserById(Integer id){
		return this.userDao.selectByPrimaryKey(id);

	}
    @Override
	public int updateUserInfo(User user){
		return this.userDao.updateByPrimaryKey(user);

	}
    @Override
    public int deleteUserById(Integer id){
    	return this.userDao.deleteByPrimaryKey(id);
    }
    
    @Override
    public int insertUser(User user){
    	return this.userDao.insert(user);
    }
    @Override
    public User searchUseByname(String name){
    	return this.userDao.selectByName(name);
    }
    @Override
    public int deleteUseById(Integer id){
    	return this.userDao.deleteByPrimaryKey(id);
    }
    @Override
    public int updataUse(User use){
    	return this.userDao.updateByPrimaryKey(use);
    }
    @Override
    public List<User> findAllUser(){
    	return this.userDao.findUserList();
    }
}
