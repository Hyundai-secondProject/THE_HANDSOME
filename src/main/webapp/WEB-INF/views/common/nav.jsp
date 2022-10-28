<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    	<!-- lnb -->
		<div class="lnb_wrap">
			<h4>
				<a href="/ko/mypage">마이페이지 <!-- 마이페이지 --></a>
			</h4>
			<div class="lnb">
				<dl>
					<dt>주문조회</dt>
					<dd>
						<a href="${pageContext.request.contextPath}/mypage/myorders2"
							onclick="GA_Event('마이페이지','LNB','주문/배송/반품/취소');">주문/배송/반품/취소</a>
					</dd>
				</dl>
				<dl>
					<dt>혜택관리</dt>
					<dd>
						<sec:authentication property="principal.username" var="MID"/>

						<a href="${pageContext.request.contextPath}/mypage/mycouponUnused?MID=${MID}"

							onclick="GA_Event('마이페이지','LNB','나의 쿠폰');">나의 쿠폰 <!-- 쿠폰함 --></a>
					</dd>
				</dl>
				<dl>
					<dt>나의 상품관리</dt>
					<dd>
				<a href="${pageContext.request.contextPath}/mypage/mywish"
					onclick="GA_Event('마이페이지','LNB','위시리스트');">위시리스트 <!-- 위시리스트 --></a>
					</dd>
					<dd>
				<a href="${pageContext.request.contextPath}/cart"
					onclick="GA_Event('마이페이지','LNB','위시리스트');">장바구니 <!-- 위시리스트 --></a>
					</dd>
				</dl>
				<dl>
					<dt>나의 정보관리</dt>
					<dd>
						<a href="${pageContext.request.contextPath}/mypage/PwCheck"
							onclick="GA_Event('마이페이지','LNB','개인정보 변경/탈퇴');">개인정보 변경/탈퇴</a>
					</dd>
				</dl>
			</div>
			<!-- ph_guide -->
			<div class="ph_guide">
				<p class="tlt">고객센터 운영 안내</p>
				<p class="phone">
					1800-5700<span style="color: #c69c6d;" class="txt">(유료)</span>
				</p>
				<p class="txt">
					평일(월~금)<br>am 09:00 ~ pm 18:00<span>토/일, 공휴일 휴무</span>
				</p>
				<a href="mailto:shophelp@thehandsome.com">shophelp<br>@thehandsome.com
				</a>
			</div>
			<!-- //ph_guide -->
		</div>
		<!-- //lnb -->