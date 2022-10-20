package com.kosa.service;

import java.util.List;
/**
 * EventService
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

import com.kosa.domain.event.EventViewVO;

public interface EventService {
	public List<EventViewVO> getEventList();
	
}
