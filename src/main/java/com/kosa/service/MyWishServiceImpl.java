package com.kosa.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.kosa.domain.member.LikesVO;
import com.kosa.domain.paging.Criteria;
import com.kosa.domain.paging.WishPageDTO;
import com.kosa.mapper.MemberMapper;
import com.kosa.mapper.MyWishMapper;

import lombok.RequiredArgsConstructor;
/**
 * MyWishServiceImpl
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
@Service
@RequiredArgsConstructor
public class MyWishServiceImpl implements MyWishService {

	private final MyWishMapper mapper;
	
	// 위시 등록
	@Override
	public int insertLike(String pid, String mid) {
		return mapper.insertProduct(pid,mid);
	}

	// 위시 삭제
	@Override
	public int deleteLike(String pid, String mid) {
		return mapper.deleteProduct(pid,mid);
	}

	// 위시 갯수 세기
	@Override
	public int countLikes(String mid) {
		return mapper.countLikes(mid);
	}

	// 위시 제품 가져오기
	@Override
	public WishPageDTO getLikeProducts(Criteria cri, String mid) {
		// TODO Auto-generated method stub
		return new WishPageDTO(
				mapper.countLikes(mid) ,
				mapper.selectLikeProducts(cri, mid)
				);
	}

	// 좋아요한 제품인지 확인
	@Override
	public boolean checkLike(String pid, String mid) {
		if (mapper.checkLike(pid, mid) >= 1) {
			return true;
		} else {
			return false;
		}
	}


}
