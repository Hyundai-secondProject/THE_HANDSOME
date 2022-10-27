package com.kosa.mapper;
/**
 * getCouponCountTest
 * @author 김민규
 * @since 2022.10.18
 * @version 1.0
 * 
 * <pre>
 * 수정일              수정자                   수정내용
 * ----------  --------    ---------------------------
 * 2022.10.25   김민규                    최초 생성
 * </pre>
 */
import java.util.List;


import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kosa.domain.event.CouponCountVO;

import lombok.extern.log4j.Log4j;

@Log4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml", "file:src/main/webapp/WEB-INF/spring/security-context.xml"})
public class GetCouponCountMapperTest {
	
	@Autowired
	private EventMapper mapper;
	
	@Test
	public void getCouponCountTest() {
		
		int ENO = 1; // 이벤트 번호 임시값
		
		List<CouponCountVO> list = mapper.getCouponCount(ENO); //쿠폰의 발급 최대량과 지금까지 발급한 쿠폰의 갯수를 받는다.
		System.out.println("list : " + list);
		System.out.println("==========");
		log.info(list);
		
	}
}
