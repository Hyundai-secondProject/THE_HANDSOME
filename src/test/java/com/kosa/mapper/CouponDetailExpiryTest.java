package com.kosa.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kosa.domain.event.CouponDetailViewVO;

import lombok.extern.log4j.Log4j;

/**
 * CouponDetailExpiryTest
 * @author 김민규
 * @since 2022.10.25
 * @version 1.0
 * 
 * <pre>
 * 수정일              수정자                   수정내용
 * ----------  --------    ---------------------------
 * 2022.10.25   김민규                    최초 생성
 * </pre>
 */

@Log4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml", "file:src/main/webapp/WEB-INF/spring/security-context.xml"})

public class CouponDetailExpiryTest {
	
	@Autowired
	private EventMapper  mapper;
	
	private String mid = "team5"; // 로그인시 회원의 아이디 임시값
	
	
	@Test
	public void getCouponDetailTest() {
		List<CouponDetailViewVO> list = mapper.getCouponDetailExpiry(mid); // 기간만료된 쿠폰들의 값을 받는다.
		System.out.println("list : "+list);
		System.out.println("============");
		log.info(list);
	}
	
	
	
}
