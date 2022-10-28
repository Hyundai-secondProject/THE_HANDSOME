package com.kosa.service;

import java.util.List;

import com.kosa.domain.order.Criteria;
import com.kosa.domain.order.OrderPageDTO;
import com.kosa.domain.order.OrdersVO;

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

public interface OrderService {

    public void insert(OrdersVO orders); // 주문 등록
    
	public List<OrdersVO> getList(); // 주문 조회
	
	public List<OrdersVO> getList(Criteria cri, String mid); // 페이징 + 주문 조회 
	
	public OrderPageDTO getListPage(Criteria cri, String mid); // 페이징 + 멤버별 주문 내역 조회 
}
