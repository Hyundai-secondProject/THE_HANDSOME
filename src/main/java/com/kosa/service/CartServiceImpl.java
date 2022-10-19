package com.kosa.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kosa.domain.member.CartVO;
import com.kosa.mapper.CartMapper;

import lombok.RequiredArgsConstructor;
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

@Log4j
@Service
@RequiredArgsConstructor
public class CartServiceImpl implements CartService {
    
    @Autowired
    private CartMapper cartMapper;
    
    @Override
    public void putProduct(CartVO cart) {

        cartMapper.insert(cart);
    }
    @Override
    public List<CartVO> getProducts(String mid) {
        return cartMapper.selectList(mid);
    }
    @Override
    public void deleteProduct(CartVO cart) {
        cartMapper.delete(cart.getMid(), cart.getPsid());
    }
    
    @Override
    public void updateQuantity(CartVO cart) {
        cartMapper.update(cart.getMid(), cart.getPsid(), cart.getPquantity());
    }

}
