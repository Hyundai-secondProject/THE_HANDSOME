package com.kosa.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kosa.domain.member.LikesVO;

import lombok.extern.log4j.Log4j;
/**
 * MyWishMapperTest
 * 
 * @author 공통
 * @since 2022.10.17
 * @version 1.0
 * 
 *          <pre>
 * 수정일              수정자                   수정내용
 * ----------  --------    ---------------------------
 * 2022.10.19   박서은              최초 생성
 * 2022.10.20   박서은              등록, 삭제, 리스트 가져오기 추가
 *          </pre>
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml","file:src/main/webapp/WEB-INF/spring/security-context.xml"})
@Log4j
public class MyWishMapperTest {
	
	@Autowired
	private MyWishMapper mapper;
	
	// 위시리스트 가져오기 테스트
	@Test
	public void selectTest() {
		List<LikesVO> list = mapper.selectLikeProducts(null, "team5");
	}
	
	// 위시리스트 등록 테스트
	@Test
	public void insertTest() {
		int count = mapper.insertProduct("TM2CAWOT765WP1", "team5");
		log.info(count);
	}
	// 위시리스트 삭제 테스트
	@Test
	public void deleteTest() {
		int count = mapper.deleteProduct("TM2CAWOT765WP1", "team5");
		log.info(count);
	}
}
