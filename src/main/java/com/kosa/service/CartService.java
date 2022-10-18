package com.kosa.service;

import java.util.List;

import com.kosa.domain.member.CartVO;

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

public interface CartService {
    
    // insert
    public void putProduct(CartVO cart);
    
    // select
    public List<CartVO> getProducts(String mid);
    
    // delete
    public void deleteProduct(CartVO cart);
    
    // update
    public void updateQuantity(CartVO cart);
    
    
    
    
}