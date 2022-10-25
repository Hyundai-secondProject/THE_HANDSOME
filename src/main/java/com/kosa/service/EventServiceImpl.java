package com.kosa.service;
/**
 * EventServiceimpl
 * @author 김민규
 * @since 2022.10.18
 * @version 1.0
 * 
 * <pre>
 * 수정일              수정자                   수정내용
 * ----------  --------    ---------------------------
 * 2022.10.18   김민규                   최초 생성
 * 2022.10.20	김민규		getEventDetail추가
 * 2022.10.21	김민규		getCouponDetail 추가
 * 2022.10.23	김민규		getEventpast 추가
 * 2022.10.24	김민규		insertCoupon 추가
 * 2022.10.25	김민규		getCouponDetailExpiry,Used,Unused 추가
 * </pre>
 */

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kosa.domain.event.CouponDetailViewVO;
import com.kosa.domain.event.EventDetailViewVO;
import com.kosa.domain.event.EventViewVO;
import com.kosa.mapper.EventMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor

public class EventServiceImpl implements EventService{
	
	@Autowired
	private EventMapper mapper;
	

	@Override
	public List<EventViewVO> getEventList() {
		return mapper.getEventList();
	}

	@Override
	public EventDetailViewVO getEventDetail(int ENO) {
		
		return mapper.getEventDetail(ENO);
	}

	@Override
	public List<CouponDetailViewVO> getCouponDetailUnused(String MID) {
		return mapper.getCouponDetailUnused(MID);

}
	@Override
	public List<CouponDetailViewVO> getCouponDetailUsed(String MID) {
		return mapper.getCouponDetailUsed(MID);

}
	@Override
	public List<CouponDetailViewVO> getCouponDetailExpiry(String MID) {
		return mapper.getCouponDetailExpiry(MID);

}

	@Override
	public List<EventViewVO> getEventListpast() {
		return mapper.getEventListpast();
	}

	@Override
	public int insertCoupon(int ENO, String MID) {
		return mapper.insertCoupon(ENO, MID);
		
	}
}
