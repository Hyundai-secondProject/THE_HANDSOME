package com.kosa.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kosa.domain.member.CartVO;
import com.kosa.service.CartService;

import lombok.extern.log4j.Log4j;

/**
 * Handles requests for the application home page.
 */

@Log4j
@Controller
@RequestMapping("/cart/*")
public class CartController {
    
    @Autowired
    private CartService service;
   
    @GetMapping("cart")
    public void cartList(Model model) {
        log.info("list");
        model.addAttribute("list", service.getProducts("ehfhfh1313"));
    }
    
    @PostMapping("cart")
    public String putProduct(CartVO cart, RedirectAttributes rttr) {
        
        log.info("put : " + cart);
        service.putProduct(cart);
        rttr.addFlashAttribute("result", cart.getMid());
        return "redirect:/cart/cart";
    }
    
    @PostMapping("/update")
    public String updateQuantity(CartVO cart, RedirectAttributes rttr) {
            
            log.info("update quantity : " + cart);
            service.updateQuantity(cart);
            rttr.addFlashAttribute("result", cart.getMid());
            return "redirect:/cart/cart";
    }
    
    @PostMapping("/delete")
    // public String deleteProduct(@RequestParam("mid") String mid, @RequestParam("psid") String psid, RedirectAttributes rttr ) { // 두개만 받는경우 
        public String deleteProduct(CartVO cart, RedirectAttributes rttr ) {  // cartVO로 받는경우
        
        //log.info("delete : " + mid +"의 " + psid);
        log.info("delete : " +cart);
        service.deleteProduct(cart);    // 반환값을 받아서 if로 성공하면 처리하도록 작성
        rttr.addFlashAttribute("result", cart.getMid());
        return "redirect:/cart/cart";
    }
//    @RequestMapping(value = "/cart", method = RequestMethod.GET)
//    public String cart() {
//                
//        return "cart/cart";
//    }

}