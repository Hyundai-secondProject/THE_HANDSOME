package com.kosa.domain.product;

import lombok.Data;

/**
 * ProductStockVO
 * @author 공통
 * @since 2022.10.13
 * @version 1.0
 * 
 * <pre>
 * 수정일              수정자                   수정내용
 * ----------  --------    ---------------------------
 * 2022.10.13     공통              최초 생성
 * 
 */

@Data
public class ProductSizeVO {
	private String pid; // 물품 id
	private String psize; // 물품 사이즈
}
