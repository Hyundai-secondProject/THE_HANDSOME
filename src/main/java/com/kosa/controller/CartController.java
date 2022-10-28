package com.kosa.controller;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


/**
 * CartController
 * @author 김민찬
 * @since 2022.10.19
 * @version 1.0
 * 
 * <pre>
 * 수정일                수정자              수정내용
 * ----------  --------    ---------------------------
 * 2022.10.19   김민찬              최초 생성
 * </pre>
 */

@Controller
public class CartController {
    

    @RequestMapping(value = "/cart", method = RequestMethod.GET)
    public String home() {
                
        return "cart/cart";
    }
}