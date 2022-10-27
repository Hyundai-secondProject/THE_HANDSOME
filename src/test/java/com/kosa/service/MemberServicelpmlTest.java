package com.kosa.service;

import static org.junit.Assert.*;

import java.time.LocalDate;
import java.util.Date;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import com.kosa.domain.event.CouponDetailViewVO;
import com.kosa.domain.member.MemberVO;
import com.kosa.mapper.MemberMapper;
import com.kosa.mapper.MemberMapperTest;

import lombok.extern.log4j.Log4j;

/**
 * @author 신기원
 * @since 2022.10.14
 * @version 1.0
 * 
 *          <pre>
 * 수정일                    수정자                   수정내용
 * ----------  --------    ---------------------------
 * 2022.10.14    신기원                 최초 생성
 * 2022.10.18    신기원                 패스워드 테스트
 * 2022.10.26	  신기원		  회원 정보 수정 테스트
 *          </pre>
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/security-context.xml" })
@Log4j
public class MemberServicelpmlTest {

	@Autowired
	public MemberService memberService;

	@Autowired
	public MemberMapper memberMapper;
	@Test
	public void joinTest() {
		MemberVO vo  = new MemberVO();
		vo.setMid("asdf");
		vo.setMpassword("asdf");
		vo.setMname("기원");
		vo.setMemail("giwon@naver.com");
		vo.setMphone("01011122");
		vo.setMbirth(LocalDate.now());
		log.info(memberService.join(vo));
	}

	@Test
	public void passwordCheckTest() {
		MemberVO vo = memberService.passwordCheck("as", "as");
		log.info("결과확인 : " + vo);
	}
	
	@Test
	public void isDupl() {
		log.info(memberService.isDulpId("shingk0323@naver.com"));
	}
	
	@Test
	public void memberinfoTest() {
		MemberVO vo = memberMapper.findById("qwer");
		vo.setMphone("01011232234");
		vo.setMtel("12341234");
		vo.setMzipcode("13313");
		vo.setMaddress1("서울시");
		vo.setMaddress2("혜화동");
		log.info(memberService.memberInfoChange(vo));
	}
//	MemberVO vo  = new MemberVO();
//	vo.setMid("11231");
//	vo.setMpassword("1234");
//	vo.setMname("기원");
//	vo.setMemail("giwon@naver.com");
//	vo.setMphone("01011232234");
//	vo.setMtel("12341234");
//	vo.setMzipcode("13313");
//	vo.setMaddress1("서울시");
//	vo.setMaddress2("혜화동");
//	vo.setMbirth(new Date());
//	vo.setMgender(0);
//	vo.setMrefid("kosa");
//	vo.setMlogintype("통합회원");
//	vo.setMtosno(0);
//	vo.setMenabled(0);
//	vo.setMrole("User");
//	vo.setMgrade(1);
//	vo.setMmileage(3000);
//	log.info(memberService.join(vo));
	
	@Test
	public void getMemberTest() {
		for (CouponDetailViewVO coupon : memberService.getMember("ehfhfh1313@naver.com").getCouponList()) {
			log.info(coupon);
		}
	}
}
