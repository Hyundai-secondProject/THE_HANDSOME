package com.kosa.service;

import java.util.List;

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
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class OrderServiceImplTest {

	@Autowired
	public OrderServiceImpl orderService;
	
	@Test
	public void getListTest() {
		for (OrdersVO order : orderService.getList(new Criteria(1, 10), "seungu00")) {
			log.info(order);
		}
	}
}
