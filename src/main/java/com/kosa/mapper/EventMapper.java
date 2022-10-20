package com.kosa.mapper;

import java.util.List;

import com.kosa.domain.event.EventViewVO;

public interface EventMapper {

	List<EventViewVO> getEventList();

}
