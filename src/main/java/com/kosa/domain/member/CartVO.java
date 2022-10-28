package com.kosa.domain.member;

import com.kosa.domain.product.ProductDetailVO;

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
 * 수정일                   수정자              수정내용
 * ----------  ---------       ---------------------------
 * 2022.10.13    공통                  최초 생성
 * 2022.10.17    김민찬                화면에 보여줄 내용으로  변경
 * </pre>
 */

@Getter
@Setter
@ToString
public class CartVO {
	
	private String mid; // 회원아이디
	private String psid;  // 상품수량PK
	private int pquantity;  // 장바구니에 넣은 상품수량

	private ProductDetailVO productDetail; // 상품정보, 1:1관계이므로 list가 아닌 VO로 받아 
/*
    // 브랜드테이블 브랜드이름
    // 물품테이블 물품이름
//  private List<ProductVO> product;
    private String bname;
    private String pname;
        
    // 물품섹테이블 이미지 1개
    // 물품색테이블 색상
    // 물품색테이블 판매가격
//  private List<ProductColorVO> productColor;
    private String pccolorcode;
    private String pcimg1;
    private int pcprice;
        
    // 물품재고테이블 사이즈
    private String psize;
*/  // -> productDetailVO로 대체 
	

}
