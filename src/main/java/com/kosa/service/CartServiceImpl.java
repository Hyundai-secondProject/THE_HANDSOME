package com.kosa.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kosa.domain.member.CartVO;
import com.kosa.mapper.CartMapper;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

/**
 * CartServiceImpl
 * @author 김민찬
 * @since 2022.10.17
 * @version 1.0
 * 
 * <pre>
 * 수정일                     수정자              수정내용
 * ----------  --------       -----------------------------
 * 2022.10.17     김민찬               cart관련 crud 생성
 * 2022.10.23     김민찬               선택항목 반환 구현
 * 2022.10.25     김민찬               선택항복 삭제 구현
 * 2022.10.26     김민찬               중복체크 구현
 * 2022.10.27     김민찬               재고 체크 구현
 * 2022.10.28     김민찬               바로주문 기능 구현
 * </pre>
 */

@Log4j
@Service
@RequiredArgsConstructor
public class CartServiceImpl implements CartService {
    
    @Autowired
    private CartMapper cartMapper;
    
    @Override
    public List<CartVO> directbuy(String psid){
        return cartMapper.directbuy(psid);
    }
    
    @Override
    public void putProduct(CartVO cart) {

        cartMapper.insert(cart);
    }
    @Override
    public List<CartVO> getProducts(String mid) {
        return cartMapper.selectList(mid);
    }
    
    @Override
    public List<CartVO> getProductsWithEntryNum(String mid, List<Integer> entryNum) {
        return cartMapper.selectListWithEntryNum(mid, entryNum);
    }
    
    
    @Override
    public void deleteProduct(CartVO cart) {
        cartMapper.delete(cart.getMid(), cart.getPsid());
    }
    
    @Override
    public void deleteProducts(String mid, List<String> psidList) {
        cartMapper.deleteProducts(mid, psidList);
    }
    
    @Override
    public void updateQuantity(CartVO cart) {
        cartMapper.update(cart.getMid(), cart.getPsid(), cart.getPquantity());
    }
    
    @Override
    public int checkCart(CartVO cart) {
        return cartMapper.checkCart(cart.getMid(), cart.getPsid());
    }
    
    @Override
    public int checkStock(CartVO cart) {
        return cartMapper.checkStock(cart.getMid(), cart.getPsid());
    }

}
