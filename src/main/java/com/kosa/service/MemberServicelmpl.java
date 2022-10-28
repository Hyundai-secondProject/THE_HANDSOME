package com.kosa.service;

import org.springframework.transaction.annotation.Transactional;

import com.kosa.domain.member.MemberVO;
import com.kosa.mapper.MemberMapper;

import lombok.RequiredArgsConstructor;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
/**
 * @author 신기원
 * @since 2022.10.14
 * @version 1.0
 * 
 * <pre>
 * 수정일                    수정자                   수정내용
 * ----------  --------    ---------------------------
 * 2022.10.14    신기원                	 최초 생성
 * 2022.10.18    신기원                 	패스워드 암호화, 입력 값과 DB 값 일치 확인
 * 2022.10.21	  신기원		이메일 중복확인
 * 2022.10.27	신기원		회원정보 수정 기능
 * 2022.10.27     장주연              멤버 + 멤버별 쿠폰 조회 메서드 추가
 * </pre>
 */
@Service
@Transactional(readOnly=true)
@RequiredArgsConstructor
public class MemberServicelmpl implements MemberService {

	private final MemberMapper memberMapper;
	
//	BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
	//패스워드 암호화를 위한 스프링 빈 객체
	private final PasswordEncoder encoder;
	
	//회원 가입 메소드 아이디 값을 반환
	@Transactional
	@Override
	public String join(MemberVO memberVO) {
		
		//입력 받은 패스워드 암호화
		memberVO.setMpassword(encoder.encode(memberVO.getMpassword()));
		
		memberMapper.join(memberVO);
		return memberVO.getMid();
	}
	
	//입력 받은 패스워드와 DB의 패스워드 체크 메서드
	@Override
	public MemberVO passwordCheck(String mid, String mpassword) {
		MemberVO memberVO =  memberMapper.findById(mid);
		if(encoder.matches(mpassword, memberVO.getMpassword())) return memberVO;
		else return null;
	}

	//가입하려는 이메일 중복확인(중복되면 true, 없으면 false 반환)
	@Override
	public boolean isDulpId(String mid) {
		
		MemberVO uniqueMember = memberMapper.findById(mid);
		if(uniqueMember != null) {
			return true;
		}else {
			return false;	
		}
	}

	//회원 정보 수정 성공시 SUCCESS 문자열을 반환하고 Controller와 ajax 통신 사이에 결과 비교를 위해 사용
	@Override
	public String memberInfoChange(MemberVO memberVo) {
		
		memberVo.setMpassword(encoder.encode(memberVo.getMpassword()));
		int result = memberMapper.infoChange(memberVo);
		if(result > 0) return "SUCCESS";
		else return null;
	}
	
	// 멤버 데이터 가져오기
	@Override
	public MemberVO getMember(String mid) {
		return memberMapper.getMemberInfo(mid);
	}

}
