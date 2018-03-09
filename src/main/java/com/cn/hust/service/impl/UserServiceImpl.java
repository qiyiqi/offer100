package com.cn.hust.service.impl;

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
	public int register(User user){
		return this.userDao.insert(user);
	}
	
	@Override
	public User checkLogin(String email,String password){
		User user = userDao.getUserByEmail(email);
		if(user!= null && user.getuPassword().equals(password)){
			return user;
		}
		return null;
	}
	
	@Override
	public int updateUserinfo(User user){
		return this.userDao.updateByPrimaryKeySelective(user);
	}
	
	@Override
	public User getUserByid(int id){
		return this.userDao.selectByPrimaryKey(id);
	}
}
