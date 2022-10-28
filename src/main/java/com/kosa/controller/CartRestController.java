package com.kosa.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.kosa.domain.member.CartVO;
import com.kosa.service.CartService;

import lombok.extern.log4j.Log4j;

/**
 * CartRestController
 * @author 김민찬
 * @since 2022.10.20
 * @version 1.0
 * 
 * <pre>
 * 수정일               수정자                      수정내용
 * ----------  -------------   --------------------------------------------------
 * 2022.10.20   김민찬                     최초 생성
 * 2022.10.21   김민찬, 장주연         cart목록반환       
 * 2022.10.23   김민찬, 장주연         cart에서 ordersheet으로 선택값만 보내기
 * 2022.10.24   김민찬                     삭제(단일)기능 구현
 * 2022.10.25   김민찬                     삭제(다중)기능, 장바구니 추가, 수량변경 기능 구현
 * 2022.10.25   장주연                     결합도를 낮추기위한 코드 분리(ordersheet 코드) 
 * 2022.10.26   김민찬                     장바구니 추가 시 이미 있을경우 처리
 * 2022.10.27   김민찬                     헤더의 장바구니 개수 반영, 바로주문 기능 구현
 * </pre>
 */

@CrossOrigin
@RequestMapping("/cartAjax")
@RestController
@Log4j
public class CartRestController {

    @Autowired
    private CartService service;
    
    
    // 바로주문
    @GetMapping("/directbuy/{psid}")
    public List<CartVO> directbuy(@PathVariable("psid") String psid) {
        
       System.out.println(psid);
       return service.directbuy(psid);
   }
    
    // 카트목록
    // post 방식으로 하는 대신 get 방식으로 한뒤 url에서값을가져와 사용
    @GetMapping("/{mid}")
    public List<CartVO> getCartGET(@PathVariable("mid") String mid) {
        
        
         //url에 .(dot)이 있는경우 받아오지 못한다
        System.out.println(mid);
        mid=mid.replace(',', '.');

        System.out.println(mid);
        return service.getProducts(mid);
    }

    
    // 장바구니에 상품 추가
    @GetMapping("/addtocart/{mid}/{psid}/{qty}")
    public String addToCart(@PathVariable("mid") String mid,
                                    @PathVariable("psid") String psid,
                                    @PathVariable("qty") int qty) {
        CartVO cart = new CartVO();
        cart.setMid(mid);
        cart.setPsid(psid);
        cart.setPquantity(qty);
        if(service.checkCart(cart)>0) {
            return "invalid";
        }
        service.putProduct(cart);
        return "valid";
    }

    // 삭제
    @GetMapping("/RemoveProduct/{mid}/{psid}")
    public List<CartVO> RemoveProduct(@PathVariable("mid") String mid,
                                        @PathVariable("psid") String psid) {
        CartVO cart = new CartVO();
        cart.setMid(mid);
        cart.setPsid(psid);
        service.deleteProduct(cart);
        return service.getProducts(mid);
    }
    
    // 선택항목 삭제
    @GetMapping("selectRemove/{mid}/{entryNum}")
    public void selectRemove(@PathVariable("mid") String mid,
                                @PathVariable("entryNum") String str) {
        // ,(comma)는 URL에서 %2C로 대체되고 그 URL을 받아쓸때 다시 , 로 반환된다
        System.out.println(str);
        if (str == "")System.out.println("비어있습니다");
            
        StringTokenizer st = new StringTokenizer(str, ",");
        List<Integer> entryNum = new ArrayList<>();
        while (st.hasMoreTokens()) {
            entryNum.add(Integer.parseInt(st.nextToken()) + 1); // rownum은 1부터시작
        }
        System.out.println(entryNum);
        List<CartVO> cart =service.getProductsWithEntryNum(mid, entryNum);
        List<String> psidList = new ArrayList<>();
        for(CartVO list : cart) {
            psidList.add(list.getPsid());
        }
        System.out.println(psidList);
        service.deleteProducts(mid, psidList);
    }
    
    // 수량체크
    @GetMapping("checkStock/{mid}/{psid}/{qty}")
    public String checkStock(@PathVariable("mid") String mid,
                                @PathVariable("psid") String psid,
                                @PathVariable("qty") int qty) {
        System.out.println(mid + psid + qty);
        CartVO cart = new CartVO();
        cart.setMid(mid);
        cart.setPsid(psid);
        System.out.println(service.checkStock(cart));
        // 재고보다 장바구니 양이 많으면
        if(qty< service.checkStock(cart)) {
            return "valid";
        }else {
            return "invalid";
        }
    }   
    
    // 수량변경
    @GetMapping("updateQuantity/{mid}/{psid}/{newCartQuantity}")
    public void updateQuantity(@PathVariable("mid") String mid,
                                @PathVariable("psid") String psid,
                                @PathVariable("newCartQuantity") int qty) {
        System.out.println(mid + psid + qty);
        CartVO cart = new CartVO();
        
        cart.setMid(mid);
        cart.setPsid(psid);
        cart.setPquantity(qty);
        
        service.updateQuantity(cart);  
    }   
    
    
    // 헤더의 카트 개수 출력
    @GetMapping("cartCount/{mid}")
    public String cartCount(@PathVariable("mid") String mid) {

         //url에 .(dot)이 있는경우 받아오지 못한다
        System.out.println(mid);
        mid=mid.replace(',', '.');
        List<CartVO> list = service.getProducts(mid);
        return ""+list.size();
    }   
}
