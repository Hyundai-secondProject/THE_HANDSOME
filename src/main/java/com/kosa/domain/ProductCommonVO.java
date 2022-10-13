package com.kosa.domain;

import lombok.Data;
/**
 * ProductCommonVO
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
public class ProductCommonVO {
	private String pid; // 물품 id
	private String pname; // 물품 이름
	private String pnote; // 물품 설명
	private int bno; // 브랜드 번호
	private int pstatus; // 물품 품절 상태 - 1:판매가능 / 2:품절
}
