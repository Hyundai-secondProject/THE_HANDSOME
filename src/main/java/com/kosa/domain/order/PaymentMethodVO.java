package com.kosa.domain.order;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * PaymentMethodVO
 * @author 공통
 * @since 2022.10.13
 * @version 1.0
 * 
 * <pre>
 * 수정일                 수정자                   수정내용
 * ----------  --------    ---------------------------
 * 2022.10.13     공통              최초 생성
 * </pre>
 */

@Getter
@Setter
@ToString
public class PaymentMethodVO {
	private String pmcode; // 클라이언트 코드
	private String pmcompany; // 결제 대행사 이름
	private int pmmethod; // 결제 방법
}
