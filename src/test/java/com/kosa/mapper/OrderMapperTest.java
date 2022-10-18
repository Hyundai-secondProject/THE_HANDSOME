package com.kosa.mapper;

import java.util.Date;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kosa.domain.order.Criteria;
import com.kosa.domain.order.OrdersVO;

import lombok.extern.log4j.Log4j;

/**
 * @author 장주연
 * @since 2022.10.17
 * @version 1.0
 * 
 * <pre>
 * 수정일              수정자                   수정내용
 * ----------  --------    ---------------------------
 * 2022.10.17     장주연              최초 생성
 * </pre>
 */

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class OrderMapperTest {
	
	@Autowired
	private OrderMapper mapper;
	
	//총 주문 갯수 테스트 
	@Test
	public void testGetTotalCount() {
		Criteria cri = new Criteria();
		cri.setKeyword("새로");
		cri.setType("");
		log.info(mapper.getTotalCount(cri));
	}
	
	// 주문 조회 테스트
	@Test
	public void testGetList() {
		for (OrdersVO order : mapper.getList()) {
			log.info(order);
		}
	}
	
	// 페이징한 주문 조회 테스트
	@Test
	public void testGetListWithPaging() {		
		Criteria cri = new Criteria();
		for (OrdersVO order : mapper.getListWithPaging(cri)) {
			log.info(order.getOid());
		}
	}
	
	// 주문 등록 테스트 
	@Test
	public void testInsert() {
		OrdersVO order = new OrdersVO();
		order.setOid("A0020");
		order.setOzipcode("12001");
		order.setOaddress1("서울특별시 종로구 혜화동");
		order.setOreceiver("김보경");
		order.setOphone("0101111111");
		order.setOtel("");
		order.setOmemo("빠른 배송 부탁드립니다");
		order.setOemail("");
		order.setOusedmileage(0);
		order.setObeforeprice(25000);
		order.setOafterprice(25000 - order.getOusedmileage());
		order.setOstatus("배송 중");
		order.setMid("rlaqhrud1011");
		order.setPmcode("001");
		order.setOdate(new Date());
		order.setCpid("");
		order.setOaddress2("110동 602");
		mapper.insert(order);
		log.info(order);
	}
}
