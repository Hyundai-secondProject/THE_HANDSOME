package com.kosa.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kosa.domain.event.CouponCountVO;
import com.kosa.service.EventService;

import lombok.extern.log4j.Log4j;
/**
 * EventController
 * 
 * @author 김민규
 * @since 2022.10.19
 * @version 1.0
 * 
 * <pre>
 * 수정일              수정자                   수정내용
 * ----------  --------    ---------------------------
 * 2022.10.19   김민규                    최초 생성
 * 2022.10.20	김민규			eventdetail 추가
 * 2022.10.24	김민규			makecoupon,eventpast 추가
 * 2022.10.25	김민규			쿠폰 ELIMIT 적용
 * </pre>
 */


@Controller
@RequestMapping(value = "/magazine/*")
@Log4j
public class EventController {
	
	@Autowired
	EventService eventservice;
	@GetMapping(value = "/event")
	public String event(){
		 return "magazine/event";
		 }
	
	@GetMapping(value = "/eventdetail")// 쿠폰 상세페이지
	public void eventdetail(@RequestParam("ENO") int ENO, Model model) {
		model.addAttribute("detaillist",eventservice.getEventDetail(ENO));
		log.info(eventservice.getEventDetail(ENO));
	}
	
	@GetMapping(value = "/makecoupon")// 쿠폰 발급
	public String makeCoupon(@RequestParam("ENO") int ENO, @RequestParam("MID") String MID) {
		List<CouponCountVO> list = eventservice.getCouponCount(ENO);
		int count = list.get(0).getEcount();// 현재까지 쿠폰이 발급된 값
		int Limit = list.get(0).getElimitcount(); //쿠폰의 최대 발급가능 값
		if(count<Limit) {// 쿠폰의 현재 발급량이 최대보다 낮다면 발급해준다.
			eventservice.updateCouponCount(ENO);// 쿠폰의 현재 발급량을 1 올려준다.
			eventservice.insertCoupon(ENO, MID);// 쿠폰을 발급해준다.
			return"redirect:/mypage/mycouponUnused?MID="+MID; // 마이페이지의 쿠폰 조회페이지로 이동한다.
		}
		else {
			return "common/error";// 쿠폰이 발급이 불가하다면 에러페이지로 이동한다.
		}
	}
	
	
	
	

	
	
	
	
	
}
