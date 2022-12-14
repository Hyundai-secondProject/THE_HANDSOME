package com.kosa.controller;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.User;
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
import com.kosa.domain.product.ProductStockVO;
import com.kosa.domain.product.ProductVO;
import com.kosa.security.domain.CustomMember;
import com.kosa.service.MyWishService;
import com.kosa.service.ProductService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

/**
 * ProductController
 * 
 * @author 공통
 * @since 2022.10.17
 * @version 1.0
 * 
 *          <pre>
 * 수정일              수정자                   수정내용
 * ----------  --------    ---------------------------
 * 2022.10.17   박서은              최초 생성
 * 2022.10.19   박서은              ajax로 제품 리스트 띄우기
 * 2022.10.20   박서은              상세페이지 띄우기 
 * 2022.10.21   박서은              좋아요 등록 / 삭제
 *          </pre>
 */

@Log4j
@Controller
@RequestMapping("/product/*")
@RequiredArgsConstructor
public class ProductController {


	private final ProductService service;
	private final MyWishService mywishservice;

	@GetMapping(value = "/getProductList", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String getProductList(@RequestParam(defaultValue = "1") int page, String depth1, String depth2,
			String depth3, @RequestParam(defaultValue = " ")String type, @RequestParam(defaultValue = " ") String bkeyword
			, @RequestParam(defaultValue = " ") String ckeyword, @RequestParam(defaultValue = "0") int startp, @RequestParam(defaultValue = "0") int endp, 
			@RequestParam(defaultValue = " ") String price, Model model, @RequestParam(defaultValue = "") String mid) {

		log.info("getListController...................................");
		log.info("t");
		log.info(page);
		log.info(type);
		log.info(bkeyword);
		log.info(ckeyword);
		log.info(startp);
		log.info(endp);
		log.info(price);
			
		
		CategoryVO category = new CategoryVO(depth1, depth2, depth3);
		model.addAttribute("category", category);

		Criteria cri = new Criteria();
		cri.setAmount(12);
		cri.setPageNum(page);
		cri.setType(type);
		cri.setBkeyword(bkeyword);
		cri.setCkeyword(ckeyword);
		cri.setStartp(startp);
		cri.setEndp(endp);
		
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
			
			// 좋아요 체크 상태 가져오기
			
			tmpObject.put("checkLike", mywishservice.checkLike(p.getPid(), mid));
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
	public String productList(Model model,@RequestParam(defaultValue = "")String mid) {
		log.info("제품 리스트 출력");
		// 세션에서 mid가져오기
		//String mid = principal.getName();
		int count = mywishservice.countLikes(mid);
		
		model.addAttribute("wishCnt",count);
		model.addAttribute("mid", mid);
		return "product/productlist";
	}

	@RequestMapping("/productdetail")
	public String productDetail(String pid, String pcid, Model model, @RequestParam(defaultValue = "")String mid) {
		log.info("상세 페이지");
		log.info(mid);
		// pid를 통해 제품 객체 가져오기
		ProductVO product = service.getProduct(pid);
				
		// product로 색상, 사이즈 가져오기
		List<ProductColorVO> colors = service.getProductColor(product);
		List<ProductSizeVO> sizes = service.getProductSize(product);
		boolean checkLike = mywishservice.checkLike(pid,mid);
		
		
		log.info("가격 : " + colors.get(0).getPcprice());
		log.info("color : " + colors);
		
		for (int i = 0; i < colors.size(); i++) {
			if (pcid.equals(colors.get(i).getPcid())) {
				model.addAttribute("pcimg1", colors.get(i).getPcimg1());
				model.addAttribute("pcimg2", colors.get(i).getPcimg2());
				model.addAttribute("pcimg3", colors.get(i).getPcimg3());
				break;
			}
		}
		
		int count = mywishservice.countLikes(mid);
		log.info("checkLike : " + checkLike);
		model.addAttribute("checkLike",checkLike);
		model.addAttribute("wishCnt",count);
		model.addAttribute("mid", mid);
		model.addAttribute("pcprice", colors.get(0).getPcprice());
		model.addAttribute("pcid", pcid);
		model.addAttribute("product", product);
		model.addAttribute("colors", colors);
		model.addAttribute("sizes", sizes);

		return "product/productdetail";		
	}
	
	@RequestMapping(value = "/getProductStock", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String getProductStock(String pcid, String psize, Model model) {
		String psid = pcid + "_" + psize;
		// psid를 이용해서 재고 테이블에서 StockVO를 가져온다.
		JSONObject jsonObject = new JSONObject();
		String json;

		try {
			ProductStockVO stock = service.getProductStock(psid);
			jsonObject.put("amount", stock.getPsstock());
		} catch (Exception e) {
			jsonObject.put("amount", 0);
		} finally {
		    jsonObject.put("psid", psid);   // psid 값 넘기기
			json = jsonObject.toString();
		}
		return json;
	}
	
	@RequestMapping(value = "/insertLike", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String insertLike(String pid, @RequestParam(defaultValue = "") String mid) {
		log.info("insert 실행");
		//log.info("user " + user);
		JSONObject jsonObject = new JSONObject();
		String json;
		//String mid = principal.getName();
		
		try {
			int result = mywishservice.insertLike(pid, mid);
			int wishCnt = mywishservice.countLikes(mid);
			log.info(wishCnt);
			jsonObject.put("result", result);
			jsonObject.put("wishCnt", wishCnt);
		} catch (Exception e) {
			jsonObject.put("result", -1);
			jsonObject.put("wishCnt", -1);
		} finally {
			json = jsonObject.toString();
		}
		
		return json;
	}
	
	@RequestMapping(value = "/deleteLike", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String deleteLike(String pid, String mid) {
		log.info("delete 실행");
		JSONObject jsonObject = new JSONObject();
		String json;
		
		try {
			int result = mywishservice.deleteLike(pid, mid);
			int wishCnt = mywishservice.countLikes(mid);
			jsonObject.put("result", result);
			jsonObject.put("wishCnt",wishCnt);
		} catch (Exception e) {
			jsonObject.put("result", -1);
			jsonObject.put("wishCnt", -1);
		} finally {
			json = jsonObject.toString();
		}
		
		return json;
	}
}
