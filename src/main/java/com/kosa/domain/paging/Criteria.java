package com.kosa.domain.paging;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Criteria {
	private int pageNum;
	private int amount;

	private String type;
	private String keyword;

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
