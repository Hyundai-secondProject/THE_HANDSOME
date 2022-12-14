package com.kosa.domain.order;

import com.kosa.domain.product.ProductDetailVO;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * OrderItemVO
 * @author 공통
 * @since 2022.10.13
 * @version 1.0
 * 
 * <pre>
 * 수정일              수정자                   수정내용
 * ----------  --------    ---------------------------
 * 2022.10.13   장주연              최초 생성
 * 2022.10.18	 장주연	       상품 정보를 담을 객체 추가
 * </pre>
 */

@Getter
@Setter
@ToString
public class OrderItemVO {
	private String psid; // 제품 재고 id
	private String oid; // 주문 번호
	private int oicount; // 각각의 상품 갯수
	private int oitotalprice; // 각각의 상품에 대한 가격
	
	private ProductDetailVO productDetail; // 상품 정보
}
