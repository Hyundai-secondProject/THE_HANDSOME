package com.kosa.domain.event;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
@Getter
@Setter
@ToString
/**
 * CouponDetailVO
 * @author 공통
 * @since 2022.10.13
 * @version 1.0
 * 
 * <pre>
 * 수정일              수정자                   수정내용
 * ----------  --------    ---------------------------
 * 2022.10.25     김민규               	최초 생성
 *
 * </pre>
 */
public class CouponDetailViewVO {
	
	private String ecoupontitle;
	private String cpid;
	private String econtent;
	private int ediscount;
	private Timestamp cpissuedate; 
	private Timestamp cpexpiredate;
	private Timestamp cpusedate;
	
}
