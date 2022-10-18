package com.kosa.domain.product;

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

// product_common & category view 만들어서 가져오기
@Data
public class ProductVO {
	private String pid; // 물품 id
	private String pname; // 물품 이름
	private String pnote; // 물품 설명
	private String bno; // 브랜드 번호
	private String pstatus; // 물품 품절 상태
	private String depth1name; // 대분류
	private String depth2name; // 중분류
	private String depth3name; // 소분류
	private String bname; // 브랜드 이름
}
