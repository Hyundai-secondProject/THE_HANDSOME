package com.kosa.service;

import com.kosa.domain.member.MemberVO;
/**
 * @author 신기원
 * @since 2022.10.14
 * @version 1.0
 * 
 * <pre>
 * 수정일              수정자                   수정내용
 * ----------  --------    ---------------------------
 * 2022.10.14     신기원              최초 생성
 * 2022.10.27     장주연              멤버 + 멤버별 쿠폰 조회 메서드 추가
 * </pre>
 */
public interface MemberService {

	//회원 가입
	public String join(MemberVO membervo);
	
	//패스워드 체크
	public MemberVO passwordCheck(String mid, String mpassword);
	
	//회원ID 중복 검사
	public boolean isDulpId(String id);
	
	//회원 정보 수정
	public String memberInfoChange(MemberVO memberVo);
	
	//쿠폰과 함께 조회
	public MemberVO getMember(String mid);
}
