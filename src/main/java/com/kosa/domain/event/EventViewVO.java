package com.kosa.domain.event;
import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * 
 * EventViewVO
 * @author 김민규
 * @since 2022.10.18
 * @version 1.0
 * <pre>
 * 수정일		수정자			수정 내용
 * ----------  --------    ---------------------------
 * 2022.10.18   김민규                   최초 생성 
 * </pre>
 */

@Getter
@Setter
@ToString

public class EventViewVO {
	private int eno;
	private String etitle;  // 이벤트 제목
	private Timestamp eissuedate; // 이벤트 시작일자
	private Timestamp eexpiredate;  // 이벤트 종료일자
	private String eimg;  // 이벤트 이미지
}
