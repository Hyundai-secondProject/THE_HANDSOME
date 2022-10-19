package com.kosa.mapper;

import java.util.List;

/**
 * CartMapper
 * @author 김민찬
 * @since 2022.10.13
 * @version 1.0
 * 
 * <pre>
 * 수정일                      수정자                   수정내용
 * ----------  --------    ---------------------------
 * 2022.10.13    김민찬                 최초 생성
 * </pre>
 */

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.kosa.domain.member.CartVO;

/**
 * @author 김민찬
 * @since 2022.10.17
 * @version 1.0
 * 
 * <pre>
 * 수정일                      수정자                   수정내용
 * ----------  --------    ---------------------------
 * 2022.10.17     김민찬              cart관련 crud 생성
 * </pre>
 */

@Mapper
public interface CartMapper {
	
	public List<CartVO> selectList(String mid); // select 
	public void insert(CartVO cart); // insert 
	// 스프링 mybatis에서는 param이 1개밖에 들어가지 않아서 여러개를 할때는 @Param을 사용한다
	public void delete(@Param("mid") String mid, @Param("psid") String psid); 
	public void update(@Param("mid") String mid, @Param("psid") String psid, @Param("pquantity") long pquantity); 

}