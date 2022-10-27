package com.kosa.mapper;
/**
 * EventDetailMapperTest
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

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kosa.domain.event.EventDetailViewVO;

import lombok.extern.log4j.Log4j;


@Log4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml", "file:src/main/webapp/WEB-INF/spring/security-context.xml"})

public class EventDetailMapperTest {
	
	@Autowired
	private EventMapper mapper;
	
	
	@Test
	public void getEventDetail() {
		int ENO = 1; // 이벤트 번호 임시값
		EventDetailViewVO list = mapper.getEventDetail(ENO); // 이벤트 번호와 맞는 이벤트 상세페이지 값을 받는다.
		System.out.println("list : " + list);
		System.out.println("==========");
		log.info(list);
	}
	
}
