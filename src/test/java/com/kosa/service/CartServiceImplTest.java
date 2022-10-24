package com.kosa.service;

import java.util.ArrayList;
import java.util.List;

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
 * 수정일                      수정자                  수정내용
 * ----------  --------    ---------------------------
 * 2022.10.17     김민찬              cart관련 crud 생성
 * </pre>
 */

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml", "file:src/main/webapp/WEB-INF/spring/security-context.xml"})
@Log4j
public class CartServiceImplTest {
    
    @Autowired
    public CartService cartService;
    
    @Test
    public void selectTest() {
        // 아이디 받기
        cartService.getProducts("ehfhfh1313");
    }
    
    @Test
    public void selectWithEntryNumTest() {
        // 아이디 받기
        List<Integer> entryNum = new ArrayList<>();
        entryNum.add(1);
        entryNum.add(3);
        cartService.getProductsWithEntryNum("ehfhfh1313", entryNum);
    }
    
    
    @Test
    public void putTest() {
        // 아이디 받기
        CartVO cart= new CartVO();
        
        //어디선가 받은값들
        cart.setMid("ehfhfh1313");
        cart.setPsid("psidN123Wstock");
        cart.setPquantity(10);
        cartService.putProduct(cart);
    }
    
    @Test
    public void updateTest() {
        CartVO cart = new CartVO();
        cart.setMid("ehfhfh1313");
        cart.setPsid("psidN123Wstock");
        cart.setPquantity(5);
        cartService.updateQuantity(cart);
    }
    
    @Test
    public void deleteTest() {
        CartVO cart = new CartVO();
        cart.setMid("ehfhfh1313");
        cart.setPsid("psidN123Wstock");
        cartService.deleteProduct(cart);
    }
    

}
