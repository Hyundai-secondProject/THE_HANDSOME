package com.kosa.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.kosa.domain.ProductCommonVO;

@Mapper
public interface ProductMapper {
	public ProductCommonVO selectProductVO(String pid); // test용
}
