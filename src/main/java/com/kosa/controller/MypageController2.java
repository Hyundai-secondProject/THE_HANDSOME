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
	
	@GetMapping(value = "/mycouponUnused")
	public void eventUnused(@RequestParam("MID") String MID,Model model) {
		model.addAttribute("couponlist", eventservice.getCouponDetailUnused(MID));
		log.info(eventservice.getCouponDetailUnused(MID));
		
		
	}
	
	@GetMapping(value = "/mycouponUsed")
	public void eventUsed(@RequestParam("MID") String MID, Model model) {
		model.addAttribute("couponlist", eventservice.getCouponDetailUsed(MID));
		log.info(eventservice.getCouponDetailUsed(MID));
		
		
	}
	@GetMapping(value = "/mycouponExpiry")
	public void eventExpiry(@RequestParam("MID") String MID, Model model) {
		model.addAttribute("couponlist", eventservice.getCouponDetailExpiry(MID));
		log.info(eventservice.getCouponDetailExpiry(MID));
		
		
	}
	
	
}
