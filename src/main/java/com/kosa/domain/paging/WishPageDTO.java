package com.kosa.domain.paging;

import java.util.List;

import com.kosa.domain.member.LikesVO;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
/**
 * MyWishController
 * 
 * @author 공통
 * @since 2022.10.17
 * @version 1.0
 * 
 *          <pre>
 * 수정일              수정자                   수정내용
 * ----------  --------    ---------------------------
 * 2022.10.20   박서은              최초 생성
 * 2022.10.21   박서은              ajax로 위시 리스트 띄우기
 *          </pre>
 */
@Data
@AllArgsConstructor
@Getter
public class WishPageDTO {
	private int totalCnt;
	private List<LikesVO> list;
}
