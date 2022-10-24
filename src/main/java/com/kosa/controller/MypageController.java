package com.kosa.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kosa.domain.order.Criteria;
import com.kosa.service.OrderService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/mypage/*")
@AllArgsConstructor
public class MypageController {

	private OrderService service;
	
	@GetMapping("/myorders2")
	public void list(Criteria cri) {
	}
	
	@PostMapping("/myorders2")
	public void list(HttpServletRequest httpServletRequest, Model model) {
		log.info("search.....");
		String type = httpServletRequest.getParameter("searchType");
		String keyword = httpServletRequest.getParameter("searchWord");
		log.info(type);
		log.info(keyword);
		
		model.addAttribute("type", type);
		model.addAttribute("keyword", keyword);
	}
}