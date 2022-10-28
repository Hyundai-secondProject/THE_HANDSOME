package com.kosa.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kosa.service.OrderService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

/**
 * @author 장주연
 * @since 2022.10.15
 * @version 1.0
 * 
 * <pre>
 * 수정일                  수정자                   수정내용
 * ----------  --------    -----------------------------------------
 * 2022.10.15   장주연                 최초 생성
 * 2022.10.27   장주연                 주문자 정보, 배송지 정보 가져오기 / 한섬마일리지 결제 적용 
 * </pre>
 */

@Log4j
@Controller
@RequestMapping("/checkout/*")
@AllArgsConstructor
public class OrderController {

	private OrderService service;
	
	// 배송&결제정보 페이지로 매핑
	@GetMapping("/ordersheet") 
	public void getOrder() {
	}
	
	@PostMapping("/ordersheet")
	public void postOrder() {
		log.info("OrderController........");
	}
	
	// 결제 후 주문 내역 jsp로 데이터 전달
	@GetMapping("/orderConfirmation")
	public void getOrderConfirmation(HttpServletRequest request, Model model) {
		System.out.println(request.getParameter("postcode"));
		System.out.println(request.getParameter("usePoint"));
		System.out.println(request.getParameter("ordererName"));
		
		model.addAttribute("usePoint", request.getParameter("usePoint"));
		model.addAttribute("ordererName", request.getParameter("ordererName"));
		
		model.addAttribute("hp_num1", request.getParameter("hp_num1"));
		model.addAttribute("hp_num2", request.getParameter("hp_num2"));
		model.addAttribute("hp_num3", request.getParameter("hp_num3"));
		
		model.addAttribute("ph_num1", request.getParameter("ph_num1"));
		model.addAttribute("ph_num2", request.getParameter("ph_num2"));
		model.addAttribute("ph_num3", request.getParameter("ph_num3"));
		
		model.addAttribute("mail", request.getParameter("mail"));
		model.addAttribute("emailDely", request.getParameter("emailDely"));
		
		model.addAttribute("postcode", request.getParameter("postcode"));
		model.addAttribute("line1", request.getParameter("line1"));
		model.addAttribute("line2", request.getParameter("line2"));
		
		model.addAttribute("totalPriceHidden", request.getParameter("totalPriceHidden"));
	}
}
