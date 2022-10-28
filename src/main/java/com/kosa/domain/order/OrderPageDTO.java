package com.kosa.domain.order;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;

/**
 * OrderPageDTO
 * @author 공통
 * @since 2022.10.21
 * @version 1.0
 * 
 * <pre>
 * 수정일                수정자                   수정내용
 * ----------  --------    ---------------------------
 * 2022.10.21    장주연              최초 생성
 * </pre>
 */

@Data
@AllArgsConstructor
@Getter
public class OrderPageDTO {
	private int cnt;   // 전체 데이터 갯수
	private List<OrdersVO> list; // 주문 번호 기준 리스트
}
