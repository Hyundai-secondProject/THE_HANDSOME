package com.kosa.mapper;


import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kosa.domain.event.EventDetailViewVO;

import lombok.extern.log4j.Log4j;
/**
 * EventViewMapperTest
 * @author 김민규
 * @since 2022.10.21
 * @version 1.0
 * 
 * <pre>
 * 수정일              수정자                   수정내용
 * ----------  --------    ---------------------------
 * 2022.10.20   김민규                    최초 생성
 * </pre>
 */

@Log4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml", "file:src/main/webapp/WEB-INF/spring/security-context.xml"})

public class EventDetailTest {
	
	@Autowired
	private EventMapper mapper;
	
	
	@Test
	public void getEventDetail() {
		int ENO = 1;
		EventDetailViewVO list = mapper.getEventDetail(ENO);
		System.out.println("list : " + list);
		System.out.println("==========");
		log.info(list);
	}
	
}
