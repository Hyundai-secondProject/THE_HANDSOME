package com.kosa.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kosa.service.EventService;

import lombok.extern.log4j.Log4j;


@Controller
@Log4j
@RequestMapping(value= "/mypage/*")
public class MypageController2 {
	@Autowired
	EventService eventservice;
	
	@GetMapping(value = "/coupon")
	public void event(@RequestParam("MID") String MID,Model model) {
		model.addAttribute("couponlist", eventservice.getCouponDetail(MID));
		log.info(eventservice.getCouponDetail(MID));
		
		
	}
	
	
}
