package com.kosa.domain.member;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
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
 * 수정일                    수정자                   수정내용
 * ----------  --------    ---------------------------
 * 2022.10.13      공통             	최초 생성
 * 2022.10.20	신기원		컬럼 주석 수정
 * </pre>
 */

@Getter
@Setter
@ToString
public class MemberVO{

	private String mid;	// 회원아이디
	private String mpassword;  // 회원비밀번호
	private String mname;  // 회원이름
	private String memail;  // 회원이메일
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
	private int menabled;  // 계정 활성화 여부
	private String mrole;  // member or admin
	private int mgrade;   // 회원등급
	private int mmileage;   // 마일리지
	
	
	
}
