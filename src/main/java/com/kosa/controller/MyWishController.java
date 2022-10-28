package com.kosa.controller;

import java.util.List;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kosa.domain.member.LikesVO;
import com.kosa.domain.paging.Criteria;
import com.kosa.domain.paging.ProductPageDTO;
import com.kosa.domain.paging.WishPageDTO;
import com.kosa.domain.product.BrandVO;
import com.kosa.domain.product.CategoryVO;
import com.kosa.domain.product.ProductColorVO;
import com.kosa.domain.product.ProductSizeVO;
import com.kosa.domain.product.ProductVO;
import com.kosa.service.MyWishService;
import com.kosa.service.ProductService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;
/**
 * MyWishController
 * 
 * @author 공통
 * @since 2022.10.17
 * @version 1.0
 * 
 *          <pre>
 * 수정일              수정자                   수정내용
 * ----------  --------    ---------------------------
 * 2022.10.20   박서은              최초 생성
 * 2022.10.21   박서은              ajax로 위시 리스트 띄우기
 *          </pre>
 */
@Log4j
@Controller
@RequiredArgsConstructor
@RequestMapping("/mypage/*")
public class MyWishController {
	private final MyWishService mywishservice;
	private final ProductService productService;
	
	@RequestMapping("/mywish")
	public String productList(Model model) {
		log.info("위시 리스트 출력");
		// 세션에서 mid가져오기!
		return "mypage/mywish";
	}
	
	@GetMapping(value = "/getLikeList", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String getProductList(@RequestParam("mid") String mid, @RequestParam("page") int page, Model model) {

		log.info("getWishListController...................................");
		Criteria cri = new Criteria(page,2); // 한 화면에 표현할 갯수
		System.out.println(mid);
		// (카테고리, criteria)를 통해 12개의 상품 표시
		// dto를 통해 제품 리스트 + 해당 카테고리/브랜드의 전체 제품 갯수 가져오기
		WishPageDTO likes = mywishservice.getLikeProducts(cri, mid); // mid 어떻게 가져올지 정해야 함!!!!!!!!!!!!

		log.info(likes);
		log.info("t");
		JSONObject jsonObject = new JSONObject();
		JSONArray jsonArray = new JSONArray();
		
		for (LikesVO l : likes.getList()) {
			JSONObject tmpObject = new JSONObject();

			JSONObject pObject = new JSONObject();
			pObject.put("pid", l.getPid());
			pObject.put("pname", l.getPname());
			pObject.put("bname", l.getBname());
			 
			tmpObject.put("product", pObject);

			ProductVO product = productService.getProduct(l.getPid());
			// p의 정보를 이용해서 pcode가 가진 컬러 리스트를 DB에서 가져온다.
			List<ProductColorVO> colors = productService.getProductColor(product);
			List<ProductSizeVO> sizes = productService.getProductSize(product);
			
			tmpObject.put("colors", colors);
			tmpObject.put("pcprice", colors.get(0).getPcprice());
			tmpObject.put("pcimg3", colors.get(0).getPcimg3());
			tmpObject.put("colors", colors);
			log.info(sizes);
			tmpObject.put("sizes", sizes);
			
			jsonArray.put(tmpObject);
		}
		
		jsonObject.put("totalCnt", likes.getTotalCnt());
		jsonObject.put("likes", jsonArray);
		String json = jsonObject.toString();		
		return json;
	}
}
