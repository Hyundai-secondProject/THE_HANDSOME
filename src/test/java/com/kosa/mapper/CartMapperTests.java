package com.kosa.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kosa.domain.member.CartVO;

import lombok.extern.log4j.Log4j;

/**
 * @author 김민찬
 * @since 2022.10.17
 * @version 1.0
 * 
 * <pre>
 * 수정일                      수정자                   수정내용
 * ----------  --------    ---------------------------
 * 2022.10.17     김민찬              cart관련 crud 생성
 * </pre>
 */

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class CartMapperTests {
	
	@Autowired
	private CartMapper mapper;
	
	@Test
	public void test() {
		log.info("test중입니다");
	}
	
	@Test
	public void selectTest() {
		log.info("test중입니다");
//		회원 아이디 입력
		mapper.selectTest("ehfhfh1313").forEach(mapper -> log.info(mapper));
	}
	
	@Test
	public void testGetList2() {
		for(  CartVO  cart:mapper.selectTest("ehfhfh1313") ) {
			log.info(cart);
		}
	}
	
	// insert 테스트 fk이므로 부모 데이터 값 필요
	@Test
	public void insertTest() {
		CartVO cart = new CartVO();
		cart.setMid("ehfhfh1313");	// fk 멤버테이블에 이 값이 있어야함
		cart.setPsid("psidN123Wstock");  // fk product_stock 테이블이 이 값이 있어야함
		cart.setPquantity(3);
		mapper.insertTest(cart);
	}
	
	@Test
	public void delete() {
		mapper.delete("ehfhfh1313", "psidN123Wstock"); // fk 멤버테이블에 이 값이 있어야함, product_stock 테이블이 이 값이 있어야함
	}
	
	@Test
	public void update() {
		mapper.update("ehfhfh1313", "psidN123Wstock", 4);  // fk 멤버테이블에 이 값이 있어야함, product_stock 테이블이 이 값이 있어야함
	}

}
