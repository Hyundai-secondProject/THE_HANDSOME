package com.kosa.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;


import com.kosa.domain.member.LikesVO;


@Mapper
// 제품 같아도 색상이 다르면 제품이 다르게 뜸
public interface MyWishMapper {
	public List<LikesVO> selectLikeProducts(String mid); // 멤버 id 로 위시리스트 가져오기
	
	public int insertProduct(
			@Param("pid") String pid,
			@Param("mid") String mid			
			); // 좋아요 추가
	
	public int deleteProduct(
			@Param("pid") String pid,
			@Param("mid") String mid
			); // 좋아요 삭제
	// public int selectLikePid(LikesVO likes); // 좋아요 선택 -> 선택 삭제
	// public List<LikesVO> selectLikeProduct(int pid); // 제품 별로 하나 말고 색상이면 여러개도 들어갈 수 있음
	
	public int countLikes(String mid);
}
