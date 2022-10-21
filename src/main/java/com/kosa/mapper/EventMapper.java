package com.kosa.mapper;

import java.util.List;

import com.kosa.domain.event.CouponDetailViewVO;
import com.kosa.domain.event.EventDetailViewVO;
import com.kosa.domain.event.EventViewVO;

public interface EventMapper {

	List<EventViewVO> getEventList();
	
	EventDetailViewVO getEventDetail(int ENO);
	
	EventDetailViewVO getEventDetailpast(int ENO);
	
	List<CouponDetailViewVO> getCouponDetail(String MID);
	
}
