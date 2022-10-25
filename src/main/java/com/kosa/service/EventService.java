package com.kosa.service;
import java.util.List;
/**
 * EventService
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

import org.apache.ibatis.annotations.Param;

import com.kosa.domain.event.CouponDetailViewVO;
import com.kosa.domain.event.EventDetailViewVO;
import com.kosa.domain.event.EventViewVO;

public interface EventService {
	public List<EventViewVO> getEventList();
	
	public List<EventViewVO> getEventListpast();
	
	public EventDetailViewVO getEventDetail(int ENO);
	
	
	public int insertCoupon(int ENO ,String MID);

	List<CouponDetailViewVO> getCouponDetailExpiry(String MID);

	List<CouponDetailViewVO> getCouponDetailUsed(String MID);

	List<CouponDetailViewVO> getCouponDetailUnused(String MID);
	
}
