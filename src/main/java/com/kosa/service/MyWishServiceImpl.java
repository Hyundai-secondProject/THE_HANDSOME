package com.kosa.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.kosa.domain.member.LikesVO;
import com.kosa.domain.paging.Criteria;
import com.kosa.domain.paging.WishPageDTO;
import com.kosa.mapper.MemberMapper;
import com.kosa.mapper.MyWishMapper;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class MyWishServiceImpl implements MyWishService {

	private final MyWishMapper mapper;
	
	@Override
	public int insertLike(String pid, String mid) {
		return mapper.insertProduct(pid,mid);
	}

	@Override
	public int deleteLike(String pid, String mid) {
		return mapper.deleteProduct(pid,mid);
	}

	@Override
	public int countLikes(String mid) {
		return mapper.countLikes(mid);
	}

	@Override
	public WishPageDTO getLikeProducts(Criteria cri, String mid) {
		// TODO Auto-generated method stub
		return new WishPageDTO(
				mapper.countLikes(mid) ,
				mapper.selectLikeProducts(cri, mid)
				);
	}

	@Override
	public boolean checkLike(String pid, String mid) {
		if (mapper.checkLike(pid, mid) >= 1) {
			return true;
		} else {
			return false;
		}
	}


}
