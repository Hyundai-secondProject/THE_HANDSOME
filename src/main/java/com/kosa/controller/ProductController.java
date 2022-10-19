package com.kosa.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.JsonObject;
import com.kosa.domain.paging.Criteria;
import com.kosa.domain.paging.ProductPageDTO;
import com.kosa.domain.product.BrandVO;
import com.kosa.domain.product.CategoryVO;
import com.kosa.domain.product.ProductColorVO;
import com.kosa.domain.product.ProductSizeVO;
import com.kosa.domain.product.ProductVO;
import com.kosa.service.ProductService;


import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/product/*")
public class ProductController {

	@Autowired
	private ProductService service;

	@GetMapping(value = "/getProductList", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String getProductList(@RequestParam(defaultValue = "1") int page, String depth1, String depth2,
			String depth3, Model model) {

		log.info("getListController...................................");
		CategoryVO category = new CategoryVO(depth1, depth2, depth3);
		model.addAttribute("category", category);

		Criteria cri = new Criteria(page, 12);
		model.addAttribute("cri", cri);
		BrandVO brand = new BrandVO();
		// (카테고리, criteria)를 통해 12개의 상품 표시
		// dto를 통해 제품 리스트 + 해당 카테고리/브랜드의 전체 제품 갯수 가져오기
		ProductPageDTO products = service.getProducts(brand, category, cri);

		JSONObject jsonObject = new JSONObject();
		JSONArray jsonArray = new JSONArray();

		for (ProductVO p : products.getList()) {
			JSONObject tmpObject = new JSONObject();

			JSONObject pObject = new JSONObject();
			pObject.put("pid", p.getPid());
			pObject.put("pname", p.getPname());
			pObject.put("bname", p.getBname());

			tmpObject.put("product", pObject);

			// p의 정보를 이용해서 pcode가 가진 컬러 리스트를 DB에서 가져온다.
			List<ProductColorVO> colors = service.getProductColor(p);
			tmpObject.put("colors", colors);
			tmpObject.put("state", 0);
			// 제품 가격 가져오기
			tmpObject.put("pprice", colors.get(0).getPcprice());
			jsonArray.put(tmpObject);
		}

		jsonObject.put("products", jsonArray);
		jsonObject.put("result", "success");
		jsonObject.put("totalCnt", products.getTotalCnt());
		String json = jsonObject.toString();

		return json;
	}

	@GetMapping("/productlist")
	public String productList() {
		log.info("제품 리스트 출력");

		return "product/productlist";
	}

	@RequestMapping("/productdetail")
	public String productDetail(String pid, String pcid, Model model) {
		log.info("상세 페이지");
		
		// pid를 통해 제품 객체 가져오기
		ProductVO product = service.getProduct(pid);
		
		// product로 색상, 사이즈 가져오기
		List<ProductColorVO> colors = service.getProductColor(product);
		List<ProductSizeVO> sizes = service.getProductSize(product);
		
		for (int i = 0; i < colors.size(); i++) {
			if (pcid.equals(colors.get(i).getPcid())) {
				model.addAttribute("pcimg1", colors.get(i).getPcimg1());
				model.addAttribute("pcimg2", colors.get(i).getPcimg2());
				model.addAttribute("pcimg3", colors.get(i).getPcimg3());
				break;
			}
		}
		log.info("제품 사진 : " + colors.get(0).getPcimg1());

		model.addAttribute("pcrice", colors.get(0).getPcprice());
		model.addAttribute("product", product);
		model.addAttribute("colors", colors);
		model.addAttribute("sizes", sizes);
		
		return "product/productdetail";		
	}
}
