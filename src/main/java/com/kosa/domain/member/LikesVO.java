package com.kosa.domain.member;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * LikesVO
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

@Getter
@Setter
@ToString
public class LikesVO {
	
	private String pid; // 상품아이디
	private String  mid; // 회원아이디
	private int ltime; // 누른시간
	private String pname; // 상품 이름
	private String bname; // 상품 브랜드
	private int pcprice; // 상품 가격
	private String pcimg3; // 상품 사진
}
