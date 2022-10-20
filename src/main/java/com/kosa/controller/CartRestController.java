package com.kosa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
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
    
    @GetMapping("")
    public List<CartVO> getCartGet(CartVO cart){
        return service.getProducts("ehfhfh1313");
    }
    
    @PostMapping("/11")
    public List<CartVO> getCartPost(CartVO cart){
        return service.getProducts("ehfhfh1313");
    }
    
    @PostMapping("")
    public @ResponseBody List<CartVO> getCartPost4(String mid){
        System.out.println(mid);
        return service.getProducts("ehfhfh1313");
    }
//    @PostMapping("")
//    public List<CartVO> getCartPost5(@RequestBody String mid){
//        System.out.println(mid);
//        return service.getProducts("ehfhfh1313");
//    }
    
    
//    @PostMapping("/asd")
//    public List<CartVO> getCartPost(@RequestParam("mid") String mid){
////        String testMid = request.getParameter("testMid");
//        System.out.println(mid);
//        return service.getProducts(mid);
//    }
//    
//    
//    @PostMapping("/test")
//    public List<CartVO> getCartPost2(@RequestBody HashMap<String,String> data){
////        String testMid = request.getParameter("testMid");
//        System.out.println(data);
//        return service.getProducts(data.get("mid"));
//    }
//    
//    @PostMapping("/3")
//    public List<CartVO> getCartPost3(@RequestParam HashMap<String,Object> data){
//        System.out.println(data);
//        return service.getProducts((String)data.get("mid"));
//    }
    
//    @PostMapping(value = "/regist", consumes = "application/json")
//    public ResponseEntity<String> regist(@RequestBody HashMap<String,String> data) {
//        ResponseEntity<>
//        return service.getProducts(data.get("mid"));
////        return check ? new ResponseEntity<String>(replynum+"",HttpStatus.OK):new ResponseEntity<String>(HttpStatus.INTERNAL_SERVER_ERROR);
//    }
 
    
//    @ResponseBody
//    @RequestMapping(value="/ajax", method=RequestMethod.POST)
//        public List<CartVO> ajaxObject(CartVO cart){
//        return service.getProducts(cart.getMid());
//        }

}
