package com.kosa.service;

import java.util.List;

import com.kosa.domain.member.LikesVO;
import com.kosa.domain.paging.Criteria;
import com.kosa.domain.paging.WishPageDTO;
/**
 * MyWishService
 * 
 * @author 공통
 * @since 2022.10.17
 * @version 1.0
 * 
 *          <pre>
 * 수정일              수정자                   수정내용
 * ----------  --------    ---------------------------
 * 2022.10.17   박서은              최초 생성
 * 2022.10.20   박서은             삽입,삭제,갯수세기 service 추가
 * 2022.10.21   박서은              mid로 좋아요한 상품이 있는지 가져오기
 *          </pre>
 */
public interface MyWishService {
	public int insertLike(String pid, String mid); // 위시리스트 등록
	public int deleteLike(String pid, String mid); // 위시리스트 삭제
	public WishPageDTO getLikeProducts (Criteria cri,String mid); // 위시리스트 제품 가져오기
	public int countLikes(String mid); // 위시 갯수 세기
	public boolean checkLike(String pid, String mid); // 좋아요한 제품인지 체크
}
