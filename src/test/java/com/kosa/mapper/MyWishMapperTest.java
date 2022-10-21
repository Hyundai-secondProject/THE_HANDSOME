package com.kosa.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kosa.domain.member.LikesVO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class MyWishMapperTest {
	
	@Autowired
	private MyWishMapper mapper;
	
	
	@Test
	public void selectTest() {
		List<LikesVO> list = mapper.selectLikeProducts("team5");
		log.info(list.get(0));
	}
	
	@Test
	public void insertTest() {
		int count = mapper.insertProduct("TM2CAWOT765WP1", "team5");
		log.info(count);
	}
	@Test
	public void deleteTest() {
		int count = mapper.deleteProduct("TM2CAWOT765WP1", "team5");
		log.info(count);
	}
}
