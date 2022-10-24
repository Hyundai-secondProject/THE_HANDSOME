package com.kosa.service;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kosa.domain.member.LikesVO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml","file:src/main/webapp/WEB-INF/spring/security-context.xml"})
@Log4j
public class MyWishServiceTest {
	
	@Autowired
	private MyWishService service;
	
	@Test
	public void testSelects() {
		log.info("select test--------------------------------------------");
		//List<LikesVO> list = service.getLikeProducts (null, "team5");
		
		//log.info(list.get(0));
	}
	
	@Test
	public void testInsert() {
		log.info("insert test--------------------------------------------");
		
		LikesVO test = new LikesVO();
		test.setBname("");
		//List<LikesVO> list = service.getLikeProducts (null, "team5");
		
		//log.info(list.get(0));
	}
	
	@Test
	public void testCount() {
		log.info("count test--------------------------------------------");
		
		int count = service.countLikes("team5");
		
		log.info(count);
	}
	
}
