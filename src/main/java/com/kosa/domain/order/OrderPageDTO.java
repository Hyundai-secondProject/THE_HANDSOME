package com.kosa.domain.order;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;

@Data
@AllArgsConstructor
@Getter
public class OrderPageDTO {
	private int cnt;
	private List<OrdersVO> list;
}
