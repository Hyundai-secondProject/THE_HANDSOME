<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../common/header.jsp"%>

<div id="bodyWrap" class="products">
	<!--title-->
	<h3 class="cnts_title">
		<span> 이벤트 </span>
	</h3>
	<!--//title-->
	<div class="adaptive_wrap">
		<div class="tab_b event_tab">
			<ul id="tab">
				<li><a style="cursor: pointer"
					onclick="GA_Event('이벤트', '탭', this.text);changeTab(this, false);"
					class="on">진행 중인 이벤트</a></li>
				<li><a style="cursor: pointer"
					onclick="GA_Event('이벤트', '탭', this.text);changeTab(this, true);"
					class="">지난 이벤트</a></li>
			</ul>
		</div>
		<div role="wrapper" style="">
			<div class="event_list" id="contentsInProgress">
				<div class="event_box col1" style="" data-last="11">
					<a href="/magazine/eventdetail?ENO=1"
						onclick="GA_EventList($(this));goDetail('/ko/magazine/events/8804514453376');">
						<div class="pic">
							<img
								src= ${list[0].eimg}>
						</div>
						<div class="evt_txt_box">
							<p class="title">${list[0].etitle}</p>
							<p class="date"><fmt:formatDate value="${list[0].eissuedate}" type="both" pattern="YYYY.MM.dd" />  ~ <fmt:formatDate value="${list[0].eexpiredate}" type="both" pattern="YYYY.MM.dd" /></p>
						</div>
					</a>
				</div>
				<c:forEach var="list" items="${list}" begin="1" end="10" step="2">
				<div class="event_box col2" style="" data-last="11">
					<a href="/magazine/eventdetail?ENO=${list.eno}"
						onclick="GA_EventList($(this));goDetail('/ko/magazine/events/8804547254144');">
						<div class="pic">
							<img
								src=${list.eimg}>
						</div>
						<div class="evt_txt_box">
							<p class="title">${list.etitle}</p>
							<p class="date"><fmt:formatDate value="${list.eissuedate}" type="both" pattern="YYYY.MM.dd" /> ~ <fmt:formatDate value="${list.eexpiredate}" type="both" pattern="YYYY.MM.dd" /></p>
						</div>
					</a>
				</div>
				</c:forEach>
				<c:forEach var="list" items="${list}" begin="2" end="10" step="2">
				<div class="event_box col2" style="" data-last="11">
					<a href="/magazine/eventdetail?ENO=${list.eno}"
						onclick="GA_EventList($(this));goDetail('/ko/magazine/events/8804678293376');">
						<div class="pic">
							<img
								src=${list.eimg}>
						</div>
						<div class="evt_txt_box">
							<p class="title">${list.etitle}</p>
							<p class="date"><fmt:formatDate value="${list.eissuedate}" type="both" pattern="YYYY.MM.dd" /> ~ <fmt:formatDate value="${list.eexpiredate}" type="both" pattern="YYYY.MM.dd" /></p>
						</div>
					</a>
				</div>
				</c:forEach>
				<!--  <div class="event_box col2" style="" data-last="11">
					<a href="#"
						onclick="GA_EventList($(this));goDetail('/ko/magazine/events/8803891894144');">
						<div class="pic">
							<img
								src="http://cdn.thehandsome.com/pc/event/list/banner/20220428_37693141380296097_ko.jpg"
								data-full="http://cdn.thehandsome.com/pc/event/list/banner/20220428_37693141310898123_ko.jpg"
								data-half="http://cdn.thehandsome.com/pc/event/list/banner/20220428_37693141380296097_ko.jpg">
						</div>
						<div class="evt_txt_box">
							<p class="title">ONLY 카카오톡 채널 친구 전용 이벤트</p>
							<p class="date">2022.08.22 ~ 2022.12.31</p>
						</div>
					</a>
				</div>
				<div class="event_box col2" style="" data-last="11">
					<a href="#"
						onclick="GA_EventList($(this));goDetail('/ko/magazine/events/8798976661376');">
						<div class="pic">
							<img
								src="http://cdn.thehandsome.com/pc/event/list/banner/20220622_42448929585834893_ko.jpg"
								data-full="http://cdn.thehandsome.com/pc/event/list/banner/20220622_42448929489402828_ko.jpg"
								data-half="http://cdn.thehandsome.com/pc/event/list/banner/20220622_42448929585834893_ko.jpg">
						</div>
						<div class="evt_txt_box">
							<p class="title">현대카드 the Red 쇼핑바우처 사용 안내</p>
							<p class="date">2022.06.30 ~ 2022.12.31</p>
						</div>
					</a>
				</div>
				<div class="event_box col2" style="" data-last="11">
					<a href="#"
						onclick="GA_EventList($(this));goDetail('/ko/magazine/events/8804285110144');">
						<div class="pic">
							<img
								src="http://cdn.thehandsome.com/pc/event/list/banner/20220722_45059811501911688_ko.jpg"
								data-full="http://cdn.thehandsome.com/pc/event/list/banner/20220722_45059811424888484_ko.jpg"
								data-half="http://cdn.thehandsome.com/pc/event/list/banner/20220722_45059811501911688_ko.jpg">
						</div>
						<div class="evt_txt_box">
							<p class="title">더한섬닷컴 멤버십 THE 클럽</p>
							<p class="date">2022.08.01 ~ 2023.01.31</p>
						</div>
					</a>
				</div>
				<div class="event_box col2" style="" data-last="11">
					<a href="#"
						onclick="GA_EventList($(this));goDetail('/ko/magazine/events/8803433142144');">
						<div class="pic">
							<img
								src="http://cdn.thehandsome.com/pc/event/list/banner/20211228_27254734253642869_ko.jpg"
								data-full="http://cdn.thehandsome.com/pc/event/list/banner/20211228_27254734171768390_ko.jpg"
								data-half="http://cdn.thehandsome.com/pc/event/list/banner/20211228_27254734253642869_ko.jpg">
						</div>
						<div class="evt_txt_box">
							<p class="title">앱 다운로드 이벤트</p>
							<p class="date">2022.01.01 ~ 2022.12.31</p>
						</div>
					</a>
				</div>
				<div class="event_box col2" style="" data-last="11">
					<a href="#"
						onclick="GA_EventList($(this));goDetail('/ko/magazine/events/8804022966144');">
						<div class="pic">
							<img
								src="http://cdn.thehandsome.com/pc/event/list/banner/20220502_38037586188030266_ko.jpg"
								data-full="http://cdn.thehandsome.com/pc/event/list/banner/20220502_38037586103980443_ko.jpg"
								data-half="http://cdn.thehandsome.com/pc/event/list/banner/20220502_38037586188030266_ko.jpg">
						</div>
						<div class="evt_txt_box">
							<p class="title">더한섬닷컴 X 페이코 포인트 상시 적립 혜택</p>
							<p class="date">2022.06.22 ~ 2022.12.31</p>
						</div>
					</a>
				</div>
				<div class="event_box col2" style="" data-last="11">
					<a href="#"
						onclick="GA_EventList($(this));goDetail('/ko/magazine/events/8800156342144');">
						<div class="pic">
							<img
								src="http://cdn.thehandsome.com/pc/event/list/banner/20220919_50166311756836130_ko.jpg"
								data-full="http://cdn.thehandsome.com/pc/event/list/banner/20211230_27412406896072935_ko.jpg"
								data-half="http://cdn.thehandsome.com/pc/event/list/banner/20220919_50166311756836130_ko.jpg">
						</div>
						<div class="evt_txt_box">
							<p class="title">더한섬하우스 이벤트 모아보기</p>
							<p class="date">2019.12.13 ~ 2022.12.31</p>
						</div>
					</a>
				</div>
				<div class="event_box col2" style="" data-last="11">
					<a href="#"
						onclick="GA_EventList($(this));goDetail('/ko/magazine/events/8798681749376');">
						<div class="pic">
							<img
								src="http://cdn.thehandsome.com/pc/event/list/banner/20201101_4427969395077360_ko.jpg"
								data-full="http://cdn.thehandsome.com/pc/event/list/banner/20201101_4427969295555362_ko.jpg"
								data-half="http://cdn.thehandsome.com/pc/event/list/banner/20201101_4427969395077360_ko.jpg">
						</div>
						<div class="evt_txt_box">
							<p class="title">10월 신용카드 무이자 혜택</p>
							<p class="date">2022.10.01 ~ 2022.10.31</p>
						</div>
					</a>
				</div>
				<div class="event_box col2" style="" data-last="11">
					<a href="#"
						onclick="GA_EventList($(this));goDetail('/ko/magazine/events/8800680662912');">
						<div class="pic">
							<img
								src="http://cdn.thehandsome.com/pc/event/list/banner/20200421_50640990136096654_ko.jpg"
								data-full="http://cdn.thehandsome.com/pc/event/list/banner/20200421_50640990041171927_ko.jpg"
								data-half="http://cdn.thehandsome.com/pc/event/list/banner/20200421_50640990136096654_ko.jpg">
						</div>
						<div class="evt_txt_box">
							<p class="title">더한섬닷컴X현대카드 M포인트 제휴</p>
							<p class="date">2022.01.01 ~ 2022.12.31</p>
						</div>
					</a>
				</div>
			</div>
			<div class="morewrap">
				<a style="cursor: pointer" onclick="getEvents(this, false);">더보기</a>
			</div>
		</div>
		<div role="wrapper" style="display: none;">
			<div class="event_list" id="contentsInPast">
				<div class="event_box col2" style="" data-last="378">
					<a href="#"
						onclick="GA_EventList($(this));goDetail('/ko/magazine/events/8804645525376');">
						<div class="pic">
							<img
								src="http://cdn.thehandsome.com/pc/event/list/banner/20221004_51436125938592157_ko.jpg"
								data-full="http://cdn.thehandsome.com/pc/event/list/banner/20221004_51436125819425211_ko.jpg"
								data-half="http://cdn.thehandsome.com/pc/event/list/banner/20221004_51436125938592157_ko.jpg">
						</div>
						<div class="evt_txt_box">
							<p class="title">2022 FW GIFT with TIME HOMME</p>
							<p class="date">2022.10.05 ~ 2022.10.16</p>
						</div>
					</a>
				</div>
				<div class="event_box col2" style="" data-last="378">
					<a href="#"
						onclick="GA_EventList($(this));goDetail('/ko/magazine/events/8804612822912');">
						<div class="pic">
							<img
								src="http://cdn.thehandsome.com/pc/event/list/banner/20221004_51457933570330838_ko.jpg"
								data-full="http://cdn.thehandsome.com/pc/event/list/banner/20221004_51457933447209977_ko.jpg"
								data-half="http://cdn.thehandsome.com/pc/event/list/banner/20221004_51457933570330838_ko.jpg">
						</div>
						<div class="evt_txt_box">
							<p class="title">2022 FW GIFT with SYSTEM HOMME</p>
							<p class="date">2022.10.05 ~ 2022.10.16</p>
						</div>
					</a>
				</div>
				<div class="event_box col2" style="" data-last="378">
					<a href="#"
						onclick="GA_EventList($(this));goDetail('/ko/magazine/events/8804579989376');">
						<div class="pic">
							<img
								src="http://cdn.thehandsome.com/pc/event/list/banner/20221005_51515863880818330_ko.jpg"
								data-full="http://cdn.thehandsome.com/pc/event/list/banner/20221005_51515857491904602_ko.jpg"
								data-half="http://cdn.thehandsome.com/pc/event/list/banner/20221005_51515863880818330_ko.jpg">
						</div>
						<div class="evt_txt_box">
							<p class="title">2022 FW GIFT with SJSJ</p>
							<p class="date">2022.10.05 ~ 소진 시까지</p>
						</div>
					</a>
				</div>
				<div class="event_box col2" style="" data-last="378">
					<a href="#"
						onclick="GA_EventList($(this));goDetail('/ko/magazine/events/8804547450752');">
						<div class="pic">
							<img
								src="http://cdn.thehandsome.com/pc/event/list/banner/20220928_50936344591474494_ko.jpg"
								data-full="http://cdn.thehandsome.com/pc/event/list/banner/20220928_50936344486516402_ko.jpg"
								data-half="http://cdn.thehandsome.com/pc/event/list/banner/20220928_50936344591474494_ko.jpg">
						</div>
						<div class="evt_txt_box">
							<p class="title">2022 FW GIFT with SYSTEM</p>
							<p class="date">2022.10.05 ~ 소진 시까지</p>
						</div>
					</a>
				</div>
				<div class="event_box col2" style="" data-last="378">
					<a href="#"
						onclick="GA_EventList($(this));goDetail('/ko/magazine/events/8804612790144');">
						<div class="pic">
							<img
								src="http://cdn.thehandsome.com/pc/event/list/banner/20220930_51105538839875272_ko.jpg"
								data-full="http://cdn.thehandsome.com/pc/event/list/banner/20220930_51105538694910126_ko.jpg"
								data-half="http://cdn.thehandsome.com/pc/event/list/banner/20220930_51105538839875272_ko.jpg">
						</div>
						<div class="evt_txt_box">
							<p class="title">10월 뷰티 릴레이 체험단 : 오에라</p>
							<p class="date">2022.10.06 ~ 2022.10.12</p>
						</div>
					</a>
				</div>
				<div class="event_box col2" style="" data-last="378">
					<a href="#"
						onclick="GA_EventList($(this));goDetail('/ko/magazine/events/8804514486144');">
						<div class="pic">
							<img
								src="http://cdn.thehandsome.com/pc/event/list/banner/20220927_50847414081375558_ko.jpg"
								data-full="http://cdn.thehandsome.com/pc/event/list/banner/20220927_50847413914033207_ko.jpg"
								data-half="http://cdn.thehandsome.com/pc/event/list/banner/20220927_50847414081375558_ko.jpg">
						</div>
						<div class="evt_txt_box">
							<p class="title">2022 TVC 캠페인 : 한 순간을 살아도 섬세하게</p>
							<p class="date">2022.09.30 ~ 2022.10.12</p>
						</div>
					</a>
				</div>
				<div class="event_box col2" style="" data-last="378">
					<a href="#"
						onclick="GA_EventList($(this));goDetail('/ko/magazine/events/8804612757376');">
						<div class="pic">
							<img
								src="http://cdn.thehandsome.com/pc/event/list/banner/20220927_50853582390904712_ko.jpg"
								data-full="http://cdn.thehandsome.com/pc/event/list/banner/20220927_50853582249079707_ko.jpg"
								data-half="http://cdn.thehandsome.com/pc/event/list/banner/20220927_50853582390904712_ko.jpg">
						</div>
						<div class="evt_txt_box">
							<p class="title">2022 FW GIFT with O'2nd</p>
							<p class="date">2022.09.28 ~ 소진 시까지</p>
						</div>
					</a>
				</div>
				<div class="event_box col2" style="" data-last="378">
					<a href="#"
						onclick="GA_EventList($(this));goDetail('/ko/magazine/events/8804547417984');">
						<div class="pic">
							<img
								src="http://cdn.thehandsome.com/pc/event/list/banner/20220922_50419338977715208_ko.jpg"
								data-full="http://cdn.thehandsome.com/pc/event/list/banner/20220922_50419338914134844_ko.jpg"
								data-half="http://cdn.thehandsome.com/pc/event/list/banner/20220922_50419338977715208_ko.jpg">
						</div>
						<div class="evt_txt_box">
							<p class="title">2022 FW GIFT with TIME</p>
							<p class="date">2022.09.23 ~ 소진 시까지</p>
						</div>
					</a>
				</div>
				<div class="event_box col2" style="" data-last="378">
					<a href="#"
						onclick="GA_EventList($(this));goDetail('/ko/magazine/events/8804514584448');">
						<div class="pic">
							<img
								src="http://cdn.thehandsome.com/pc/event/list/banner/20220922_50391750740690601_ko.jpg"
								data-full="http://cdn.thehandsome.com/pc/event/list/banner/20220922_50391750582501826_ko.jpg"
								data-half="http://cdn.thehandsome.com/pc/event/list/banner/20220922_50391750740690601_ko.jpg">
						</div>
						<div class="evt_txt_box">
							<p class="title">2022 FW GIFT with the CASHMERE</p>
							<p class="date">2022.09.23 ~ 소진 시까지</p>
						</div>
					</a>
				</div>
				<div class="event_box col2" style="" data-last="378">
					<a href="#"
						onclick="GA_EventList($(this));goDetail('/ko/magazine/events/8804612921216');">
						<div class="pic">
							<img
								src="http://cdn.thehandsome.com/pc/event/list/banner/20220928_50942063842534756_ko.jpg"
								data-full="http://cdn.thehandsome.com/pc/event/list/banner/20220928_50942063742678399_ko.jpg"
								data-half="http://cdn.thehandsome.com/pc/event/list/banner/20220928_50942063842534756_ko.jpg">
						</div>
						<div class="evt_txt_box">
							<p class="title">10월 신한카드 즉시할인 행사</p>
							<p class="date">2022.10.04 ~ 2022.10.05</p>
						</div>
					</a>
				</div>
			</div>
			<div class="morewrap">
				<a style="cursor: pointer" onclick="getEvents(this, true);">더보기</a>
			</div>-->
		</div>
	</div>
</div>
<!-- //bodyWrap -->
<%@ include file="../common/footer.jsp"%>