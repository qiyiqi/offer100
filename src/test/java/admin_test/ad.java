package admin_test;

import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;

import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.cn.hust.pojo.Admin;
import com.cn.hust.pojo.User;
import com.cn.hust.service.IAdminService;


@RunWith(SpringJUnit4ClassRunner.class)		//閿熸枻鎷风ず閿熸暀绛规嫹閿熸枻鎷稴pringJUnit4ClassRunner閿熸枻鎷�
@ContextConfiguration(locations = {"classpath:spring-mybatis.xml"})

public class ad {
	
private static Logger logger = Logger.getLogger(ad.class);
//		private ApplicationContext ac = null;
		@Resource
		private IAdminService adminService;
//		@Before
//		public void before() {
//			ac = new ClassPathXmlApplicationContext("applicationContext.xml");
//			userService = (IUserService) ac.getBean("userService");
//		}

		@Test
		public void test1() {
			/*Admin admin = new Admin();
			admin.setaName("changcheng");
			admin.setaEmail("1@111.com");
			admin.setaIdentify(12);
			admin.setaPassword("123456");
			admin.setaPhoto("12233446666");
			int a = adminService.register(admin); 
			System.out.println(a);
			
			Admin b = new Admin();
			b = adminService.checkLogin("1@111.com", "123456");
			System.out.println(b.getaEmail()); */
			
			User use = adminService.searchUseByname("可惜");
			if(use == null)
				System.out.println("meiyouzhegeren"); 
			else
				System.out.println(use.getuEmail()); 
			List<User> useList = adminService.findAllUser();
			for(int i = 0 ; i < useList.size() ; i++) {
				  System.out.println(useList.get(i).getuName());
				}
		}
	}

