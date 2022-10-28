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

/**
 * @author 장주연
 * @since 2022.10.21
 * @version 1.0
 * 
 * <pre>
 * 수정일                  수정자                   수정내용
 * ----------  --------    ---------------------------
 * 2022.10.21   장주연                 최초 생성
 * 2022.10.24   장주연                 검색  + 페이징 기능 추가 
 * </pre>
 */

@RequestMapping("/orderlists")
@RestController
@Log4j
@AllArgsConstructor
public class MypageRestController {

	@Autowired
	private OrderService service;
	
	// 검색 + 페이징된 데이터만 가져오기
	@GetMapping(value = "/{mid}/{page}/{type}/{keyword}")
	public ResponseEntity<OrderPageDTO> getList(
			@PathVariable("mid") String mid,
			@PathVariable("page") int page,
			@PathVariable("type") String type,
			@PathVariable("keyword") String keyword) {
		log.info("getList............");
		Criteria cri = new Criteria(page, 5);
		
		System.out.println("controller mid " + mid);
		
		if (!type.equals("N") && !keyword.equals("none")) { //카테고리 검색 + 키워드 검색을 했을 경우
			cri.setType(type);
			cri.setKeyword(keyword);
			log.info(cri);
			return new ResponseEntity<>(service.getListPage(cri, mid), HttpStatus.OK);
		} 
		
		log.info(cri);
		return new ResponseEntity<>(service.getListPage(cri, mid), HttpStatus.OK);
	}
}