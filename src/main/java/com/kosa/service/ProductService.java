package com.kosa.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kosa.domain.paging.Criteria;
import com.kosa.domain.paging.ProductPageDTO;
import com.kosa.domain.product.BrandVO;
import com.kosa.domain.product.CategoryVO;
import com.kosa.domain.product.ProductColorVO;
import com.kosa.domain.product.ProductSizeVO;
import com.kosa.domain.product.ProductStockVO;
import com.kosa.domain.product.ProductVO;
import com.kosa.mapper.ProductMapper;


import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class ProductService {

	private ProductMapper mapper;

	// 제품 리스트 + 해당 조건에 맞는 제품의 total갯수 가져오기 - productpagedto객체 사용
	public ProductPageDTO getProducts(BrandVO bname, CategoryVO category, Criteria cri) {
		log.info("getListPageService.............." + category + bname + cri);
		HashMap<String, Object> categoryPager = new HashMap<String, Object>();
		categoryPager.put("category", category);
		categoryPager.put("cri", cri);
		categoryPager.put("brand", bname);
	

		// 소분류까지 하지 않을 때는 brand로 상품 띄우기
		if (category.getDepth1name().equals("none")) {
			return new ProductPageDTO(mapper.countDepth1(categoryPager), mapper.selectProductsDepth1(categoryPager)); // 브랜드 별 갯수로 바꿔야 함-----------------------------
		} else if (category.getDepth2name().equals("none")) {
			// 대분류
			return new ProductPageDTO(mapper.countDepth1(categoryPager), mapper.selectProductsDepth1(categoryPager));
		} else if (category.getDepth3name().equals("none")) {
			// 대분류 + 중분류
			return new ProductPageDTO(mapper.countDepth2(categoryPager), mapper.selectProductsDepth2(categoryPager));
		}
		// 대분류 + 중분류 + 소분류
		return new ProductPageDTO(mapper.countDepth3(categoryPager), mapper.selectProductsDepth3(categoryPager));
	}
	
	

	// 제품 코드로 제품 별 색상 가져오기
	public List<ProductColorVO> getProductColor(ProductVO pid) {
		return mapper.selectProductColor(pid);
	}
	
	// 제품 코드로 제품 별 사이즈 가져오기
	public List<ProductSizeVO> getProductSize(ProductVO pid) {
		return mapper.selectProductSize(pid);
	}
	
	// 색상 코드 + 사이즈 로 재고 가져오기
	public ProductStockVO getProductStock(String psid) {
		return mapper.selectProductStock(psid);
	}

	// 제폼 코드로 제품 가져오기
	public ProductVO getProduct(String pid) {
		return mapper.selectProduct(pid);
	}
}
