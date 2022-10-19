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
		/*
		 * // 상품 리스트 상단 카테고리 정보 보여주기 위해 저장 CategoryVO category = new CategoryVO(depth1,
		 * depth2, depth3); // pager에서 사용하기 위해 저장 model.addAttribute("category",
		 * category);
		 * 
		 * // DB에 접근해서 해당 카테고리에 상품의 총 개수를 가져온다. // Pager에 사용하고, 전체 상품 개수를 보여주기 위함 int
		 * totalRows = productService.getTotalProductNum(category);
		 * session.setAttribute("totalRows", totalRows);
		 * 
		 * // 한 페이지에 12개 상품, // 페이지 목록 5 페이지, // totalRows: 전체 상품 개수 / pageNo: 현재 페이지
		 * Pager pager = new Pager(12, 5, totalRows, pageNo); // pager도 request 범위에
		 * 저장하는데, 그 이유는 jsp에서 사용하기 위해서 model.addAttribute("pager", pager);
		 */

		return "product/productlist";
	}

	@RequestMapping("/productdetail")
	public String productDetail() {
		/*
		 * logger.info("실행");
		 * 
		 * // pcode를 이용해서 product 객체 1개를 DB에서 가져온다. Product product =
		 * productService.getProduct(pcode); // product를 이용해서 해당 상품이 가지고 있는 color와 size를
		 * 가져온다. List<ProductColor> colors = productService.getProductColor(product);
		 * List<ProductSize> sizes = productService.getProductSize(product);
		 * 
		 * for (int i = 0; i < colors.size(); i++) { if
		 * (cproductcolor.equals(colors.get(i).getCproductcolor())) {
		 * model.addAttribute("productimage1", colors.get(i).getCimageproduct1());
		 * model.addAttribute("productimage2", colors.get(i).getCimageproduct2());
		 * model.addAttribute("productimage3", colors.get(i).getCimageproduct3());
		 * break; } }
		 * 
		 * model.addAttribute("product", product); model.addAttribute("colors", colors);
		 * model.addAttribute("sizes", sizes);
		 * 
		 * int mileage = (int) (product.getPprice() * 0.05); int hpoint = (int)
		 * (product.getPprice() * 0.001);
		 * 
		 * model.addAttribute("mileage", mileage); model.addAttribute("hpoint", hpoint);
		 * 
		 * if (viewers.containsKey(pcode)) { viewers.put(pcode, viewers.get(pcode) + 1);
		 * } else { viewers.put(pcode, 1); }
		 * 
		 * model.addAttribute("viewer", viewers.get(pcode));
		 */
		return "product/productdetail";
	}
}
