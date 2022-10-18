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
			log.info(order);
		}
	}
	
	// 주문 등록 테스트 
	@Test
	public void testInsert() {
		OrdersVO order = new OrdersVO();
		order.setOid("O1114");
		order.setOzipcode("18100");
		order.setOaddress1("경상남도 부산시 해운대구 OO아파트");
		order.setOreceiver("장부산");
		order.setOphone("01055555555");
		order.setOtel("");
		order.setOmemo("빨리 왔으면 좋겠어요!");
		order.setOemail("busan@google.com");
		order.setOusedmileage(0);
		order.setObeforeprice(195000);
		order.setOafterprice(order.getObeforeprice() - order.getOusedmileage());
		order.setOstatus("준비 중");
		order.setMid("busanii");
		order.setPmcode("001");
		order.setOdate(new Date());
		order.setCpid("");
		order.setOaddress2("1110동 1302호");
		mapper.insert(order);
		log.info(order);
	}
}
