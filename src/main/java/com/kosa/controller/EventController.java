package com.kosa.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
 * 2022.10.20	김민규		eventdetail 추가
 * 2022.10.24	김민규			makecoupon,eventpast 추가
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
	
	@GetMapping(value = "/eventdetail")
	public void eventdetail(@RequestParam("ENO") int ENO, Model model) {
		model.addAttribute("detaillist",eventservice.getEventDetail(ENO));
		log.info(eventservice.getEventDetail(ENO));
	}
	
	@GetMapping(value = "/makecoupon")
	public String makeCoupon(@RequestParam("ENO") int ENO, @RequestParam("MID") String MID) {
		eventservice.insertCoupon(ENO, MID);
		return"redirect:/mypage/mycouponUnused?MID="+MID;
	}
	
	
	
	

	
	
	
	
	
}
