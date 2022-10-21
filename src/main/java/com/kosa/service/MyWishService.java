package com.kosa.service;

import java.util.List;

import com.kosa.domain.member.LikesVO;

public interface MyWishService {
	public int insertLike(String pid, String mid);
	public int deleteLike(String pid, String mid);
	public List<LikesVO> getLikeProducts (String mid);
	public int countLikes(String mid);
}
