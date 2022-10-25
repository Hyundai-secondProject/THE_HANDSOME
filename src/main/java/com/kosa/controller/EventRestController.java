package com.kosa.controller;
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
 * 2022.10.24	김민규			최초 생성
 * </pre>
 */
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.kosa.domain.event.EventViewVO;
import com.kosa.service.EventService;

import lombok.extern.log4j.Log4j;
@CrossOrigin
@RequestMapping("/event")
@RestController
@Log4j
public class EventRestController {
	@Autowired
	private EventService eventservice;
	
	@GetMapping("/Inprogress")
	public List<EventViewVO> getProgressList(){
		return eventservice.getEventList();
	}
	@GetMapping("/Past")
	public List<EventViewVO> getEventListpast(){
		return eventservice.getEventListpast();
	}
}
