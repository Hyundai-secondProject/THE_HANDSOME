package com.kosa.domain.product;

import lombok.Data;

/**
 * WithProductVO
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
public class WithProductVO {
	private String pcid; // 물품 색포함 id
	private String withpcid; // 함께 코디한 물품 색포함 id
}
