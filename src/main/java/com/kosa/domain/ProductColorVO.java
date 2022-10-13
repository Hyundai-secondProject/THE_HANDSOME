package com.kosa.domain;

import java.sql.Timestamp;

import lombok.Data;
/**
 * ProductColorVO
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
public class ProductColorVO {
	private String pcid; // 물품 색포함 id
	private String pcimg1; // 물품 이미지1
	private String pcimg2; // 물품 이미지2
	private String pcimg3; // 물품 이미지3
	private String pcchipimg; // 물품 색상 이미지
	private String pccolorcode; // 물품 색상 코드
	private int pcprice; // 물품 가격
	private String pid; // 물품 id
	private Timestamp preleasedate; // 물품 등록 날짜
}
