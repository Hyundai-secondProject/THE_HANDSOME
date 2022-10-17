package com.kosa.mapper;

import java.util.List;

/**
 * CartMapper
 * @author 김민찬
 * @since 2022.10.13
 * @version 1.0
 * 
 * <pre>
 * 수정일                      수정자                   수정내용
 * ----------  --------    ---------------------------
 * 2022.10.13    김민찬                 최초 생성
 * </pre>
 */

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.kosa.domain.member.CartVO;



@Mapper
public interface CartMapper {
		
//	@Select("select * from cart")     // xml 문에서 sql문 처리했으니
	public List<CartVO> selectTest(); // select 테스트
	public void insertTest(CartVO cart); // insert 테스트
	// 스프링 mybatis에서는 param이 1개밖에 들어가지 않아서 여러개를 할때는 @Param을 사용한다
	public void delete(@Param("mid") String mid, @Param("psid") String psid); 
	public void update(@Param("mid") String mid, @Param("psid") String psid, @Param("pquantity") long pquantity); 

}

//public int insertProduct(ShoppingBag shoppingBag);
//public int updateProduct(ShoppingBag shoppingBag);
//public int deleteProduct(int sbno);
//public int selectProductNo(ShoppingBag shoppingBag);
//public List<ShoppingBag> selectShoppingProducts(int mno);
//public ShoppingBag selectShoppingProduct(int sbno);