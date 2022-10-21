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
 * </pre>
 */
public interface MemberService {

	public String join(MemberVO membervo);
	public MemberVO passwordCheck(String mid, String mpassword);
}
