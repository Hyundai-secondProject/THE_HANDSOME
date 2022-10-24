package com.kosa.service;

import java.util.List;

import com.kosa.domain.member.LikesVO;
import com.kosa.domain.paging.Criteria;
import com.kosa.domain.paging.WishPageDTO;

public interface MyWishService {
	public int insertLike(String pid, String mid);
	public int deleteLike(String pid, String mid);
	public WishPageDTO getLikeProducts (Criteria cri,String mid);
	public int countLikes(String mid);
	public boolean checkLike(String pid, String mid);
}
