package com.kosa.domain.event;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
@Getter
@Setter
@ToString
public class CouponDetailViewVO {
	
	private String ecoupontitle;
	private String cpid;
	private String econtent;
	private int ediscount;
	private Timestamp cpissuedate; 
	private Timestamp cpexpiredate;
	private Timestamp cpusedate;
	
}
