<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>


<div id="bodyWrap" class="products">

	<!--title-->
	<h3 class="cnts_title">
		<span> 이벤트 </span>
	</h3>
	<!--//title-->
	<div class="sub_container">
		<div class="mgz_view">
			<div class="evt_top">
				<p class="subj">${detaillist.etitle}</p>
				<p class="date">
					<fmt:formatDate value="${detaillist.eissuedate}" type="both"
						pattern="YYYY.MM.dd" />
					~
					<fmt:formatDate value="${detaillist.eexpiredate}" type="both"
						pattern="YYYY.MM.dd" />
				</p>
				<div class="sns_wrap a2a_kit a2a_kit_size_32 a2a_default_style"
					id="shareSns" style="right: 0px; line-height: 32px;"
					data-a2a-url="http://www.thehandsome.com:80/ko/magazine/events/8804514453376"
					data-a2a-title="[7th SOME FESTIVAL] EVENT PARK">
					<div class="sharing">
						<a class="facebook a2a_button_facebook" target="_blank"
							href="/#facebook" rel="nofollow noopener"><span
							class="a2a_svg a2a_s__default a2a_s_facebook a2a_img_text"
							style="background-color: rgb(24, 119, 242);"><svg
									focusable="false" aria-hidden="true"
									xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32">
									<path fill="#FFF"
										d="M17.78 27.5V17.008h3.522l.527-4.09h-4.05v-2.61c0-1.182.33-1.99 2.023-1.99h2.166V4.66c-.375-.05-1.66-.16-3.155-.16-3.123 0-5.26 1.905-5.26 5.405v3.016h-3.53v4.09h3.53V27.5h4.223z"></path></svg></span>페이스북</a>
						<a class="twitter a2a_button_twitter" target="_blank"
							href="/#twitter" rel="nofollow noopener"><span
							class="a2a_svg a2a_s__default a2a_s_twitter a2a_img_text"
							style="background-color: rgb(29, 155, 240);"><svg
									focusable="false" aria-hidden="true"
									xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32">
									<path fill="#FFF"
										d="M28 8.557a9.913 9.913 0 01-2.828.775 4.93 4.93 0 002.166-2.725 9.738 9.738 0 01-3.13 1.194 4.92 4.92 0 00-3.593-1.55 4.924 4.924 0 00-4.794 6.049c-4.09-.21-7.72-2.17-10.15-5.15a4.942 4.942 0 00-.665 2.477c0 1.71.87 3.214 2.19 4.1a4.968 4.968 0 01-2.23-.616v.06c0 2.39 1.7 4.38 3.952 4.83-.414.115-.85.174-1.297.174-.318 0-.626-.03-.928-.086a4.935 4.935 0 004.6 3.42 9.893 9.893 0 01-6.114 2.107c-.398 0-.79-.023-1.175-.068a13.953 13.953 0 007.55 2.213c9.056 0 14.01-7.507 14.01-14.013 0-.213-.005-.426-.015-.637.96-.695 1.795-1.56 2.455-2.55z"></path></svg></span>트위터</a>
					</div>
					<div style="clear: both;"></div>
				</div>
				<script type="text/javascript">
					var a2a_config = a2a_config || {};
					a2a_config.num_services = 10;
					a2a_config.linkname = $('.subj').text();
					a2a_config.linkurl = 'http://www.thehandsome.com:80/ko/magazine/events/8804514453376';
					a2a_config.track_links = 'googl';
				</script>
				<script type="text/javascript"
					src="//static.addtoany.com/menu/page.js"></script>
			</div>
			<div class="evt_cnts">
				<!-- 7주년 메인 이벤트 S -->
				<div class="evt-7th-main">
					<!-- 221014 7주년 퀴즈이벤트 S -->
					<a href="#" class="evt_floating_banner"
						onclick="outLink('http://some7estival.thehandsome.com/');"><img
						src="http://cdn.thehandsome.com/_ui/desktop/common/images/event/event_7th/evt_main/evt_floating_banner.png"
						alt="썸페스티벌"></a>
					<!-- 221014 7주년 퀴즈이벤트 E -->
					<div class="evt-video-wrap">
						<video autoplay="" muted=""
							poster="http://cdn.thehandsome.com/_ui/desktop/common/images/event/event_7th/evt_main/img_video_post.jpg">
							<source
								src="http://cdn.thehandsome.com/_ui/desktop/common/images/event/event_7th/evt_main/video_main_evt.mp4"
								type="video/mp4">
						</video>
					</div>
					<div>
						<img
							src="http://cdn.thehandsome.com/_ui/desktop/common/images/event/event_7th/evt_main/img_main_evt_list.jpg">
					</div>
					<div class="evt7th-main-event01">
						<div>
							<img
								src="http://cdn.thehandsome.com/_ui/desktop/common/images/event/event_7th/evt_main/img_main_evt01_1.jpg">
						</div>
						<div class="coupon-wrap">
							<div>
								<img
									src="http://cdn.thehandsome.com/_ui/desktop/common/images/event/event_7th/evt_main/img_main_evt01_coupon.gif">
							</div>
						</div>
						<div class="btn-coupon-wrap ready">
						<sec:authorize access="hasRole('ROLE_MEMBER')">
						<sec:authentication property="principal.username" var="MID"/>
						</sec:authorize>
							<a href="/magazine/makecoupon?ENO=${detaillist.eno}&MID=${MID}" onclick="" class="btn-coupon">
								<img src= ${detaillist.edetailimg} >
							</a>
						</div>
						<div class="btn-coupon-wrap already" style="display: none">
							<a href="" class="btn-mycoupon"> <img
								src="http://cdn.thehandsome.com/_ui/desktop/common/images/event/event_7th/evt_main/img_btn_coupon_1.jpg"
								alt="나의쿠폰함">
							</a>
						</div>
						<span><img
							src="http://cdn.thehandsome.com/_ui/desktop/common/images/event/event_7th/evt_main/img_main_evt01_2.jpg"></span>
					</div>
					<div>
						<img
							src="http://cdn.thehandsome.com/_ui/desktop/common/images/event/event_7th/evt_main/img_main_evt02.jpg">
					</div>
					<div>
						<img
							src="http://cdn.thehandsome.com/_ui/desktop/common/images/event/event_7th/evt_main/img_main_evt03.jpg">
					</div>
					<div class="evt7th-main-notice-wrap">
						<div class="evt7th-main-notice-title on">
							<img
								src="http://cdn.thehandsome.com/_ui/desktop/common/images/event/event_7th/evt_main/img_main_evt_notice_tit.jpg"
								alt=""> <img class="evt7th-main-notice-icon"
								src="http://cdn.thehandsome.com/_ui/desktop/common/images/event/event_7th/evt_main/img_btn_more.png"
								alt="">
						</div>
						<div class="evt7th-main-notice" style="display: block;">
							<img
								src="http://cdn.thehandsome.com/_ui/desktop/common/images/event/event_7th/evt_main/img_main_evt_notice.jpg"
								alt="">
						</div>
						<div>
							<img
								src="http://cdn.thehandsome.com/_ui/desktop/common/images/event/event_7th/evt_main/img_main_evt_notice_line.jpg"
								alt="">
						</div>
					</div>
				</div>
				<!-- 7주년 메인 이벤트 E -->
			</div>
		</div>
		<div class="btn_list_wrap">
			<a href="/ko/magazine/events" class="btn_list">목록</a>
		</div>
	</div>
</div>

<%@ include file="../common/footer.jsp"%>