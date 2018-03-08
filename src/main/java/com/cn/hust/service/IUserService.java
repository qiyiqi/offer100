package com.cn.hust.service;

import java.util.List;

import com.cn.hust.pojo.User;

public interface IUserService {
	public User getUserById(Integer id);
	public int updateUserInfo(User user);
	public int deleteUserById(Integer id);
	public int insertUser(User user);
	public User searchUseByname(String name);
	public int deleteUseById(Integer id);
	public int updataUse(User use);
	public List<User> findAllUser();
}
