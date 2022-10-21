package com.kosa.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.kosa.domain.member.LikesVO;
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
	public List<LikesVO> getLikeProducts(String mid) {
		return mapper.selectLikeProducts(mid);
	}

	@Override
	public int countLikes(String mid) {
		return mapper.countLikes(mid);
	}

}
