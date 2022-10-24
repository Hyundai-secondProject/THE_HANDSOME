package com.kosa.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.kosa.domain.order.Criteria;
import com.kosa.domain.order.OrdersVO;

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

public interface OrderMapper {

	public void insert(OrdersVO orders); // 주문 등록
	
	public int getCountByMid(@Param("cri") Criteria cri, @Param("mid") String mid); // 총 주문 갯수
	
	public List<OrdersVO> getList(); // 주문 조회
	
	public List<OrdersVO> getListWithPaging(@Param("cri") Criteria cri, @Param("mid") String mid); // 페이징한 주문 조회
	
}