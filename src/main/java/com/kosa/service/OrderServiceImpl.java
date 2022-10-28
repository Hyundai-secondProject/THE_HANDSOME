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

/**
 * @author 장주연
 * @since 2022.10.21
 * @version 1.0
 * 
 * <pre>
 * 수정일                    수정자                   수정내용
 * ----------  --------    ---------------------------
 * 2022.10.21    장주연                     최초 생성
 * </pre>
 */

@Log4j
@Service
@AllArgsConstructor
public class OrderServiceImpl implements OrderService {

	@Autowired
	private OrderMapper mapper;
	
	// 주문 등록
	@Override
	public void insert(OrdersVO orders) {
	    log.info("insert orders.............");
	    mapper.insert(orders);
	}
	
	// 주문 조회
	@Override
	public List<OrdersVO> getList() {
		log.info("get List.............");
		return mapper.getList();
	}

	// 페이징 + 주문 조회 
	@Override
	public List<OrdersVO> getList(Criteria cri, String mid) {
		log.info("get List with criteria..." + mid + cri);
		return mapper.getListWithPaging(cri, mid);
	}
	
	// 페이징 + 멤버별 주문 내역 조회
	@Override
	public OrderPageDTO getListPage(Criteria cri, String mid) {
		log.info("getListPage....." + mid + cri);
		return new OrderPageDTO(
				mapper.getCountByMid(cri, mid),
				mapper.getListWithPaging(cri, mid));
	}
}