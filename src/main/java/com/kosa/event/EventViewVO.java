package com.kosa.event;
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
 * 수정일              수정자                   수정내용
 * ----------  --------    ---------------------------
 * 2022.10.18   김민규                   최초 생성 
 * </pre>
 */

@Getter
@Setter
@ToString

public class EventViewVO {
	private String etitle;  // 이벤트제목
	private Timestamp eissuedate; // 이벤트 시작날짜
	private Timestamp eexpiredate;  // 이벤트종료날짜
	private String eimg;  // 이벤트이미지
}
