<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!-- /**
 * @author 신기원
 * @since 2022.10.19
 * @version 1.0
 * 
 * <pre>
 * 수정일                    수정자               수정내용
 * 2022.10.19   신기원              최초 생성
 * </pre>
 */ -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>&#54924;&#50896;&#44032;&#51077;&#49884;&#51089; |
	&#45908;&#54620;&#49452;&#45815;&#52980;</title>
<link rel="shortcut icon"
	href="http://cdn.thehandsome.com/resources/images/common/thehandsome_ic_16x16.ico" />
<link rel="stylesheet" type="text/css"
	href="/resources/css/font_443.css" media="all" />
<link rel="stylesheet" type="text/css" href="/resources/css/common.css"
	media="all" />
<link rel="stylesheet" type="text/css" href="/resources/css/layout.css"
	media="all" />
<link rel="stylesheet" type="text/css" href="/resources/css/popup.css"
	media="all" />
<link rel="stylesheet" type="text/css"
	href="/resources/css/jquery-ui.min.css" media="all" />

<link rel="stylesheet" type="text/css" href="/resources/css/brand.css"
	media="all" />
<link rel="stylesheet" type="text/css" href="/resources/css/footer.css"
	media="all" />
<link rel="stylesheet" type="text/css"
	href="/resources/css/contents.css" media="all" />
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="/resources/js/join.js">
	
</script>
</head>
<body>
	<div id="bodyWrap">
		<!--title-->
		<h3 class="cnts_title">
			<span>회원가입</span>
		</h3>
		<!--//title-->
		<!--email step-->
		<div class="email_step">
			<ul class="clearfix">
				<li class="step01 on">step01 이메일인증</li>
				<li class="step02">step02 회원약관동의</li>
				<li class="step03">step03 회원정보 입력</li>
				<li class="step04">step04 가입완료</li>
			</ul>
		</div>
		<!--/email  step-->
		<!--sub container-->
		<div class="sub_container">
			<div class="join_title">
				<p class="title">더한섬닷컴에 가입을 환영합니다.</p>
				<p class="s_title">
					<strong>본인인증 절차 없이, 더한섬닷컴에서 제공하는 서비스만 제한적으로 이용할 수 있습니다.</strong><br>더한섬닷컴에서
					사용 가능하며, <span
						style="color: #c69c6c; font-weight: normal; text-decoration: underline;">오프라인
						매장에서는 사용할 수 없습니다.<br>한섬마일리지와 현대백화점그룹 H.Point 혜택, 한섬의 온라인 멤버십
						서비스 ‘THE 클럽’의 혜택은 제공되지 않습니다.
					</span>
				</p>
			</div>

			<fieldset>
				<legend>본인인증</legend>
				<div class="box_type_1">
					<div class="email ">
						<form id="join_frm">
							<p>
								<strong>이메일인증으로 회원가입</strong>
							</p>
							<p>정보입력은 입력한 메일을 통한 인증 후 가능합니다.</p>
							<p class="emailinput">
								<input type="text" id="email" name="email" style="width: 120px"
									title="이메일 아이디"> <input type="button" class="btn add_s"
									id="idDubChkBtn" value="중복확인"> <br> <span
									class="guide_comment" id="idDubMsg"></span>
							</p>
							<button type="button" id="email_auth_btn" class="email_auth_btn">인증번호
								받기</button>
							<div>
								<input type="text" placeholder="인증번호 입력" id="email_auth_key">
							</div>
							<button type="button" id="join" class="join_btn">가입하기</button>
							<input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" />
						</form>
					</div>
				</div>
			</fieldset>

			<div class="jo_bottom_banner">
				<div class="left_banner">
					<a
						href="http://www.thehandsome.com/ko/magazine/events/8802941687680"
						target="_blank">통합회원 가입 시 <br>가입 축하 <span
						style="color: #c69c6c;">정상 15% &amp; 아울렛 5% 쿠폰</span> 증정<span
						class="dtil_viw">자세히 보기 &gt;&gt;</span></a>
				</div>
				<div class="right_banner">
					<a href="/ko/svcenter/theClubInfo" target="_blank">통합회원을 위한<br>한섬
						온라인 멤버십 <span style="color: #c69c6c;">THE 클럽</span><span
						class="dtil_viw">자세히 보기 &gt;&gt;</span></a>
				</div>
			</div>
		</div>
		<!--//sub container-->
	</div>
</body>
</html>