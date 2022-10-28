package com.kosa.controller;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml",
                        "file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml",
                        "file:src/main/webapp/WEB-INF/spring/security-context.xml"})
@Log4j
public class CartControllerTest {
    
    @Autowired
    private WebApplicationContext ctx;
    private MockMvc mockMvc;
    
    @Before
    public void setup() {
        this.mockMvc = MockMvcBuilders.webAppContextSetup(ctx).build();     
    }
    
    // 카트페이지
    @Test
    public void getProductsTest() throws Exception {
        log.info(
                mockMvc.perform(
                MockMvcRequestBuilders.get("/cart"))
                .andReturn()
                .getModelAndView()
                .getModelMap()
                );
    }
    
    // 아이디로 검색
    @Test
    public void getProductsTest2() throws Exception {
        log.info(
                mockMvc.perform(
                MockMvcRequestBuilders.get("/cartAjax/ehfhfh1313@naver,com"))
                .andReturn()
                .getModelAndView()
                .getModelMap()
                );
    }
    
    // productdetail에서 장바구니 추가
    @Test
    public void addToCartTest() throws Exception {
        log.info(
                mockMvc.perform(
                MockMvcRequestBuilders.get("/cartAjax/addtocart/ehfhfh1313@naver.com/CM2C0ASZ740WS_BK_88/4"))
                .andReturn()
                .getModelAndView()
                .getModelMap()
                );
    }
    
    // 삭제(단일)
    @Test
    public void deleteCartTest() throws Exception {
        log.info(
                mockMvc.perform(
                MockMvcRequestBuilders.get("/cartAjax/RemoveProduct/ehfhfh1313@naver.com/CM2C0ASZ740WS_BK_88"))
                .andReturn()
                .getModelAndView()
                .getModelMap()
                );
    }
    
    // 선택삭제(다중)
    @Test
    public void deleteCartTest2() throws Exception {
        log.info(
                mockMvc.perform(
                MockMvcRequestBuilders.get("/cartAjax/selectRemove/ehfhfh1313@naver.com/1,2"))
                .andReturn()
                .getModelAndView()
                .getModelMap()
                );
    }
    
    // 수량체크
    @Test 
    public void checkstock() throws Exception {
        log.info(
                mockMvc.perform(
                MockMvcRequestBuilders.get("/cartAjax/checkStock/ehfhfh1313@naver.com/CM2C0ASZ740WS_BK_88/4"))
                .andReturn()
                .getModelAndView()
                .getModelMap()
                );
    }
    
    
    // 수량변경
    @Test 
    public void updateQuantity() throws Exception {
        log.info(
                mockMvc.perform(
                MockMvcRequestBuilders.get("/cartAjax/updateQuantity/ehfhfh1313@naver.com/CM2C0ASZ740WS_BK_88/3"))
                .andReturn()
                .getModelAndView()
                .getModelMap()
                );
    }
    
    
//    // 카트추가
//    @Test
//    public void putProductTest() throws Exception {
//        
//        String resultPage = mockMvc.perform(
//                MockMvcRequestBuilders.post("/cart/cart")
//                .param("mid", "ehfhfh1313")
//                .param("psid", "psidN123Wstock26")
//                .param("pquantity", "10")
//                ).andReturn()
//                .getModelAndView()
//                .getViewName()
//                ;
//        log.info(resultPage);
//    }
//    
//    // 수량변경
//    @Test
//    public void updateQuantityTest() throws Exception {
//        
//        String resultPage = mockMvc.perform(
//                MockMvcRequestBuilders.post("/cart/update")
//                .param("mid", "ehfhfh1313")
//                .param("psid", "psidN123Wstock26")
//                .param("pquantity", "5") // post니까? 
//                ).andReturn()
//                .getModelAndView()
//                .getViewName()
//                ;
//        log.info(resultPage);
//    }
//    
//    @Test
//    public void deleteProductTest() throws Exception {
//        
//        String resultPage = mockMvc.perform(
//                MockMvcRequestBuilders.post("/cart/delete")
//                .param("mid", "ehfhfh1313")
//                .param("psid", "psidN123Wstock26")
//                ).andReturn()
//                .getModelAndView()
//                .getViewName()
//                ;
//        log.info(resultPage);
//    }
    

}
