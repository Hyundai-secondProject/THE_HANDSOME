package com.kosa.controller;

import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kosa.domain.product.ProductStockVO;
import com.kosa.service.MyWishService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

/**
 * Handles requests for the application home page.
 */
@Log4j
@Controller
@RequiredArgsConstructor
public class HomeController {
	
	private final MyWishService mywishservice;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
				
		return "checkout/orderConfirmation";
	}
	
	// mid를 통해 위리리스트 갯수 가져온다
	@RequestMapping(value = "/countLikes", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String countLikes(String mid, Model model) {

		JSONObject jsonObject = new JSONObject();
		String json;

		try {
			int count = mywishservice.countLikes(mid);
			jsonObject.put("count", count);
		} catch (Exception e) {
			jsonObject.put("count", -1);
		} finally {
			json = jsonObject.toString();
		}
		return json;
	}
	
//	@GetMapping("/error")
//	public String error() {
//		return "common/error";
//	}
	

	
}