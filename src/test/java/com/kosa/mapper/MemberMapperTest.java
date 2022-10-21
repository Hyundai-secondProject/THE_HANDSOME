package com.kosa.mapper;

import static org.junit.Assert.*;

import java.time.LocalDate;
import java.util.Date;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kosa.domain.member.MemberVO;

import lombok.extern.log4j.Log4j;
/**
 * @author 신기원
 * @since 2022.10.14
 * @version 1.0
 * 
 * <pre>
 * 수정일                    수정자                   수정내용
 * ----------  --------    ---------------------------
 * 2022.10.14    신기원                 최초 생성
 * </pre>
 */


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml",
"file:src/main/webapp/WEB-INF/spring/security-context.xml"})
@Log4j
public class MemberMapperTest {

	@Autowired
	private MemberMapper memberMapper;
	
	@Autowired
	private PasswordEncoder encoder;
	
	//회원 가입 테스트 필수 값들만 저장되어있음
	@Test
	public void joinTest() {
		MemberVO vo  = new MemberVO();
		vo.setMid("qwer");
		vo.setMpassword(encoder.encode("qwer"));
		vo.setMname("기원");
		vo.setMemail("giwon@naver.com");
		vo.setMphone("01011111");
		vo.setMbirth(new Date());
		memberMapper.join(vo);
	}
	
	//아이디 값을 통해 VO객체를 찾아 반환하는 테스트
	@Test
	public void findIdTest() {
//		System.out.println(memberMapper);
		log.info(memberMapper.findById("1"));
	}
	

}
