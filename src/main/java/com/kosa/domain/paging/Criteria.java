package com.kosa.domain.paging;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Criteria {
	// 페이지 처리를 위한 변수
	private int pageNum; // 현재 페이지
	private int amount; // 한 페이지에 표시되는 데이터의 개수

	// 검색을 위한 변수
	private String type; // 검색할 항목을 저장 - key
	private String bkeyword; 
	private String ckeyword;
	private int startp;
	private int endp;
	//private String sort;

	

	// type이 없을 경우 빈 배열을 전송
	public String[] getTypeArr() {
		// 삼항식[Condition Operator] ? TURE : FALSE
		return (type == null) ? new String[] {} : type.split("");
	}// end getType..

	public Criteria() {
		this(1, 10);
	}// end cri...

	public Criteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}// end Cri
}//end class
