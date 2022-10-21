package com.kosa.security;

import static org.junit.Assert.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Date;

import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.log4j.Log4j;
/**
 * @author 신기원
 * @since 2022.10.18
 * @version 1.0
 * 
 * <pre>
 * 수정일                    수정자                   수정내용
 * ----------  --------    ---------------------------
 * 2022.10.18    신기원                 최초생성
 * </pre>
 */

//패스워드 인코딩 테스트
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml",
	"file:src/main/webapp/WEB-INF/spring/security-context.xml"})
@Log4j
public class PasswordEncodeTest {
	
	@Autowired
	public PasswordEncoder pwencoder;
	
	@Autowired
	private DataSource ds;
	
	

	@Test
	public void test() {
		String sql = 
				"insert into member"
				+ "(mid, mpassword, mname, memail, mphone, mtel, mzipcode, maddress1, maddress2, mbirth, mgender, mrefid, mlogintype, mtosno, menabled, mrole, mgrade, mmileage) "
				+ "values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, "giwon");
			pstmt.setString(2, pwencoder.encode("giwon"));
			pstmt.setString(3, "이름");
			pstmt.setString(4, "이메일");
			pstmt.setString(5, "01013");
			pstmt.setString(6, "번호");
			pstmt.setString(7, "우편");
			pstmt.setString(8, "주소1");
			pstmt.setString(9, "주소2");
			pstmt.setDate(10, java.sql.Date.valueOf("2022-10-18"));
			pstmt.setInt(11, 1);
			pstmt.setString(12, "추천인");
			pstmt.setString(13, "로그인 유형");
			pstmt.setInt(14, 1);
			pstmt.setInt(15, 1);
			pstmt.setString(16, "ROLE_ADMIN");
			pstmt.setInt(17, 2);
			pstmt.setInt(18, 3000);
			
			pstmt.executeUpdate();
		}catch (Exception e) {
			// TODO: handle exception
		}
	}

}
