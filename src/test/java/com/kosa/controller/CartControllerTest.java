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
    "file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"})
@Log4j
public class CartControllerTest {
    
    @Autowired
    private WebApplicationContext ctx;
    private MockMvc mockMvc;
    
    @Before
    public void setup() {
        this.mockMvc = MockMvcBuilders.webAppContextSetup(ctx).build();     
    }
    
    // 카트물품조회
    @Test
    public void getProductsTest() throws Exception {
        log.info(
                mockMvc.perform(
                MockMvcRequestBuilders.get("/cart/cart"))
                .andReturn()
                .getModelAndView()
                .getModelMap()
                );
        
    }
    
    // 카트추가
    @Test
    public void putProductTest() throws Exception {
        
        String resultPage = mockMvc.perform(
                MockMvcRequestBuilders.post("/cart/cart")
                .param("mid", "ehfhfh1313")
                .param("psid", "psidN123Wstock26")
                .param("pquantity", "10")
                ).andReturn()
                .getModelAndView()
                .getViewName()
                ;
        log.info(resultPage);
    }
    
    // 수량변경
    @Test
    public void updateQuantityTest() throws Exception {
        
        String resultPage = mockMvc.perform(
                MockMvcRequestBuilders.post("/cart/update")
                .param("mid", "ehfhfh1313")
                .param("psid", "psidN123Wstock26")
                .param("pquantity", "5") // post니까? 
                ).andReturn()
                .getModelAndView()
                .getViewName()
                ;
        log.info(resultPage);
    }
    
    @Test
    public void deleteProductTest() throws Exception {
        
        String resultPage = mockMvc.perform(
                MockMvcRequestBuilders.post("/cart/delete")
                .param("mid", "ehfhfh1313")
                .param("psid", "psidN123Wstock26")
                ).andReturn()
                .getModelAndView()
                .getViewName()
                ;
        log.info(resultPage);
    }
    

}
