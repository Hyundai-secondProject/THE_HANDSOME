package com.kosa.controller;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class CartController {
    

    @RequestMapping(value = "/cart", method = RequestMethod.GET)
    public String home() {
                
        return "cart/cart";
    }
    @RequestMapping(value = "/cartt", method = RequestMethod.GET)
    public String home2() {
                
        return "cart/test";
    }
    
    
}