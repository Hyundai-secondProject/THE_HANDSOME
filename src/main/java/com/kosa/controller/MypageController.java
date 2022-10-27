package com.kosa.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kosa.domain.member.MemberVO;
import com.kosa.domain.order.Criteria;
import com.kosa.service.MemberService;
import com.kosa.service.OrderService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
/**
 * @author 장주연, 신기원
 * @since 2022.10.14
 * @version 1.0
 * 
 * <pre>
 * 수정일              	수정자                   수정내용
 * ----------  --------    ---------------------------
 * 2022.10.14       장주연              	최초 생성
 * 2022.10.24	신기원		패스워드확인 url 추가
 * 2022.10.27	신기원		회원 정보 수정 추가
 * </pre>
 */
@Log4j
@Controller
@RequestMapping("/mypage/*")
@AllArgsConstructor
public class MypageController {

	private OrderService service;
	private MemberService memberservice;
	
	@GetMapping("member")
	public String doMember() {
		return "mypage/member";
	}
	
	@GetMapping("/myorders2")
	public void list(Criteria cri) {
	}
	
	@PostMapping("/myorders2")
	public void list(HttpServletRequest httpServletRequest, Model model) {
		log.info("search.....");
		String type = httpServletRequest.getParameter("searchType");
		String keyword = httpServletRequest.getParameter("searchWord");
		log.info(type);
		log.info(keyword);
		
		model.addAttribute("type", type);
		model.addAttribute("keyword", keyword);
	}
	
	//정보 수정시 패스워드 검증을 위한 폼 URL
	@GetMapping("/PwCheck")
	public String memberPwCheck() {
		return "mypage/pwCheck";
	}
	
	//패스워드 체크 
	@ResponseBody
	@PostMapping("/passwordrecheck")
	public String PasswordRecheck(String uid, String pw, HttpSession session) {
		MemberVO vo =  memberservice.passwordCheck(uid, pw);
		session.setAttribute("member", vo);
		if(vo == null) {
			return null;
		} else {
			return "1";
		}
	}
	
	
	//회원 정보 수정 폼
	@GetMapping("/memberInfomationChange")
	public String MemberInfo() {
		
		return "mypage/memberInfoChange";
	}
	
	//회원 정보 수정 버튼 클릭시 처리 URL
	@ResponseBody
	@PostMapping("updatecomplete")
	public String InfoChange(MemberVO vo) {
		log.info(vo);
		return memberservice.memberInfoChange(vo);
	}
	
}