package org.test;

import java.util.Date;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.cn.hust.pojo.Company;
import com.cn.hust.service.ICompanyService;

@RunWith(SpringJUnit4ClassRunner.class)		//锟斤拷示锟教筹拷锟斤拷SpringJUnit4ClassRunner锟斤拷
@ContextConfiguration(locations = {"classpath:spring-mybatis.xml"})

public class Mytest {
	private static Logger logger = Logger.getLogger(Mytest.class);
//	private ApplicationContext ac = null;
	@Resource
	private ICompanyService companyService = null;

	@Test
	public void test1() {
		Company company = new Company();
		company.setcName("范式集团");
		company.setcPassword("12345678");
		company.setcEmail("12345678@qq.com");
		company.setcLocation("华中科技大学");
		company.setcType("IT");
		company.setcTime(new Date());
		int a = companyService.register(company);
		System.out.println(a);
		/*
		List<User> userList = userService.getAllUser();
		for (int i = 0; i < userList.size(); i++){			
			User user = userList.get(i);
				System.out.println(user.getuName());	
        }*/
	}

	
}
