package com.kosa.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.kosa.domain.member.CartVO;
import com.kosa.service.CartService;

import lombok.extern.log4j.Log4j;

@RequestMapping("/order")
@RestController
@Log4j
public class OrderRestController {
	
	@Autowired
    private CartService service;
	
	// 선택항목 반환
    @GetMapping("/orderView/{mid}/{entryNum}")
    public List<CartVO> getCartList(@PathVariable("mid") String mid,
                                        @PathVariable("entryNum") String str) {
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