package com.kosa.mapper;

/**
 * UpdateCouponMapperTest
 * @author 김민규
 * @since 2022.10.24
 * @version 1.0
 * 
 * <pre>
 * 수정일              수정자                   수정내용
 * ----------  --------    ---------------------------
 * 2022.10.24      김민규              	    최초생성
 * </pre>
 */

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.log4j.Log4j;

@Log4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml", "file:src/main/webapp/WEB-INF/spring/security-context.xml"})
public class UpdateCouponMapperTest {
	@Autowired
	private EventMapper mapper;
	
	@Test
	public void UpdateCouponTest() {
		
		int ENO = 1;
		
		int list = mapper.updateCouponCount(ENO);  // 쿠폰이 발급되었다면 현재발급량(ECOUNT)를  +1 해준다.
		System.out.println("list : " + list);
		System.out.println("==========");
		log.info(list);
		
	}
}
