package com.kosa.mapper;

import java.util.Calendar;
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
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml", "file:src/main/webapp/WEB-INF/spring/security-context.xml"})
@Log4j
public class OrderMapperTest {
	
	@Autowired
	private OrderMapper mapper;
	
	//총 주문 갯수 테스트 
	@Test
	public void testGetCountByMid() {
		Criteria cri = new Criteria();
		log.info(mapper.getCountByMid(cri, "asdf"));
	}
	
	//총 주문 갯수 테스트 
	@Test
	public void testGetCountByMid2() {
		Criteria cri = new Criteria();
		cri.setType("O");
		cri.setKeyword("221018P15418021");
		log.info(mapper.getCountByMid(cri, "seungu00"));
	}
	
	//총 주문 갯수 테스트 
	@Test
	public void testGetCountByMid3() {
		Criteria cri = new Criteria(1, 5);
		cri.setType("O");
		cri.setKeyword("221018P15418021");
		log.info(mapper.getCountByMid(cri, "seungu00"));
	}
	
	// 간단한 주문 조회 테스트
	@Test
	public void testGetList() {
		for (OrdersVO order : mapper.getList()) {
			
			Calendar cal = Calendar.getInstance(); 
			cal.setTime(order.getOdate());
			
			int year = cal.get(Calendar.YEAR);
			int month = cal.get(Calendar.MONTH) + 1; //0부터 시작하기 때문에 1더해준다
			int day = cal.get(Calendar.DAY_OF_MONTH);
			int hour = cal.get(Calendar.HOUR_OF_DAY);
			int min = cal.get(Calendar.MINUTE);
			int sec = cal.get(Calendar.SECOND);
			
			log.info(order.getOdate());
			log.info(cal);
			log.info(year + "." + month + "." + day);
			
			cal.add(Calendar.DATE, 7); //2일 더하기
			log.info(cal.getTime());
			
			int year2 = cal.get(Calendar.YEAR);
			int month2 = cal.get(Calendar.MONTH) + 1; //0부터 시작하기 때문에 1더해준다
			int day2 = cal.get(Calendar.DAY_OF_MONTH);
			
			log.info(year2 + "." + month2 + "." + day2);
			
		}
	}
	
	// 주문 조회 테스트
	@Test
	public void testGetListWithPaging1() {		
		for (OrdersVO order : mapper.getListWithPaging(new Criteria(), "seungu00")) {
			log.info(order);
		}
	}
	
	// 페이징한 주문 조회 테스트
	@Test
	public void testGetListWithPaging2() {		
		Criteria cri = new Criteria(1, 5);
		for (OrdersVO order : mapper.getListWithPaging(cri, "asdf")) {
			log.info(order);
		}
	}
	
	@Test
	public void testGetListWithPaging3() {		
		Criteria cri = new Criteria(1, 5);
		cri.setType("O");
		cri.setKeyword("221018P15418021");
		for (OrdersVO order : mapper.getListWithPaging(cri, "seungu00")) {
			log.info(order);
		}
	}
	
	@Test
	public void testGetListWithPaging4() {		
		Criteria cri = new Criteria(1, 5);
		cri.setType("P");
		cri.setKeyword("재킷");
		for (OrdersVO order : mapper.getListWithPaging(cri, "seungu00")) {
			log.info(order);
		}
	}
	
	// 주문 등록 테스트 
	@Test
	public void testInsert() {
		OrdersVO order = new OrdersVO();
		//order.setOid("O1114");
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