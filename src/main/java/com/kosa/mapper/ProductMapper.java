package com.kosa.mapper;
/**
 * ProductMapper
 * @author 박서은 , 김민규
 * @since 2022.10.17
 * @version 1.0
 * 
 * <pre>
 * 수정일              수정자                   수정내용
 * ----------  --------    ---------------------------
 * 
 * 
 *
 * 2022.10.27	김민규			검색 결과, 검색 총 갯수 추가
 * </pre>
 */

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.kosa.domain.product.ProductColorVO;
import com.kosa.domain.product.ProductSizeVO;
import com.kosa.domain.product.ProductStockVO;
import com.kosa.domain.product.ProductVO;

@Mapper
public interface ProductMapper {


	public List<ProductVO> selectProductsDepth1(HashMap<String, Object> categoryPager);
	public List<ProductVO> selectProductsDepth2(HashMap<String, Object> categoryPager);
	public List<ProductVO> selectProductsDepth3(HashMap<String, Object> categoryPager);

	public int countDepth1(HashMap<String, Object> categoryPager);
	public int countDepth2(HashMap<String, Object> categoryPager);
	public int countDepth3(HashMap<String, Object> categoryPager);

	public List<ProductColorVO> selectProductColor(ProductVO pid); // 제품 id로 색깔 가져오기
	public List<ProductSizeVO> selectProductSize(ProductVO pid); // 제품 id로 사이즈 가져오기
	
	public ProductStockVO selectProductStock(String psid); // 색상별 - 사이즈별 재고는 stockvo에서 처리
	public ProductVO selectProduct(String pid); // pid로 제품 하나 가져오기
	
	public void updateProductStock(ProductStockVO stock); // 재고 변경
	
	
	public List<ProductVO> Search(HashMap<String, Object> SearchPager); // 검색결과
	public int SearchCount(HashMap<String, Object> SearchPager);// 검색 갯수
}
