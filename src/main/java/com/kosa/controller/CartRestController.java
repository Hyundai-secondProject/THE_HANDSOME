package com.kosa.controller;

import java.util.List;

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
    public List<CartVO> getCartPost(CartVO cart){
        return service.getProducts("ehfhfh1313");
    }
  
    // post 방식으로 하는 대신 get 방식으로 한뒤 url에서값을가져와 사용 -> 주연도움
    @GetMapping("/{mid}")
    public List<CartVO> getCartGET(@PathVariable("mid") String mid){
        System.out.println(mid);
        return service.getProducts(mid);
    }
    
    @GetMapping("/calculation")
    public List<CartVO> getCartGet3(@RequestParam("entryPkList") String entryPkList, 
                                    @RequestParam("cartDivision") String cartDivision){
        
        /*
         * List<String>[] data = { {"subTotal" : 10}, {"deliveryCost" :
         * 10},{"totalPrice":30}};
         */ 
        
        
        return service.getProducts("ehfhfh1313");
    }
    
    @GetMapping("checkoutCartView/{entryNum}")
    public List<CartVO> getCartListGET(@PathVariable("entryNum") String mid){
        // mid 쪼개기
        // 값으로 화면 보여주기
        System.out.println(mid);
        return service.getProducts("ehfhfh1313");
    }

}
