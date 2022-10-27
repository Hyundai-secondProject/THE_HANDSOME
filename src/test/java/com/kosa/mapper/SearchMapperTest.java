package com.kosa.mapper;
/**
 * SearchMapperTest
 * @author 김민규
 * @since 2022.10.26
 * @version 1.0
 * 
 * <pre>
 * 수정일              수정자                   수정내용
 * ----------  --------    ---------------------------
 * 2022.10.26      김민규              	    최초생성
 * </pre>
 */
import java.util.HashMap;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kosa.domain.paging.Criteria;
import com.kosa.domain.product.ProductVO;

import lombok.extern.log4j.Log4j;

@Log4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml", "file:src/main/webapp/WEB-INF/spring/security-context.xml"})

public class SearchMapperTest {
	
	@Autowired
	ProductMapper mapper;
	
	
	
	@Test
	public void searchtest() {
		Criteria cri = new Criteria();
		
		cri.setCkeyword("");
		cri.setBkeyword("");
		cri.setType("");
		cri.setAmount(100);
		cri.setPageNum(1);
		HashMap<String, Object> SearchPager = new HashMap<String, Object>();
		SearchPager.put("SearchWord","재킷"); // 검색어 : 재킷
		SearchPager.put("cri",cri); // 페이징 값
		
		List<ProductVO> list = mapper.Search(SearchPager); //검색 결과를 페이징에 맞게 가져온다.
		
		list.forEach( i -> log.info( i));
	}
	
	@Test
	public void searchcounttest() {
		Criteria cri = new Criteria();
		
		cri.setCkeyword("");
		cri.setBkeyword("");
		cri.setType("");
		cri.setAmount(100);
		cri.setPageNum(1);
		HashMap<String, Object> SearchPager = new HashMap<String, Object>();
		SearchPager.put("SearchWord","재킷"); // 검색어 : 재킷
		SearchPager.put("cri",cri); // 페이징 값
		
		int count = mapper.SearchCount(SearchPager); // 검색된 제품의 갯수를 가져온다.
		
		log.info(count);
	}
}
