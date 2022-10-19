package com.kosa.domain.event;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * 
 * EventVO
 * @author 怨듯넻
 * @since 2022.10.13
 * @version 1.0
 * <pre>
 * �닔�젙�씪              �닔�젙�옄                   �닔�젙�궡�슜
 * ----------  --------    ---------------------------
 * 2022.10.13     怨듯넻              理쒖큹 �깮�꽦 
 * </pre>
 */


@Getter
@Setter
@ToString
public class EventVO {
	
	private int eno; // �씠踰ㅽ듃踰덊샇
	private String etitle;  // �씠踰ㅽ듃�젣紐�
	private String econtent;  // �씠踰ㅽ듃�궡�슜
	private Timestamp eissuedate; // �씠踰ㅽ듃 �떆�옉�궇吏�
	private Timestamp eexpiredate;  // �씠踰ㅽ듃醫낅즺�궇吏�
	private int elimitcount;  // �씠踰ㅽ듃�븳�젙�닔�웾
	private int ecount;  // �씠踰ㅽ듃 �옱怨� �닔�웾
	private String eimg;  // �씠踰ㅽ듃�씠誘몄�
	private int ediscount;  // �씠踰ㅽ듃�븷�씤
	private int estatus;  // �씠踰ㅽ듃�긽�깭
	private String edetailimg;  // �씠踰ㅽ듃�긽�꽭�씠誘몄�
	private String ecoupontitle;  // �씠踰ㅽ듃荑좏룿�젣紐�

}
