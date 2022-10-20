package com.kosa.controller;

import java.util.List;

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
  
    
    @GetMapping("/{mid}")
    public List<CartVO> getCartGET(@PathVariable("mid") String mid){
        System.out.println(mid);
        return service.getProducts(mid);
    }
    
    @GetMapping("/calculation")
    public List<CartVO> getCartGet3(CartVO cart){
        return service.getProducts("ehfhfh1313");
    }

}
