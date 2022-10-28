package com.kosa.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.kosa.domain.member.LikesVO;
import com.kosa.domain.paging.Criteria;

/**
 * MyWishMapper
 * 
 * @author 공통
 * @since 2022.10.17
 * @version 1.0
 * 
 *          <pre>
 * 수정일              수정자                   수정내용
 * ----------  --------    ---------------------------
 * 2022.10.19   박서은              최초 생성
 * 2022.10.19   박서은              삽입 , 삭제 mapper 추가
 * 2022.10.20   박서은              리스트 띄우기 mapper 추가
 *          </pre>
 */

@Mapper
// 제품 같아도 색상이 다르면 제품이 다르게 뜸
public interface MyWishMapper {
	// 위시리스트 가져오기
	public List<LikesVO> selectLikeProducts(
			@Param("cri") Criteria cri,
			@Param("mid") String mid
			); // 멤버 id 로 위시리스트 가져오기
	
	// 위시 삽입
	public int insertProduct(
			@Param("pid") String pid,
			@Param("mid") String mid			
			); // 좋아요 추가
	
	// 위시 삭제
	public int deleteProduct(
			@Param("pid") String pid,
			@Param("mid") String mid
			); // 좋아요 삭제
	
	// 위시 갯수
	public int checkLike(
			@Param("pid") String pid,
			@Param("mid") String mid
			); 
	
	public int countLikes(String mid);
}
