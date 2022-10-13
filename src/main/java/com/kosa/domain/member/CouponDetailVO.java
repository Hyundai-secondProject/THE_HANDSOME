package com.kosa.domain.member;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * CouponDetailVO
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
public class CouponDetailVO {
	
	private String cpid;  //쿠폰아이디
	private int eno;  // 이벤트번호
	private String mid;  // 회원아이디
	private Timestamp issuedate;  // 쿠폰발행날짜
	private Timestamp cpexpiredate;  // 쿠폰만료날짜
	private Timestamp cpusedate;  // 쿠폰사용잘짜
	private int cpstatus;  // 쿠폰상태

}
