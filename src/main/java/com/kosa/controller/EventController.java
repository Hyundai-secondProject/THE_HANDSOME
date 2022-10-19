package com.kosa.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

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
 * 2022.10.19    김민규               최초 생성
 * </pre>
 */


@Controller
@RequestMapping("/magazine/*")
@Log4j
public class EventController {
	
	@Autowired
	EventService eventservice;
	
	@GetMapping("/event*")
	public void event(Model model){
		model.addAttribute("list",eventservice.getEventList());
		log.info(eventservice.getEventList());
	}

	
	
	
	
	
}
