package com.kosa.domain.event;
import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * 
 * EventViewVO
 * @author 源�誘쇨퇋
 * @since 2022.10.18
 * @version 1.0
 * <pre>
 * �닔�젙�씪              �닔�젙�옄                   �닔�젙�궡�슜
 * ----------  --------    ---------------------------
 * 2022.10.18   源�誘쇨퇋                   理쒖큹 �깮�꽦 
 * </pre>
 */

@Getter
@Setter
@ToString

public class EventViewVO {
	private String etitle;  // �씠踰ㅽ듃�젣紐�
	private Timestamp eissuedate; // �씠踰ㅽ듃 �떆�옉�궇吏�
	private Timestamp eexpiredate;  // �씠踰ㅽ듃醫낅즺�궇吏�
	private String eimg;  // �씠踰ㅽ듃�씠誘몄�
}
