package com.cn.hust.dao;

import java.util.List;

import com.cn.hust.pojo.Job;

public interface IJobDao {
	int deleteByPrimaryKey(Integer jId);

    int insert(Job record);

    int insertSelective(Job record);

    Job selectByPrimaryKey(Integer jId);

    int updateByPrimaryKeySelective(Job record);

    int updateByPrimaryKey(Job record);
    
    List<Job> getJobBycompany(Integer cId);
    
    List<Job> getallJob();
}
