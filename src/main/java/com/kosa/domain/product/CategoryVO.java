package com.kosa.domain.product;

import lombok.Data;

/**
 * CategoryVO
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
public class CategoryVO {
	private int cateno; // 카테고리 번호
	private String depth1name; // 대분류
	private String depth2name; // 중분류
	private String depth3name; // 소분류
	
	public CategoryVO(String depth1name, String depth2name, String depth3name) {
		this.depth1name = depth1name;
		this.depth2name = depth2name;
		this.depth3name = depth3name;
	}
	
	public CategoryVO() {} // 빈 생성자
}
