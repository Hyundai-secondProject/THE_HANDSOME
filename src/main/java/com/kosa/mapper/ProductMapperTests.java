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
import com.kosa.domain.product.ProductVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
/**
 * ProductMapperTests
 * 
 * @author 공통
 * @since 2022.10.17
 * @version 1.0
 * 
 *          <pre>
 * 수정일              수정자                   수정내용
 * ----------  --------    ---------------------------
 * 2022.10.17   박서은              최초 생성
 * 2022.10.26   박서은              cri 값 변경
 *          </pre>
 */

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml",
"file:src/main/webapp/WEB-INF/spring/security-context.xml"})
@Log4j
public class ProductMapperTests {
	
	@Autowired
	private ProductMapper mapper;

	// 제품 갯수 가져오기 test
	@Test
	public void countTest() {
		Criteria cri = new Criteria();
		cri.setAmount(2);
		cri.setPageNum(1);
		HashMap<String, Object> categoryPager = new HashMap<String, Object>();
		categoryPager.put("cri",cri);
		categoryPager.put("brand",new BrandVO());
		categoryPager.put("category",new CategoryVO("여성","아우터","자켓"));
		
		int count = mapper.countDepth1(categoryPager);
		log.info(count);
		
	}//end test
	
	// 제품 가져오기 test
	@Test
	public void selectTest() {
		Criteria cri = new Criteria();
		cri.setCkeyword("");
		cri.setBkeyword("");
		cri.setType("PL");
		cri.setStartp(100000);
		cri.setEndp(300000);
		
		cri.setAmount(12);
		cri.setPageNum(1);
		
		HashMap<String, Object> categoryPager = new HashMap<String, Object>();
		categoryPager.put("cri",cri);
		categoryPager.put("brand",new BrandVO());
		categoryPager.put("category",new CategoryVO("여성","none","none"));
		
		List<ProductVO> list = mapper.selectProductsDepth1(categoryPager);
		list.forEach( i -> log.info( i));
	}//end test
	

}
