package com.kosa.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kosa.service.OrderService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/checkout/*")
@AllArgsConstructor
public class OrderController {

	private OrderService service;
	
	@GetMapping("/ordersheet") 
	public void getOrder() {
	}
	
	@PostMapping("/ordersheet")
	public void postOrder() {
		log.info("OrderController........");
	}
}
