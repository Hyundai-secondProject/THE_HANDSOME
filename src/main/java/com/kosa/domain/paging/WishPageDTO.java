package com.kosa.domain.paging;

import java.util.List;

import com.kosa.domain.member.LikesVO;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;

@Data
@AllArgsConstructor
@Getter
public class WishPageDTO {
	private int totalCnt;
	private List<LikesVO> list;
}
