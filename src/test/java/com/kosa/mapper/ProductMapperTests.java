package com.kosa.mapper;

import java.util.HashMap;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kosa.domain.paging.Criteria;
import com.kosa.domain.product.BrandVO;
import com.kosa.domain.product.CategoryVO;
import com.kosa.domain.product.ProductCommonVO;
import com.kosa.domain.product.ProductVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml",
"file:src/main/webapp/WEB-INF/spring/security-context.xml"})
@Log4j
public class ProductMapperTests {
	
	@Autowired
	private ProductMapper mapper;

	@Test
	public void countTest() {

		Criteria cri = new Criteria();
		//cri.setCkeyword(" ");
		//cri.setBkeyword(" ");
		//cri.setType(" ");
		cri.setAmount(2);
		cri.setPageNum(1);
		HashMap<String, Object> categoryPager = new HashMap<String, Object>();
		categoryPager.put("cri",cri);
		categoryPager.put("brand",new BrandVO());
		categoryPager.put("category",new CategoryVO("여성","아우터","자켓"));
		
		int count = mapper.countDepth1(categoryPager);
		log.info(count);
		
	}//end test
	
	@Test
	public void selectTest() {
		Criteria cri = new Criteria();
		cri.setCkeyword("BLACK");
		cri.setBkeyword("time");
		cri.setType("CB");
		cri.setAmount(3);
		cri.setPageNum(1);
		HashMap<String, Object> categoryPager = new HashMap<String, Object>();
		categoryPager.put("cri",cri);
		categoryPager.put("brand",new BrandVO());
		categoryPager.put("category",new CategoryVO("여성","none","none"));
		
		List<ProductVO> list = mapper.selectProductsDepth2(categoryPager);
		list.forEach( i -> log.info( i));
	}//end test
	

}
