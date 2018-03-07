package com.cn.hust.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cn.hust.dao.IJobDao;
import com.cn.hust.pojo.Job;
import com.cn.hust.service.IJobService;


@Service("jobService")
public class JobServiceImpl implements IJobService{
	@Resource
	private IJobDao jobDao;
	@Override
	public int publishJob(Job job){
		return this.jobDao.insert(job);
	}
	@Override
	public List<Job> getJobforcompany(int id){
		return this.jobDao.getJobBycompany(id);
	}
	@Override
	public List<Job> getJobList(){
		return this.jobDao.getallJob();
	}
	@Override
	public Job getJobByid(int id){
		return this.jobDao.selectByPrimaryKey(id);
	}
	@Override
	public int updateJobinfo(Job job){
		return this.jobDao.updateByPrimaryKeySelective(job);
	}
	@Override
	public int deleteJobByid(int id){
		return this.jobDao.deleteByPrimaryKey(id);
	}
}
