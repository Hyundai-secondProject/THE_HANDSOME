package com.kosa.controller;

import java.util.Random;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;

import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.kosa.service.MemberService;

import lombok.RequiredArgsConstructor;
/**
 * @author 신기원
 * @since 2022.10.20
 * @version 1.0
 * 
 * <pre>
 * 수정일                    수정자               수정내용
 * 2022.10.20   신기원              최초 생성
 * 2022.10.21   신기원              회원 가입 PostMapping 생성, 이메일 중복 확인
 * </pre>
 */ 
@RestController
@RequestMapping("/member/join/*")
@RequiredArgsConstructor
public class MemberRestController {
	
	private final MemberService service;

	//java 메일 전송 관련 객체 스프링 빈으로 등록되어 있음
	private final JavaMailSender mailSender;

	//이메일 인증 완료
	@PostMapping("/ok")
	public String memberjoin(String email,HttpSession session) {
		String data = null;
		if(email != null) {
			data = "Y";
			System.out.println(email);
			session.setAttribute("uidEmail", email);
			
		} else {
			data = "N";
			
		}
		return data;
		
	}
	
	//form에서 받아온 이메일 전송 후 난수값 반환
	@PostMapping(value = "/emailAuth")
	public String emailAuth(String email) {		
		Random random = new Random();
		int checkNum = random.nextInt(888888) + 111111;
		System.out.println("이메일" + email);
		/* 이메일 보내기 */
        String setFrom = "shingk0323@naver.com";
        String toMail = email;
        String title = "회원가입 인증 이메일 입니다.";
        String content = 
                "홈페이지를 방문해주셔서 감사합니다." +
                "<br><br>" + 
                "인증 번호는 " + checkNum + "입니다." + 
                "<br>" + 
                "해당 인증번호를 인증번호 확인란에 기입하여 주세요.";
        
        try {
            MimeMessage message = mailSender.createMimeMessage();
            MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
            helper.setFrom(setFrom);
            helper.setTo(toMail);
            helper.setSubject(title);
            helper.setText(content,true);
            mailSender.send(message);
        }catch(Exception e) {
            e.printStackTrace();
        }
        
        return Integer.toString(checkNum);
 
	}
	
	//이메일 중복 확인
	@GetMapping("isdupluid")
	public boolean duplId(String uid) {
		
		//이미 존재하면 true 값 반환
		boolean result = service.isDulpId(uid);
		System.out.println(uid);
		System.out.println(result);
		return result;
	}
	
}
