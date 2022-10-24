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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.kosa.domain.member.CartVO;
import com.kosa.service.CartService;

import lombok.extern.log4j.Log4j;

@CrossOrigin
@RequestMapping("/cartAjax")
@RestController
@Log4j
public class CartRestController {

    @Autowired
    private CartService service;

    @PostMapping("/11")
    public List<CartVO> getCartPost(CartVO cart) {
        return service.getProducts("ehfhfh1313");
    }

    // post 방식으로 하는 대신 get 방식으로 한뒤 url에서값을가져와 사용 -> 주연도움
    @GetMapping("/{mid}")
    public List<CartVO> getCartGET(@PathVariable("mid") String mid) {
        System.out.println(mid);
        return service.getProducts(mid);
    }

    // 업데이트
    @GetMapping("/RemoveProduct/{mid}/{psid}")
    public List<CartVO> RemoveProduct(@PathVariable("mid") String mid,
                                        @PathVariable("psid") String psid) {
        System.out.println("여기오는지 테스느");
        System.out.println(psid);
        CartVO cart = new CartVO();
        cart.setMid(mid);
        cart.setPsid(psid);
        service.deleteProduct(cart);
        return service.getProducts(mid);

    }

    /*
     * @GetMapping("/calculation/{mid}/{entryPkList}")
     * public List<CartVO> getCartGet3(@PathVariable("entryPkList") String str){
     * 
     * System.out.println(str);
     * StringTokenizer st = new StringTokenizer(str,",");
     * List<Integer> entryPkList= new ArrayList<>();
     * while(st.hasMoreTokens()) {
     * entryPkList.add(Integer.parseInt(st.nextToken())+1); // rownum은 1부터시작
     * }
     * System.out.println(entryPkList);
     * List<CartVO> list = service.getProductsWithEntryNum("ehfhfh1313",
     * entryPkList);
     * 
     * // 계산하기
     * 
     * subTotal
     * deliveryCost
     * totalPrice
     * 
     * return list;
     * }
     */

    @GetMapping("checkoutCartView/{mid}/{entryNum}")
    public List<CartVO> getCartListGET(@PathVariable("entryNum") String str) {
        // ,(comma)는 URL에서 %2C로 대체되고 그 URL을 받아쓸때 다시 , 로 반환된다
        System.out.println(str);
        if (str == "")
            return service.getProducts("ehfhfh1313");
        StringTokenizer st = new StringTokenizer(str, ",");
        List<Integer> entryNum = new ArrayList<>();
        while (st.hasMoreTokens()) {
            entryNum.add(Integer.parseInt(st.nextToken()) + 1); // rownum은 1부터시작
        }
        System.out.println(entryNum);
        return service.getProductsWithEntryNum("ehfhfh1313", entryNum);
    }

}
