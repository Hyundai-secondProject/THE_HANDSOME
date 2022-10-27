package com.kosa.domain.event;
/**
 * CouponDetailVO
 * @author 공통
 * @since 2022.10.13
 * @version 1.0
 * 
 * <pre>
 * 수정일              수정자                   수정내용
 * ----------  --------    ---------------------------
 * 2022.10.13      공통              	최초 생성
 * 2022.10.24	김민규		쿠폰발급에 필요한 내용만 남도록 수정
 * </pre>
 */
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;



@Getter
@Setter
@ToString
public class CouponDetailVO {
	
	
	private int eno;  // 이벤트번호
	private String mid;  // 회원아이디
	

}
