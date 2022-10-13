package com.kosa.domain.member;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * CartVO
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
public class CartVO {
	
	private String mid; // 회원아이디
	private String psid;  // 상품수량PK
	private int pquantity;  //상품수량

}
