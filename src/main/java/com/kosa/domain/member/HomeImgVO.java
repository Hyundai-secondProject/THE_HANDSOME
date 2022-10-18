package com.kosa.domain.member;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * HomeImgVO
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
public class HomeImgVO {
	
	private String hiname;  // 브랜드홈이름
	private String hiimg;  // 브랜드이미지

}
