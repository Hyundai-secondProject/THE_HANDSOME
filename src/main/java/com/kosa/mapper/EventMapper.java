package com.kosa.mapper;


/**
 * EventMapper
 * @author 김민규
 * @since 2022.10.18
 * @version 1.0
 * 
 * <pre>
 * 수정일              수정자                   수정내용
 * ----------  --------    ---------------------------
 * 2022.10.18   김민규                    최초 생성
 * 2022.10.21	김민규			getEventDetail,getCouponDetail추가
 * 2022.10.24	김민규			insertCoupon추가
 * 2022.10.25	김민규		getCouponDetailUnused,Used,Expiry 추가 getCouponCount추가
 * </pre>
 */
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.kosa.domain.event.CouponCountVO;
import com.kosa.domain.event.CouponDetailViewVO;
import com.kosa.domain.event.EventDetailViewVO;
import com.kosa.domain.event.EventViewVO;

@Mapper

public interface EventMapper {

	List<EventViewVO> getEventList(); // 진행중인 이벤트 리스트 페이지
	
	EventDetailViewVO getEventDetail(int ENO); // 이벤트 상세페이지
	
	List<EventViewVO> getEventListpast(); //지난 이벤트 리스트 페이지
	
	List<CouponDetailViewVO> getCouponDetailUnused(String MID);// 마이페이지 쿠폰 조회 (미사용)
	List<CouponDetailViewVO> getCouponDetailUsed(String MID); //마이페이지 쿠폰 조회 (사용)
	List<CouponDetailViewVO> getCouponDetailExpiry(String MID); //마이페이지 쿠폰 조회 (기간 만료)
	public int insertCoupon(@Param("eno") int eno, @Param("mid") String mid); //쿠폰 발급
	
	List<CouponCountVO> getCouponCount(int ENO); //쿠폰 갯수
	
	public int updateCouponCount(int ENO); //쿠폰 발급 성공시 Ecount 증가
	
	
}
