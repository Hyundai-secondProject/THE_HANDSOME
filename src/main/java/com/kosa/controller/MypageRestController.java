package com.kosa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.kosa.domain.order.Criteria;
import com.kosa.domain.order.OrderPageDTO;
import com.kosa.domain.order.OrdersVO;
import com.kosa.service.OrderService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@RequestMapping("/orderlists")
@RestController
@Log4j
@AllArgsConstructor
public class MypageRestController {

	@Autowired
	private OrderService service;
	
	@GetMapping(value = "/{mid}/{page}/{type}/{keyword}")
	public ResponseEntity<OrderPageDTO> getList(
			@PathVariable("mid") String mid,
			@PathVariable("page") int page,
			@PathVariable("type") String type,
			@PathVariable("keyword") String keyword) {
		log.info("getList............");
		Criteria cri = new Criteria(page, 5);

		if (!type.equals("N") && !keyword.equals("none")) {
			cri.setType(type);
			cri.setKeyword(keyword);
			log.info(cri);
			return new ResponseEntity<>(service.getListPage(cri, mid), HttpStatus.OK);
		} 
		
		log.info(cri);
		return new ResponseEntity<>(service.getListPage(cri, mid), HttpStatus.OK);
	}
}