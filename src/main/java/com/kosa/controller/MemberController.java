package com.kosa.controller;

import org.springframework.security.core.Authentication;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.stereotype.Controller;
import com.kosa.service.MemberService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

/**
 * MemberController
 * 
 * @author 공통
 * @since 2022.10.17
 * @version 1.0
 * 
 *          <pre>
 * 수정일              수정자                   수정내용
 * ----------  --------    ---------------------------
 * 2022.10.17   신기원              최초 생성
 * 2022.10.19   신기원              이메일 인증 및 회원가입 url 추가
 *          </pre>
 */

@Controller
@RequestMapping("/member/*")
@RequiredArgsConstructor
@Log4j
public class MemberController {

	private final MemberService service;

	// 관리자 페이지 접속
	@GetMapping("admin")
	public String doAdmin() {
		return "member/admin";
	}

	@GetMapping("login")
	public void login(String error, String logout, Model model) {
		if (error != null) {
			model.addAttribute("error", "Login error");
		}
		if (logout != null) {
			model.addAttribute("logout", "Logout");
		}
	}

	// 회원가입 1페이지 : 회원 가입을 위한 이메일 인증 페이지로 이동
	@GetMapping(value = "joinstart")
	public String email() {
		return "member/joinstart";
	}

	// 회원가입 2페이지 :개인정보 동의
	@GetMapping("joinprovision")
	public String provision(String email) {
		return "member/joinprovision";
	}

	// 회원가입 3페이지 : 회원 정보 입력
	@GetMapping("joininfoform")
	public String createForm() {
		return "member/joininfoform";
	}

}
