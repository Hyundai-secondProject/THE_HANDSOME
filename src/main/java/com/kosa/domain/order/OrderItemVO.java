package com.kosa.domain.order;

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
 * 2022.10.13     공통              최초 생성
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
}
