package com.kosa.service;

import java.util.List;

import com.kosa.domain.member.CartVO;

/**
 * CartService
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

public interface CartService {
    
    // 바로구매
    public List<CartVO> directbuy(String psid);
    
    // insert
    public void putProduct(CartVO cart);
    
    // select
    public List<CartVO> getProducts(String mid);
    
    // select
    public List<CartVO> getProductsWithEntryNum(String mid, List<Integer> entryNum);
    
    // delete
    public void deleteProduct(CartVO cart);
    
    // delete
    public void deleteProducts(String mid, List<String> psidList);
    
    // update
    public void updateQuantity(CartVO cart);
    
    // 카트중복체크 select
    public int checkCart(CartVO cart);
    
    // 재고확인 
    public int checkStock(CartVO cart);
    
    
    
}
