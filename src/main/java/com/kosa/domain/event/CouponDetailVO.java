package com.kosa.domain.event;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * CouponDetailVO
 * @author 怨듯넻
 * @since 2022.10.13
 * @version 1.0
 * 
 * <pre>
 * �닔�젙�씪              �닔�젙�옄                   �닔�젙�궡�슜
 * ----------  --------    ---------------------------
 * 2022.10.13     怨듯넻              理쒖큹 �깮�꽦
 * </pre>
 */

@Getter
@Setter
@ToString
public class CouponDetailVO {
	
	private String cpid;  //荑좏룿�븘�씠�뵒
	private int eno;  // �씠踰ㅽ듃踰덊샇
	private String mid;  // �쉶�썝�븘�씠�뵒
	private Timestamp issuedate;  // 荑좏룿諛쒗뻾�궇吏�
	private Timestamp cpexpiredate;  // 荑좏룿留뚮즺�궇吏�
	private Timestamp cpusedate;  // 荑좏룿�궗�슜�궇吏�
	private int cpstatus;  // 荑좏룿�긽�깭

}
