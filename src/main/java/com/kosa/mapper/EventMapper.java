package com.kosa.mapper;


/**
 * EventMapper
 * @author 김민규
 * @since 2022.10.17
 * @version 1.0
 * 
 * <pre>
 * 수정일              수정자                   수정내용
 * ----------  --------    ---------------------------
 * 2022.10.18   김민규                    최초 생성\
 * 2022.10.21	김민규			getEventDetail,getCouponDetail추가
 * 2022 10.24	김민규			insertCoupon추가
 * </pre>
 */
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.kosa.domain.event.CouponDetailVO;
import com.kosa.domain.event.CouponDetailViewVO;
import com.kosa.domain.event.EventDetailViewVO;
import com.kosa.domain.event.EventViewVO;

public interface EventMapper {

	List<EventViewVO> getEventList();
	
	EventDetailViewVO getEventDetail(int ENO);
	
	List<EventViewVO> getEventListpast();
	
	List<CouponDetailViewVO> getCouponDetail(String MID);
	
	public int insertCoupon(@Param("eno") int eno, @Param("mid") String mid);
	
}
