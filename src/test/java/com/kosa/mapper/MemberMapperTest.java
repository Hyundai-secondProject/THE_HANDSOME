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
 * 2022.10.26    신기원                  회원정보 수정 테스트
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
		vo.setMid("qwer1");
		vo.setMpassword(encoder.encode("qwe1r"));
		vo.setMname("기원");
		vo.setMemail("giwon@naver.com");
		vo.setMphone("0101111111");
		vo.setMbirth(LocalDate.now());
		memberMapper.join(vo);
	}
	
	//아이디 값을 통해 VO객체를 찾아 반환하는 테스트
	@Test
	public void findIdTest() {
		log.info(memberMapper.findById("1"));
	}
	
	//회원정보 수정 테스트
	@Test
	public void infoChangeTest() {
		MemberVO memberVO = memberMapper.findById("qwer");
		memberVO.setMaddress1("서울시");
		memberVO.setMtel("1212");
		log.info(memberMapper.infoChange(memberVO));
	}
	
	// 쿠폰 리스트까지 포함한 회원 정보 가져오기
	@Test
	public void getMemberInfoTest() {
		log.info(memberMapper.getMemberInfo("ehfhfh1313@naver.com"));
	}

}
