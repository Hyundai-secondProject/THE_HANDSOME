package com.kosa.service;

import org.springframework.transaction.annotation.Transactional;

import com.kosa.domain.member.MemberVO;
import com.kosa.mapper.MemberMapper;

import lombok.RequiredArgsConstructor;

import org.springframework.stereotype.Service;
/**
 * @author 신기원
 * @since 2022.10.14
 * @version 1.0
 * 
 * <pre>
 * 수정일              수정자                   수정내용
 * ----------  --------    ---------------------------
 * 2022.10.14     신기원              최초 생성
 * </pre>
 */
@Service
@Transactional(readOnly=true)
@RequiredArgsConstructor
public class MemberServicelmpl implements MemberService {

	private final MemberMapper memberMapper;
	
	@Transactional
	@Override
	public String join(MemberVO memberVO) {
		memberMapper.join(memberVO);
		return memberVO.getMid();
	}

	@Override
	public MemberVO Login(String mid, String mpassword) {
		MemberVO memberVO =  memberMapper.findById(mid);
		if(! memberVO.getMpassword().equals(mpassword)) return null;
		else return memberVO;
	}

}
