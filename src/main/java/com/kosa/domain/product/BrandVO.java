package com.kosa.domain.product;

import java.sql.Timestamp;

import lombok.Data;

/**
 * BrandVO
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
public class BrandVO {
	private int bno; // 브랜드 번호
	private String bname; // 브랜드 이름
	
	public BrandVO(String bname) {
		this.bname = bname;
	}
	
	public BrandVO() {} // 빈생성자
}
