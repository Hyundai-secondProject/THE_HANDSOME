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
	private String etitle;  // �씠踰ㅽ듃�젣紐�
	private Timestamp eissuedate; // �씠踰ㅽ듃 �떆�옉�궇吏�
	private Timestamp eexpiredate;  // �씠踰ㅽ듃醫낅즺�궇吏�
	private String eimg;  // �씠踰ㅽ듃�씠誘몄�
}
