package com.kosa.service;

import java.util.List;

import com.kosa.domain.order.Criteria;
import com.kosa.domain.order.OrderPageDTO;
import com.kosa.domain.order.OrdersVO;
import com.kosa.mapper.OrderMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Log4j
@Service
@AllArgsConstructor
public class OrderServiceImpl implements OrderService {

	@Autowired
	private OrderMapper mapper;
	
	@Override
	public void insert(OrdersVO orders) {
	    log.info("insert orders.............");
	    mapper.insert(orders);
	}
	
	@Override
	public List<OrdersVO> getList() {
		log.info("get List.............");
		return mapper.getList();
	}

	@Override
	public List<OrdersVO> getList(Criteria cri, String mid) {
		log.info("get List with criteria..." + mid + cri);
		return mapper.getListWithPaging(cri, mid);
	}
	
	@Override
	public OrderPageDTO getListPage(Criteria cri, String mid) {
		log.info("getListPage....." + mid + cri);
		return new OrderPageDTO(
				mapper.getCountByMid(cri, mid),
				mapper.getListWithPaging(cri, mid));
	}
}