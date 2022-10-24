package com.kosa.service;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kosa.domain.order.Criteria;
import com.kosa.domain.order.OrderItemVO;
import com.kosa.domain.order.OrderPageDTO;
import com.kosa.domain.order.OrdersVO;

import lombok.extern.log4j.Log4j;

/**
 * @author 장주연
 * @since 2022.10.19
 * @version 1.0
 * 
 * <pre>
 * 수정일              수정자                   수정내용
 * ----------  --------    ---------------------------
 * 2022.10.19     장주연              최초 생성
 * </pre>
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml", "file:src/main/webapp/WEB-INF/spring/security-context.xml"})
@Log4j
public class OrderServiceImplTest {

	@Autowired
	public OrderServiceImpl orderService;
	
	@Test
	public void getListTest() {
		for (OrdersVO order : orderService.getList(new Criteria(1, 10), "asdf")) {
			log.info(order);
		}
	}
	
	@Test
	public void getListPageTest() {
		log.info("getListPageTest.....");
		Criteria cri = new Criteria(1, 5);
		OrderPageDTO orders = orderService.getListPage(cri, "seungu00");
		List<OrdersVO> orderList = orders.getList();
		log.info(orderList.get(1).getItemList().size());
		for (OrderItemVO item : orderList.get(1).getItemList()) {
			log.info(item);
		}
	}
	
	@Test
	public void getListPageTest2() {
		log.info("getListPageTest.....");
		Criteria cri = new Criteria(1, 5);
		cri.setType("O");
		cri.setKeyword("221018P15412353");
		
		OrderPageDTO orderPage = orderService.getListPage(cri, "seungu00");
		log.info(orderPage);
		
//		for (OrdersVO orders : orderService.getListPage(cri, "seungu00").getList()) {
//			log.info(orders);
//		}
	}
}