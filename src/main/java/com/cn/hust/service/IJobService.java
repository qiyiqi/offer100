package com.cn.hust.service;

import java.util.List;

import com.cn.hust.pojo.Job;

public interface IJobService {
	public int publishJob(Job job);
	public List<Job> getJobforcompany(int id);
	public List<Job> getJobList();
	public Job getJobByid(int id);
	public int updateJobinfo(Job job);
	public int deleteJobByid(int id);
}
