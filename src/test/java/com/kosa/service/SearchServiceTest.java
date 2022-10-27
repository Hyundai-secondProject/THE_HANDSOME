package com.kosa.service;
/**
 * SearchServiceTest
 * @author 김민규
 * @since 2022.10.27
 * @version 1.0
 * 
 * <pre>
 * 수정일              수정자                   수정내용
 * ----------  --------    ---------------------------
 * 2022.10.27   김민규                   최초 생성
 * </pre>
 */
import org.junit.Test;

import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kosa.domain.paging.Criteria;
import com.kosa.domain.paging.ProductPageDTO;

import lombok.extern.log4j.Log4j;

@Log4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml", "file:src/main/webapp/WEB-INF/spring/security-context.xml"})
public class SearchServiceTest {

	@Autowired
	private ProductService service;
	
	@Test
	public void SearchServicetest() { // 검색 결과
		log.info("Search test start--------------------------------------------");
		ProductPageDTO list = service.Search("재킷", new Criteria(1,12)); // 검색어 : 재킷 
		list.getList().forEach(product -> log.info(product.getPid()));
		log.info("Search test end--------------------------------------------");
	}
	
	@Test
	public void SearchCountServiceTest() { // 검색된 제품의 총 갯수
		log.info("Count test start--------------------------------------------");
		service.SearchCount("재킷",new Criteria(1,12));//검색어 : 재킷
		log.info("Count test end--------------------------------------------");
	}
	
}
