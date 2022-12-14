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
 * CartMapper
 * @author 김민찬
 * @since 2022.10.17
 * @version 1.0
 * 
 * <pre>
 * 수정일                    수정자           수정내용
 * ----------  ---------    ---------------------------
 * 2022.10.17     김민찬           cart관련 crud 생성
 * 2022.10.23     김민찬           선택목록 반환 구현          
 * 2022.10.25     김민찬           선택항목 삭제 구현
 * 2022.10.26     김민찬           중복체크
 * 2022.10.27     김민찬           바로주문기능 구현
 * </pre>
 */

@Mapper
public interface CartMapper {
	
    public List<CartVO> directbuy(String psid); // 바로구매 - productdetail
	public List<CartVO> selectList(String mid); // select 
	public List<CartVO> selectListWithEntryNum(@Param("mid")String mid, @Param("entryNum") List<Integer> entryNum); // select 
	public void insert(CartVO cart); // insert 
	// 스프링 mybatis에서는 param이 1개밖에 들어가지 않아서 여러개를 할때는 @Param을 사용한다 
	public void delete(@Param("mid") String mid, @Param("psid") String psid);
	// 다중삭제
	public void deleteProducts(@Param("mid") String mid, @Param("psidList") List<String> psidList); 
	public void update(@Param("mid") String mid, @Param("psid") String psid, @Param("pquantity") long pquantity);
	// 중복체크
	public int checkCart(@Param("mid") String mid, @Param("psid") String psid); 
	// 재고확인
	public int checkStock(@Param("mid") String mid, @Param("psid") String psid); 
}