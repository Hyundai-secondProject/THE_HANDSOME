package com.kosa.domain.product;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * ProductDetailVO
 * @author 공통
 * @since 2022.10.18
 * @version 1.0
 * 
 * <pre>
 * 수정일                  수정자                            수정내용
 * ----------  -------------    ---------------------------
 * 2022.10.18     장주연, 김민찬              최초 생성
 * </pre>
 */

@Getter
@Setter
@ToString
public class ProductDetailVO {
	   private String bname; // 브랜드테이블 브랜드이름
	   private String pname; // 물품테이블 물품이름
	      
	   private String pccolorcode; // 물품색테이블 색상
	   private String pcimg1; // 물품색테이블 이미지 1개
	   private int pcprice; // 물품색테이블 판매가격
	      
	   private String psize; // 물품재고테이블 사이즈
	
}
