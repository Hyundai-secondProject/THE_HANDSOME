package com.kosa.domain.event;
/**
 * 
 * EventDetailViewVO
 * @author 김민규
 * @since 2022.10.20
 * @version 1.0
 * <pre>
 * 수정일		수정자			수정 내용
 * ----------  --------    ---------------------------
 * 2022.10.20   김민규                   최초 생성 
 * </pre>
 */
import java.sql.Timestamp;



import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class EventDetailViewVO {
	private int eno;
	private String etitle;  
	private Timestamp eissuedate; 
	private Timestamp eexpiredate;
	private String edetailimg; 

}
