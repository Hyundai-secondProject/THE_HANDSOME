package com.kosa.controller;
/**
 * EventRestController
 * 
 * @author 김민규
 * @since 2022.10.24
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
@CrossOrigin
@RequestMapping("/event")
@RestController
public class EventRestController {
	@Autowired
	private EventService eventservice;
	
	@GetMapping("/Inprogress") // Ajax를 이용하여 현재 진행중인 이벤트들을 보여준다.
	public List<EventViewVO> getProgressList(){
		return eventservice.getEventList();
	}
	@GetMapping("/Past")// Ajax를 이용하여 지난 이벤트들을 보여준다.
	public List<EventViewVO> getEventListpast(){
		return eventservice.getEventListpast();
	}
}
