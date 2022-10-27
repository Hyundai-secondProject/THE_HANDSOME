//package com.kosa.controller;
//
//import java.util.List;
//
//import org.json.JSONArray;
//import org.json.JSONObject;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.bind.annotation.ResponseBody;
//
//import com.kosa.domain.paging.Criteria;
//import com.kosa.domain.paging.ProductPageDTO;
//import com.kosa.domain.product.BrandVO;
//import com.kosa.domain.product.CategoryVO;
//import com.kosa.domain.product.ProductColorVO;
//import com.kosa.domain.product.ProductVO;
//import com.kosa.service.SearchService;
//
//import lombok.RequiredArgsConstructor;
//import lombok.extern.log4j.Log4j;
//
//@Log4j
//@Controller
//@RequestMapping("search/*")
//@RequiredArgsConstructor
//public class SearchController {
//
//	private final SearchService service;
//
//	@GetMapping(value = "/SearchResult", produces = "application/json; charset=UTF-8")
//	@ResponseBody
//	public String SearchResult(@RequestParam("SearchWord") String SearchWord, @RequestParam(defaultValue = "1") int page,
//			@RequestParam(defaultValue = " ") String type, @RequestParam(defaultValue = " ") String bkeyword,
//			@RequestParam(defaultValue = " ") String ckeyword, Model model) {
//
//		log.info("getListController...................................");
//		log.info("t");
//		log.info(page);
//		log.info(type);
//		log.info(bkeyword);
//		log.info(ckeyword);
//
//		Criteria cri = new Criteria();
//		cri.setAmount(12);
//		cri.setPageNum(page);
//		cri.setType("");
//		cri.setBkeyword("");
//		cri.setCkeyword("");
//
//		model.addAttribute("cri", cri);
//		BrandVO brand = new BrandVO();
//		// (카테고리, criteria)를 통해 12개의 상품 표시
//		// dto를 통해 제품 리스트 + 해당 카테고리/브랜드의 전체 제품 갯수 가져오기
//		ProductPageDTO products = service.Search(SearchWord, cri);
//
//		JSONObject jsonObject = new JSONObject();
//		JSONArray jsonArray = new JSONArray();
//
//		for (ProductVO p : products.getList()) {
//			JSONObject tmpObject = new JSONObject();
//
//			JSONObject pObject = new JSONObject();
//			pObject.put("pid", p.getPid());
//			pObject.put("pname", p.getPname());
//			pObject.put("bname", p.getBname());
//
//			tmpObject.put("product", pObject);
//
//			// p의 정보를 이용해서 pcode가 가진 컬러 리스트를 DB에서 가져온다.
//			List<ProductColorVO> colors = service.getProductColor(p);
//			tmpObject.put("colors", colors);
//			tmpObject.put("state", 0);
//
//			// 좋아요 체크 상태 가져오기
//
//			tmpObject.put("checkLike", mywishservice.checkLike(p.getPid(), mid));
//			// 제품 가격 가져오기
//			tmpObject.put("pprice", colors.get(0).getPcprice());
//			jsonArray.put(tmpObject);
//		}
//
//		jsonObject.put("products", jsonArray);
//		jsonObject.put("result", "success");
//		jsonObject.put("totalCnt", products.getTotalCnt());
//		String json = jsonObject.toString();
//
//		return json;
//	}
//
//	@GetMapping("/SearchResult")
//	public String productList(Model model) {
//		log.info("제품 리스트 출력");
//
//		return "search/search";
//	}
//}
