package com.kosa.mapper;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kosa.domain.member.CartVO;

import lombok.extern.log4j.Log4j;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml", 
                        "file:src/main/webapp/WEB-INF/spring/security-context.xml"})
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
		mapper.selectList("ehfhfh1313").forEach(mapper -> log.info(mapper));
	}
	
	@Test
    public void testGetList2() {
        for(  CartVO  cart : mapper.selectList("ehfhfh1313") ) {
            log.info(cart);        
            }
        
    }
	
	
	// 카트에서 선택목록만 받아서 반환
	@Test
	public void selectListWithEntryNumTest() {
	    List<Integer> entryNum = new ArrayList<>();
	    entryNum.add(1);
	    entryNum.add(3);
	    mapper.selectListWithEntryNum("ehfhfh1313", entryNum);
	    
	}
	

	// insert 테스트 fk이므로 부모 데이터 값 필요
	@Test
	public void insertTest() {
		CartVO cart = new CartVO();
		cart.setMid("ehfhfh1313");	// fk 멤버테이블에 이 값이 있어야함
		cart.setPsid("psidN123Wstock");  // fk product_stock 테이블이 이 값이 있어야함
		cart.setPquantity(3);
		mapper.insert(cart);
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
