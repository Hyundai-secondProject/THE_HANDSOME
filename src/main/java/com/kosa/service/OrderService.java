package com.kosa.service;

import java.util.List;

import com.kosa.domain.order.Criteria;
import com.kosa.domain.order.OrderPageDTO;
import com.kosa.domain.order.OrdersVO;

public interface OrderService {

    public void insert(OrdersVO orders);
    
	public List<OrdersVO> getList();
	
	public List<OrdersVO> getList(Criteria cri, String mid);
	
	public OrderPageDTO getListPage(Criteria cri, String mid);
}
