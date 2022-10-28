package com.kosa.service;

import static org.junit.Assert.assertNotNull;

import java.util.HashMap;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kosa.domain.paging.Criteria;
import com.kosa.domain.paging.ProductPageDTO;
import com.kosa.domain.product.BrandVO;
import com.kosa.domain.product.CategoryVO;
import com.kosa.domain.product.ProductColorVO;
import com.kosa.domain.product.ProductStockVO;
import com.kosa.domain.product.ProductVO;
import com.kosa.mapper.ProductMapperTests;

import lombok.RequiredArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;
/**
 * ProductServiceTest
 * 
 * @author 공통
 * @since 2022.10.17
 * @version 1.0
 * 
 *          <pre>
 * 수정일              수정자                   수정내용
 * ----------  --------    ---------------------------
 * 2022.10.17   박서은              최초 생성
 * 2022.10.19   박서은             재고변경 test
 *          </pre>
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ProductServiceTest {

	@Autowired
	private ProductService service;

	// 제품 가져오기 test
	@Test
	public void testSelects() {		
		log.info("select test--------------------------------------------");
		ProductPageDTO list = service.getProducts(new BrandVO(),new CategoryVO("여성","아우터","자켓"),new Criteria(1,12));
		list.getList().forEach(product -> log.info(product.getPid()));
		log.info("select test2--------------------------------------------");
	}// end test
	
	// 재고 변경 test
	@Test
	public void testStock() {
		
		log.info("testStock--------------------------------------------");
		ProductStockVO test = service.getProductStock("TM2CAWOT765WP1_LE_82");
		log.info(test);
		log.info("testStock end--------------------------------------------");
	}// end test
	
	
}
