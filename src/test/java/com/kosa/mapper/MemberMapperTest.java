package com.kosa.mapper;

import static org.junit.Assert.*;

import java.time.LocalDate;
import java.util.Date;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kosa.domain.member.MemberVO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class MemberMapperTest {

	@Autowired
	private MemberMapper memberMapper;
	
	@Test
	public void test() {
		MemberVO vo  = new MemberVO();
		vo.setMid("giwon");
		vo.setMpassword("1234");
		vo.setMname("기원");
		vo.setMemail("giwon@naver.com");
		vo.setMphone("01012341234");
		vo.setMtel("12341234");
		vo.setMzipcode("13313");
		vo.setMaddress1("서울시");
		vo.setMaddress2("혜화동");
		vo.setMbirth(new Date());
		vo.setMgender(0);
		vo.setMrefid("kosa");
		vo.setMlogintype("통합회원");
		vo.setMtosno(0);
		vo.setMenabled(0);
		vo.setMrole("User");
		vo.setMgrade(1);
		vo.setMmileage(3000);
		memberMapper.join(vo);
	}
	@Test
	public void test2() {
//		System.out.println(memberMapper);
		log.info(memberMapper.findById("1"));
	}
	

}
