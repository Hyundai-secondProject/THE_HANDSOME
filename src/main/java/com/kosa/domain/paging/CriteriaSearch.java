package com.kosa.domain.paging;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * CriteriaSearch
 * @author 김민규
 * @since 2022.10.19
 * @version 1.0
 * 
 * <pre>
 * 수정일              수정자                   수정내용
 * ----------  --------    ---------------------------
 * 2022.10.19    김민규                 최초 생성
 * </pre>
 */

@Getter
@Setter
@ToString
public class CriteriaSearch {

		private int pageNum;
		private int amount;
		
		private String keyword;
		
		public CriteriaSearch() {
			this(1,5);
		}
		public CriteriaSearch(int pageNum, int amount) {
			this.pageNum = pageNum;
			this.amount = amount;
		}
}
