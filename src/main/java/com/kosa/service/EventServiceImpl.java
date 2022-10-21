package com.kosa.service;
/**
 * EventServiceimpl
 * @author 김민규
 * @since 2022.10.18
 * @version 1.0
 * 
 * <pre>
 * 수정일              수정자                   수정내용
 * ----------  --------    ---------------------------
 * 2022.10.18   김민규                   최초 생성
 * </pre>
 */

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kosa.domain.event.EventViewVO;
import com.kosa.mapper.EventMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor

public class EventServiceImpl implements EventService{
	
	@Autowired
	private EventMapper mapper;

	@Override
	public List<EventViewVO> getEventList() {
		return mapper.getEventList();
	}

}
