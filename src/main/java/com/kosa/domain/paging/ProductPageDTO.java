package com.kosa.domain.paging;

import java.util.List;

import com.kosa.domain.product.ProductVO;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;

@Data
@AllArgsConstructor
@Getter
public class ProductPageDTO {
	private int totalCnt;
	private List<ProductVO> list;
}
