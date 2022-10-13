package com.kosa.domain;

import lombok.Data;
/**
 * ProductCategoryVO
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
public class ProductCategoryVO {
	private int cateno; // 카테고리 번호
	private String pid; // 물품 id
}
