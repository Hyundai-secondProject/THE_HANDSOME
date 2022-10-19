package com.kosa.mapper;

import java.util.List;

import com.kosa.event.EventViewVO;

/**
 * SearchMapper
 * @author 김민규
 * @since 2022.10.18
 * @version 1.0
 * 
 * <pre>
 * 수정일              수정자                   수정내용
 * ----------  --------    ---------------------------
 * 2022.10.18   김민규                    최초 생성
 * </pre>
 */
public interface EventMapper {
	/*이벤트*/
	public List<EventViewVO> getEventList();
}
