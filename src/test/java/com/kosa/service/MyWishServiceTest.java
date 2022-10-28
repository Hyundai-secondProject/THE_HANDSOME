package com.kosa.service;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kosa.domain.member.LikesVO;

import lombok.extern.log4j.Log4j;
/**
 * MyWishServiceTest
 * 
 * @author 공통
 * @since 2022.10.17
 * @version 1.0
 * 
 *          <pre>
 * 수정일              수정자                   수정내용
 * ----------  --------    ---------------------------
 * 2022.10.20   박서은              최초 생성
 * 2022.10.21   박서은             test 추가
 *          </pre>
 */
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
