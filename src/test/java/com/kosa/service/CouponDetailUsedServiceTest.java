package com.kosa.service;
/**
 * CouponDetailUsedServiceTest
 * @author 김민규
 * @since 2022.10.25
 * @version 1.0
 * 
 * <pre>
 * 수정일              수정자                   수정내용
 * ----------  --------    ---------------------------
 * 2022.10.25   김민규                   최초 생성
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
public class CouponDetailUsedServiceTest {
	
	@Autowired
	private EventService service;
	
	private String MID = "team5"; //// 회원 아이디 임시값
	
	@Test
	public void servicetest() {
		log.info(service.getCouponDetailUsed(MID)); // 사용한 쿠폰
		
	}
	

}
