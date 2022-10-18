package com.kosa.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

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
@Mapper
public interface MemberMapper {

	public void join(MemberVO memberVO);
	public MemberVO findById(String mid);
	
}
