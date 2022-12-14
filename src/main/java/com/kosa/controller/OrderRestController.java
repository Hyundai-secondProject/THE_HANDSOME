package com.kosa.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.StringTokenizer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.kosa.domain.member.CartVO;
import com.kosa.domain.member.MemberVO;
import com.kosa.domain.order.OrdersVO;
import com.kosa.service.CartService;
import com.kosa.service.MemberService;
import com.kosa.service.OrderService;

import lombok.extern.log4j.Log4j;

/**
 * @author 장주연
 * @since 2022.10.27
 * @version 1.0
 * 
 * <pre>
 * 수정일                  수정자                   수정내용
 * ----------  --------    -------------------
 * 2022.10.25   장주연                 최초 생성
 * 2022.10.27   장주연                 주문 기능 수정
 * </pre>
 */

@RequestMapping("/order")
@RestController
@Log4j
public class OrderRestController {
	
	@Autowired
    private CartService service;
	@Autowired
	private MemberService memberService;
	@Autowired
	private OrderService orderService;
	
	// 선택항목 반환
    @GetMapping("/orderView/{mid}/{entryNum}")
    public List<CartVO> getCartList(@PathVariable("mid") String mid,
                                        @PathVariable("entryNum") String str) {
        // ,(comma)는 URL에서 %2C로 대체되고 그 URL을 받아쓸때 다시 , 로 반환된다
        System.out.println(str);
        if (str == "")
            return service.getProducts(mid);
        StringTokenizer st = new StringTokenizer(str, ",");
        List<Integer> entryNum = new ArrayList<>();
        while (st.hasMoreTokens()) {
            entryNum.add(Integer.parseInt(st.nextToken()) + 1); // rownum은 1부터시작
        }
        System.out.println(entryNum);
        return service.getProductsWithEntryNum(mid, entryNum);
    }
    
    // 멤버정보 반환
    @GetMapping("/{mid}")
    public ResponseEntity<MemberVO> getMember(@PathVariable("mid") String mid) {
    	log.info("getMember..............");
    	return new ResponseEntity<>(memberService.getMember(mid), HttpStatus.OK);
    }
    
    // 멤버 쿠폰 정보 반환
    
 // 주문 결제하기
    @GetMapping("/orderPay")
    public void orderPay(OrdersVO orders) {
        System.out.println(orders);
        System.out.println("orderpay 왔음");
        
        orders.setOdate(new Date());
        orderService.insert(orders);
    }
}
