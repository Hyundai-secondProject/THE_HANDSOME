package com.kosa.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kosa.domain.ProductCommonVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ProductMapperTests {
	
	@Autowired
	private ProductMapper mapper;
	
	@Test
	public void testGetList() {
		ProductCommonVO vo = mapper.selectProductVO("TM2CAWOTS61W");
		log.info(vo);
		
	}//end void
}
