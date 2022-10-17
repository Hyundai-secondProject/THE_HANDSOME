package com.kosa.domain.member;

import java.util.List;

import com.kosa.domain.product.ProductColorVO;

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
 * 수정일                     수정자                  수정내용
 * ----------  --------     ---------------------------
 * 2022.10.13    공통                  최초 생성
 * </pre>
 */

@Getter
@Setter
@ToString
public class CartVO {
	
	private String mid; // 회원아이디
	private String psid;  // 상품수량PK
	private int pquantity;  // 장바구니에 넣은 상품수량
	
	// 브랜드테이블 브랜드이름
	// 물품테이블 물품이름
//	private List<ProductVO> product;
	private String bname;
	private String pname;
		
	// 물품섹테이블 이미지 1개
	// 물품색테이블 색상
	// 물품색테이블 판매가격
//	private List<ProductColorVO> productColor;
	private String pccolorcode;
	private String pcimg1;
	private int pcprice;

		
	// 물품재고테이블 사이즈
	private String psize;

}
