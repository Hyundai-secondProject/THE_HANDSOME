package com.kosa.mapper;
/**
 * EventViewMapperTest
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

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kosa.domain.event.EventViewVO;

import lombok.extern.log4j.Log4j;
@Log4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml", "file:src/main/webapp/WEB-INF/spring/security-context.xml"})

public class EventViewMapperTest {
	
	@Autowired
	private EventMapper mapper;
	
	@Test
	public void EventViewTest() {
		
		List<EventViewVO> list = mapper.getEventList(); // 이벤트들의 값을 받는다.
		System.out.println("list : " + list);
		System.out.println("==========");
		log.info(list);
		
	}
}
