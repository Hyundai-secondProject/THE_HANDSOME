package com.kosa.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.kosa.domain.product.CategoryVO;
import com.kosa.domain.product.ProductColorVO;
import com.kosa.domain.product.ProductVO;

@Mapper
public interface ProductMapper {


	public List<ProductVO> selectProductsDepth1(HashMap<String, Object> categoryPager);
	public List<ProductVO> selectProductsDepth2(HashMap<String, Object> categoryPager);
	public List<ProductVO> selectProductsDepth3(HashMap<String, Object> categoryPager);

	public int countDepth1(CategoryVO test);
	public int countDepth2(CategoryVO category);
	public int countDepth3(CategoryVO category);

	public List<ProductColorVO> selectProductColor(ProductVO pid);

}
