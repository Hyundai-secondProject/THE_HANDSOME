package com.kosa.service;
/**
 * InsertCouponServiceTest
 * @author 김민규
 * @since 2022.10.24
 * @version 1.0
 * 
 * <pre>
 * 수정일              수정자                   수정내용
 * ----------  --------    ---------------------------
 * 2022.10.24   김민규                   최초 생성
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
public class InsertCouponServiceTest {
	@Autowired
	private EventService service;
	
	@Test
	public void servicetest() {
		service.insertCoupon(2, "team5"); // 이벤트 번호와 회원의 아이디를 받아서 쿠폰 발급
		log.info("Test END");
		
	}
}
