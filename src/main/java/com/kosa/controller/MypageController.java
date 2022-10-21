package com.kosa.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

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
}
