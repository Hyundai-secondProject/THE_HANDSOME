package com.kosa.domain.event;
/**
 * CouponCountVO
 * @author 공통
 * @since 2022.10.13
 * @version 1.0
 * 
 * <pre>
 * 수정일              수정자                   수정내용
 * ----------  --------    ---------------------------
 * 2022.10.13      공통              	최초 생성
 *
 * </pre>
 */
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class CouponCountVO {
	
	private int elimitcount;  // 이벤트한정수량
	private int ecount;  // 현재 발급한 쿠폰 수량
}
