package com.kosa.domain.member;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * MemberVO
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
public class MemberVO {
	
	private String mid;	// 회원아이디
	private String mpassword;  // 회원비밀번호
	private String mname;  // 회원이름
	private String meamil;  // 회원이메일
	private String mphone; // 휴대폰번호
	private String mtel;  //  전화번호
	private String mzipcode;  // 우편번호
	private String maddress1;  // 주소1
	private String maddress2;  // 주소2
	private Date mbirth;   // 생년월일
	private int mgender;   // 성별
	private String mrefid;  // 추천인
	private String mlogintype;  // 로그인 유형
	private int mtosno;  // 사용자정보제공
	private int menabled;  // ? 활성화 여부 휴면계정...
	private String mrole;  // 유저 or admin
	private int mgrade;   // 회원등급
	private int mmileage;   // 마일리지
	
}
