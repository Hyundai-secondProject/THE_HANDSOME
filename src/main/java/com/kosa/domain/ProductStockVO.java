package com.kosa.domain;

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
 * </pre>
 */

@Data
public class ProductStockVO {
	private String psid; // 무품 재고 id
	private int psstock; // 재고 수량
	private String psize; // 물품 사이즈
	private String pcid; // 물품 색포함 id
}
