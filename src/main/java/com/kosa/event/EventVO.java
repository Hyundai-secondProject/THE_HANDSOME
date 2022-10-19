package com.kosa.event;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * 
 * EventVO
 * @author 공통
 * @since 2022.10.13
 * @version 1.0
 * <pre>
 * 수정일              수정자                   수정내용
 * ----------  --------    ---------------------------
 * 2022.10.13     공통              최초 생성 
 * </pre>
 */


@Getter
@Setter
@ToString
public class EventVO {
	
	private int eno; // 이벤트번호
	private String etitle;  // 이벤트제목
	private String econtent;  // 이벤트내용
	private Timestamp eissuedate; // 이벤트 시작날짜
	private Timestamp eexpiredate;  // 이벤트종료날짜
	private int elimitcount;  // 이벤트한정수량
	private int ecount;  // 이벤트 재고 수량
	private String eimg;  // 이벤트이미지
	private int ediscount;  // 이벤트할인
	private int estatus;  // 이벤트상태
	private String edetailimg;  // 이벤트상세이미지
	private String ecoupontitle;  // 이벤트쿠폰제목

}
