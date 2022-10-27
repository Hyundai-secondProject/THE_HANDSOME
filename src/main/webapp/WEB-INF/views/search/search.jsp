<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp"%>
<div id="bodyWrap" class="body_wrap">
	<div class="adaptive_wrap">
		<!-- identity 결과내 재검색 -->
		<!-- brand_result_search -->
		<div class="br_result_search">
			<!-- result_inner_top -->
			<div class="result_inner_top">
				<div class="result_inner_top_left">
					<h2 class="result_tlt">
						<strong class="schr_result">양말</strong>
						<!-- SearchWord -->
						<p>
							검색결과 <span id="search_result_keyword_state">총 <b>368</b>개
								<!-- 검색된 총 제품의 갯수 넣는곳 --> 상품
							</span>
						</p>
					</h2>
					<div class="related keyword" style="display: none;">
						<p>연관검색어</p>
						<ul id="search_recommend">
						</ul>
					</div>
					<div class="style keyword" id="search_style_menu_parent"
						style="display: none;"></div>
				</div>


			</div>
			<!--//result_inner_top-->
			<!--result_inner_bottom -->
		</div>
		<!-- //brand_result_search -->

		<div id="transparent_mask_1" style="display: none;"></div>
		<!--sr_category_menu -->
		<div class="sr_category_menu" style="top: inherit">

			<ul class="sr_category_menu_dep1" id="search_menuGroup">
				<li>

					<div class="cate_select">
						<div class="cate_depth_3">
							<!-- 2depth -->
							<!-- 3depth -->
							<div class="autoscroll" style="height: 195px; display: none;">
								<ul class="list">
									<li><a href="javascript:void(0);">양말<!-- 실제 파라미터 --> <span
											style="display: none;">잡화&gt;기타 ACC&gt;양말</span> <span>
												(351)</span>
									</a></li>
								</ul>
							</div>
							<!-- 2depth -->
							<!-- 3depth -->
							<div class="autoscroll" style="height: 195px; display: none;">
								<ul class="list">
									<li><a href="javascript:void(0);">양말<!-- 실제 파라미터 --> <span
											style="display: none;">골프&gt;ACC&gt;양말</span> <span>
												(11)</span>
									</a></li>
								</ul>
							</div>
							<!-- 2depth -->
							<!-- 3depth -->
							<div class="autoscroll" style="height: 195px; display: none;">
								<ul class="list">
									<li><a href="javascript:void(0);">잡화<!-- 실제 파라미터 --> <span
											style="display: none;">라이프스타일&gt;키즈&gt;잡화</span> <span>
												(3)</span>
									</a></li>
								</ul>
							</div>
							<!-- 2depth -->
							<!-- 3depth -->
							<div class="autoscroll" style="height: 195px; display: none;">
								<ul class="list">
									<li><a href="javascript:void(0);">패브릭<!-- 실제 파라미터 -->
											<span style="display: none;">라이프스타일&gt;홈&gt;패브릭</span> <span>
												(1)</span>
									</a></li>
								</ul>
							</div>
							<!-- 2depth -->
							<!-- 3depth -->
							<div class="autoscroll" style="height: 195px; display: none;">
								<ul class="list">
									<li><a href="javascript:void(0);">클러치 백<!-- 실제 파라미터 -->
											<span style="display: none;">잡화&gt;여성백&gt;클러치 백</span> <span>
												(1)</span>
									</a></li>
								</ul>
							</div>
							<!-- 2depth -->
							<!-- 3depth -->
							<div class="autoscroll" style="height: 195px; display: none;">
								<ul class="list">
									<li><a href="javascript:void(0);">클러치 백<!-- 실제 파라미터 -->
											<span style="display: none;">잡화&gt;남성백&gt;클러치 백</span> <span>
												(1)</span>
									</a></li>
								</ul>
							</div>
						</div>
					</div>
				</li>
				<li class="filter">
					<h3 class="side_f">
						브랜드<a href="javascript:groupReset('01');" class="reset">초기화</a>
					</h3>
					<div class="dropdown_menu_wrap" style="display: block;">
						<ul id="filter_brand_search" class="sr_category_menu_dep2 dep2_3">
							<li><input type="checkbox" id="brand_ck1" name="brand_ck"
								value="SJSJ"><label for="brand_ck1">SJSJ</label></li>
							<li><input type="checkbox" id="brand_ck2" name="brand_ck"
								value="SYSTEM"><label for="brand_ck2">SYSTEM</label></li>
							<li><input type="checkbox" id="brand_ck3" name="brand_ck"
								value="FOURM MEN'S LOUNGE"><label for="brand_ck3">FOURM
									MEN'S LOUNGE</label></li>
							<li><input type="checkbox" id="brand_ck4" name="brand_ck"
								value="O'2nd"><label for="brand_ck4">O'2nd</label></li>
							<li><input type="checkbox" id="brand_ck5" name="brand_ck"
								value="LATT"><label for="brand_ck5">LATT</label></li>
							<li><input type="checkbox" id="brand_ck6" name="brand_ck"
								value="TOM GREYHOUND"><label for="brand_ck6">TOM
									GREYHOUND</label></li>
							<li><input type="checkbox" id="brand_ck7" name="brand_ck"
								value="LANVIN COLLECTION"><label for="brand_ck7">LANVIN
									COLLECTION</label></li>
							<li><input type="checkbox" id="brand_ck8" name="brand_ck"
								value="FOURM THE STORE"><label for="brand_ck8">FOURM
									THE STORE</label></li>
							<li><input type="checkbox" id="brand_ck9" name="brand_ck"
								value="TIME HOMME"><label for="brand_ck9">TIME
									HOMME</label></li>
							<li><input type="checkbox" id="brand_ck10" name="brand_ck"
								value="MINE"><label for="brand_ck10">MINE</label></li>
							<li><input type="checkbox" id="brand_ck11" name="brand_ck"
								value="CLUB MONACO"><label for="brand_ck11">CLUB
									MONACO</label></li>
							<li><input type="checkbox" id="brand_ck12" name="brand_ck"
								value="MUE"><label for="brand_ck12">MUE</label></li>
							<li><input type="checkbox" id="brand_ck13" name="brand_ck"
								value="SYSTEM HOMME"><label for="brand_ck13">SYSTEM
									HOMME</label></li>
							<li><input type="checkbox" id="brand_ck14" name="brand_ck"
								value="TIME"><label for="brand_ck14">TIME</label></li>
							<li><input type="checkbox" id="brand_ck15" name="brand_ck"
								value="OBZEE"><label for="brand_ck15">OBZEE</label></li>
							<li><input type="checkbox" id="brand_ck16" name="brand_ck"
								value="LANVIN BLANC"><label for="brand_ck16">LANVIN
									BLANC</label></li>
							<li><input type="checkbox" id="brand_ck17" name="brand_ck"
								value="the CASHMERE"><label for="brand_ck17">the
									CASHMERE</label></li>
							<li><input type="checkbox" id="brand_ck18" name="brand_ck"
								value="BALLY"><label for="brand_ck18">BALLY</label></li>
							<li><input type="checkbox" id="brand_ck19" name="brand_ck"
								value="LANVIN PARIS"><label for="brand_ck19">LANVIN
									PARIS</label></li>
						</ul>
					</div>
				</li>
				<li class="filter">
					<h3 class="side_f">
						가격<a href="javascript:groupReset('02');" class="reset">초기화</a>
					</h3>
					<div class="dropdown_menu_wrap" style="display: block;">
						<ul class="sr_category_menu_dep2 price">
							<li><input type="checkbox" id="price_ck1" name="price_ck"
								value="A"><label for="price_ck1">10만원 이하</label></li>
							<li><input type="checkbox" id="price_ck2" name="price_ck"
								value="B"><label for="price_ck2">10만원-30만원</label></li>
							<li><input type="checkbox" id="price_ck3" name="price_ck"
								value="C"><label for="price_ck3">30만원-50만원</label></li>
							<li><input type="checkbox" id="price_ck4" name="price_ck"
								value="D"><label for="price_ck4">50만원-100만원</label></li>
							<li><input type="checkbox" id="price_ck5" name="price_ck"
								value="E"><label for="price_ck5">100만원 이상</label></li>
						</ul>
						<div class="filter_apply">
							<!-- <a href="javascript:void(0);" class="apply">적용</a> -->
							<a href="javascript:groupReset('02');" class="reset">초기화</a> <a
								href="javascript:void(0);" class="close">닫기</a>
						</div>
					</div>
				</li>
				<li class="filter">
					<h3 class="side_f">
						색상<a href="javascript:groupReset('03');" class="reset">초기화</a>
					</h3>
					<div class="dropdown_menu_wrap" style="display: block;">
						<ul id="filter_color_search"
							class="sr_category_menu_dep2 color_chip clearfix">
							<li><a
								href="javascript:document.getElementById('asyncSearchItem').scrollIntoView();"
								class="c_bg" style="background: #000000">#000000</a></li>
							<li><a
								href="javascript:document.getElementById('asyncSearchItem').scrollIntoView();"
								class="c_bg" style="background: #fae7c4">#fae7c4</a></li>
							<li><a
								href="javascript:document.getElementById('asyncSearchItem').scrollIntoView();"
								class="c_bg" style="background: #444445">#444445</a></li>
							<li><a
								href="javascript:document.getElementById('asyncSearchItem').scrollIntoView();"
								class="c_bg" style="background: #061836">#061836</a></li>
							<li><a
								href="javascript:document.getElementById('asyncSearchItem').scrollIntoView();"
								class="c_bg" style="background: #fff8d9">#fff8d9</a></li>
							<li><a
								href="javascript:document.getElementById('asyncSearchItem').scrollIntoView();"
								class="c_bg" style="background: #0f45bc">#0f45bc</a></li>
							<li><a
								href="javascript:document.getElementById('asyncSearchItem').scrollIntoView();"
								class="c_bg" style="background: #ffffff">#ffffff</a></li>
							<li><a
								href="javascript:document.getElementById('asyncSearchItem').scrollIntoView();"
								class="c_bg" style="background: #673915">#673915</a></li>
							<li><a
								href="javascript:document.getElementById('asyncSearchItem').scrollIntoView();"
								class="c_bg" style="background: #534741">#534741</a></li>
							<li><a
								href="javascript:document.getElementById('asyncSearchItem').scrollIntoView();"
								class="c_bg" style="background: #ea589b">#ea589b</a></li>
							<li><a
								href="javascript:document.getElementById('asyncSearchItem').scrollIntoView();"
								class="c_bg" style="background: #4c2b7b">#4c2b7b</a></li>
							<li><a
								href="javascript:document.getElementById('asyncSearchItem').scrollIntoView();"
								class="c_bg" style="background: #0f6f0e">#0f6f0e</a></li>
							<li><a
								href="javascript:document.getElementById('asyncSearchItem').scrollIntoView();"
								class="c_bg" style="background: #876c41">#876c41</a></li>
							<li><a
								href="javascript:document.getElementById('asyncSearchItem').scrollIntoView();"
								class="c_bg" style="background: #ffea0a">#ffea0a</a></li>
							<li><a
								href="javascript:document.getElementById('asyncSearchItem').scrollIntoView();"
								class="c_bg" style="background: #465626">#465626</a></li>
							<li><a
								href="javascript:document.getElementById('asyncSearchItem').scrollIntoView();"
								class="c_bg" style="background: #ee6423">#ee6423</a></li>
							<li><a
								href="javascript:document.getElementById('asyncSearchItem').scrollIntoView();"
								class="c_bg" style="background: #95d0ab">#95d0ab</a></li>
							<li><a
								href="javascript:document.getElementById('asyncSearchItem').scrollIntoView();"
								class="c_bg" style="background: #5d682d">#5d682d</a></li>
							<li><a
								href="javascript:document.getElementById('asyncSearchItem').scrollIntoView();"
								class="c_bg" style="background: #833b95">#833b95</a></li>
							<li><a
								href="javascript:document.getElementById('asyncSearchItem').scrollIntoView();"
								class="c_bg" style="background: #9c81bb">#9c81bb</a></li>
							<li><a
								href="javascript:document.getElementById('asyncSearchItem').scrollIntoView();"
								class="c_bg" style="background: #ffc733">#ffc733</a></li>
							<li><a
								href="javascript:document.getElementById('asyncSearchItem').scrollIntoView();"
								class="c_bg" style="background: #741313">#741313</a></li>
							<li><a
								href="javascript:document.getElementById('asyncSearchItem').scrollIntoView();"
								class="c_bg" style="background: #a2d6f3">#a2d6f3</a></li>
							<li><a
								href="javascript:document.getElementById('asyncSearchItem').scrollIntoView();"
								class="c_bg" style="background: #ec1e24">#ec1e24</a></li>
							<li><a
								href="javascript:document.getElementById('asyncSearchItem').scrollIntoView();"
								class="c_bg" style="background: #c0c0c0">#c0c0c0</a></li>
						</ul>
						<p>컬러칩과 검색된 상품의 실제 색상은 차이가 있을 수 있습니다.</p>
						<div class="filter_apply">
							<!-- <a href="#;" class="apply">적용</a> -->
							<a href="javascript:groupReset('03');" class="reset">초기화</a> <a
								href="javascript:void(0);" class="close">닫기</a>
						</div>
					</div>
				</li>


			</ul>
			<!-- //sr_category_menu_dep1-->
		</div>
		<!--//sr_category_menu -->

		<!-- sortby-->
		<div class="sr_sortby">

			<ul class="sortSearch">
				<li><a href="javascript:void(0);" title="lowPrice">낮은가격순</a></li>
				<li><a href="javascript:void(0);" title="highPrice">높은가격순</a></li>

			</ul>
		</div>
		<div class="s_sr_sortby">
			<a href="javascript:void(0);" class="select"><span
				class="current">최신 상품순</span><span class="ico_arr">arrow</span></a>
			<ul class="sortSearch">
				<li><a href="javascript:void(0);" title="newest" class="on">최신
						상품순</a></li>
				<li><a href="javascript:void(0);" title="lowPrice">낮은가격순</a></li>
				<li><a href="javascript:void(0);" title="highPrice">높은가격순</a></li>
				<li><a href="javascript:void(0);" title="sell">판매량순</a></li>
				<li><a href="javascript:void(0);" title="sail">세일상품 우선</a></li>
			</ul>
		</div>
		<div class="filter_words" style="display: none;">
			<p>선택한 조건</p>
			<ul>
				<li id="selectedSearchCondition"><a
					href="javascript:groupAllReset();">전체 해제</a></li>
			</ul>
		</div>
		<!-- //sortby-->

		<!-- 상품이 존재하지 않는 경우 -->
		<!--                 <div class="no_result_found" > -->
		<div id="no_found" class="no_result_found" style="display: none;">
			<p>
				<!-- 선택한 조건에 맞는 상품이 없습니다.<br>
                조건을 다시 선택해주세요. -->
				선택한 조건에 맞는 상품이 없습니다.<br> 조건을 다시 선택해주세요.
			</p>
		</div>

		<!-- 상품이 존재하는 경우 -->
		<div class="items_list cate_item4">
			<ul id="asyncSearchItem" class="clearfix" style="display: block;">
				<li><div class="item_box">
						<a href="/p/TM2B9ACK492W" class="item_info1"
							onclick="beshow_tagging(this);" link="/p/TM2B9ACK492W"
							price="17,400"
							image="http://newmedia.thehandsome.com/TM/2B/FW/TM2B9ACK492W_DB_T01.jpg"
							prdname="크로셰 라인 니트 양말" code="TM2B9ACK492W"><span
							class="item_img"><img
								src="http://newmedia.thehandsome.com/TM/2B/FW/TM2B9ACK492W_DB_T01.jpg"
								alt="http://newmedia.thehandsome.com/TM/2B/FW/TM2B9ACK492W_DB_T01.jpg"
								class="respon_image"><img
								src="http://newmedia.thehandsome.com/TM/2B/FW/TM2B9ACK492W_IV_T01.jpg"
								alt="http://newmedia.thehandsome.com/TM/2B/FW/TM2B9ACK492W_IV_T01.jpg"
								class="respon_image" style="display: none"></span><span
							class="item_size"
							style="display: none; height: 19.9978px; padding-top: 14.9922px; margin-top: 0px; padding-bottom: 14.9922px; margin-bottom: 0px;"
							id="item_size1"><div id="TM2B9ACK492W_DB">
									<span>FR</span>
								</div>
								<div id="TM2B9ACK492W_IV" style="display: none">
									<span>FR</span>
								</div></span></a><a href="/p/TM2B9ACK492W" class="item_info2"><span
							class="brand">TIME</span><span class="title">크로셰 라인 니트 <!--HS-->양말<!--HE--></span><span
							class="price price_TM2B9ACK492W"><span
								id="price_TM2B9ACK492W_DB"><span>￦17,400</span> <del
										class="del_price_201029">￦29,000</del><span
									class="discount_rate_201029">40%</span></span></span><span class="flag"><input
								type="hidden" id="productCd1" name="productCd"
								value="TM2B9ACK492W"><span class="flag_typ1">NEW</span><span
								class="hsDelivery1902 ch1904" id="hsDelivery1"
								style="display: none;">한섬딜리버리</span> </span></a>
						<div class="color_more_wrap">
							<a href="javascript:void(0);" class="cl wt"
								style="background: #4d342c url('http://newmedia.thehandsome.com/TM/2B/FW/TM2B9ACK492W_DB_C01.jpg/dims/resize/13x14');"></a>
							<a href="javascript:void(0);" class="cl wt"
								style="background: #fbfaea url('http://newmedia.thehandsome.com/TM/2B/FW/TM2B9ACK492W_IV_C01.jpg/dims/resize/13x14');"></a>
						</div>
					</div></li>
				<li><div class="item_box">
						<a href="/p/TG2C7ACK008MHY" class="item_info1"
							onclick="beshow_tagging(this);" link="/p/TG2C7ACK008MHY"
							price="35,000"
							image="http://newmedia.thehandsome.com/TG/2C/FW/TG2C7ACK008MHY_GN_T01.jpg"
							prdname="[HERESY] 플라워 양말" code="TG2C7ACK008MHY"><span
							class="item_img"><img
								src="http://newmedia.thehandsome.com/TG/2C/FW/TG2C7ACK008MHY_GN_T01.jpg"
								alt="http://newmedia.thehandsome.com/TG/2C/FW/TG2C7ACK008MHY_GN_T01.jpg"
								class="respon_image"></span><span class="item_size"
							style="display: none; height: 16.7065px; padding-top: 12.6859px; margin-top: 0px; padding-bottom: 12.6859px; margin-bottom: 0px;"
							id="item_size2"><div id="TG2C7ACK008MHY_GN">
									<span>FR</span>
								</div></span></a><a href="/p/TG2C7ACK008MHY" class="item_info2"><span
							class="brand">TOM GREYHOUND</span><span class="title">[HERESY]
								플라워 <!--HS-->양말<!--HE-->
						</span><span class="price price_TG2C7ACK008MHY"><span
								id="price_TG2C7ACK008MHY_GN"><span>￦35,000</span></span></span><span
							class="flag"><input type="hidden" id="productCd2"
								name="productCd" value="TG2C7ACK008MHY"><span
								class="flag_typ1">NEW</span><span class="hsDelivery1902 ch1904"
								id="hsDelivery2" style="display: none;">한섬딜리버리</span> </span></a>
						<div class="color_more_wrap">
							<a href="javascript:void(0);" class="cl wt"
								style="background: #316948 url('http://newmedia.thehandsome.com/TG/2C/FW/TG2C7ACK008MHY_GN_C01.jpg/dims/resize/13x14');"></a>
						</div>
					</div></li>
				<li><div class="item_box">
						<a href="/p/TG2C7ACK007MHY" class="item_info1"
							onclick="beshow_tagging(this);" link="/p/TG2C7ACK007MHY"
							price="35,000"
							image="http://newmedia.thehandsome.com/TG/2C/FW/TG2C7ACK007MHY_OG_T01.jpg"
							prdname="[HERESY] 룬 양말" code="TG2C7ACK007MHY"><span
							class="item_img"><img
								src="http://newmedia.thehandsome.com/TG/2C/FW/TG2C7ACK007MHY_OG_T01.jpg"
								alt="http://newmedia.thehandsome.com/TG/2C/FW/TG2C7ACK007MHY_OG_T01.jpg"
								class="respon_image"></span><span class="item_size"
							style="display: none; height: 18.7px; padding-top: 14.2214px; margin-top: 0px; padding-bottom: 14.2214px; margin-bottom: 0px;"
							id="item_size3"><div id="TG2C7ACK007MHY_OG">
									<span>FR</span>
								</div></span></a><a href="/p/TG2C7ACK007MHY" class="item_info2"><span
							class="brand">TOM GREYHOUND</span><span class="title">[HERESY]
								룬 <!--HS-->양말<!--HE-->
						</span><span class="price price_TG2C7ACK007MHY"><span
								id="price_TG2C7ACK007MHY_OG"><span>￦35,000</span></span></span><span
							class="flag"><input type="hidden" id="productCd3"
								name="productCd" value="TG2C7ACK007MHY"><span
								class="flag_typ1">NEW</span><span class="hsDelivery1902 ch1904"
								id="hsDelivery3" style="display: none;">한섬딜리버리</span> </span></a>
						<div class="color_more_wrap">
							<a href="javascript:void(0);" class="cl wt"
								style="background: #ee6423 url('http://newmedia.thehandsome.com/TG/2C/FW/TG2C7ACK007MHY_OG_C01.jpg/dims/resize/13x14');"></a>
						</div>
					</div></li>
				<li class="mr1m"><div class="item_box">
						<a href="/p/TG2C7ACK006MHY" class="item_info1"
							onclick="beshow_tagging(this);" link="/p/TG2C7ACK006MHY"
							price="35,000"
							image="http://newmedia.thehandsome.com/TG/2C/FW/TG2C7ACK006MHY_BK_T01.jpg"
							prdname="[HERESY] 루니솔라 양말" code="TG2C7ACK006MHY"><span
							class="item_img"><img
								src="http://newmedia.thehandsome.com/TG/2C/FW/TG2C7ACK006MHY_BK_T01.jpg"
								alt="http://newmedia.thehandsome.com/TG/2C/FW/TG2C7ACK006MHY_BK_T01.jpg"
								class="respon_image"></span><span class="item_size"
							style="display: none;" id="item_size4"><div
									id="TG2C7ACK006MHY_BK">
									<span>FR</span>
								</div></span></a><a href="/p/TG2C7ACK006MHY" class="item_info2"><span
							class="brand">TOM GREYHOUND</span><span class="title">[HERESY]
								루니솔라 <!--HS-->양말<!--HE-->
						</span><span class="price price_TG2C7ACK006MHY"><span
								id="price_TG2C7ACK006MHY_BK"><span>￦35,000</span></span></span><span
							class="flag"><input type="hidden" id="productCd4"
								name="productCd" value="TG2C7ACK006MHY"><span
								class="flag_typ1">NEW</span><span class="hsDelivery1902 ch1904"
								id="hsDelivery4" style="display: none;">한섬딜리버리</span> </span></a>
						<div class="color_more_wrap">
							<a href="javascript:void(0);" class="cl wt"
								style="background: #000000 url('http://newmedia.thehandsome.com/TG/2C/FW/TG2C7ACK006MHY_BK_C01.jpg/dims/resize/13x14');"></a>
						</div>
					</div></li>
				<li><div class="item_box">
						<a href="/p/TG2C9ACK002WDI" class="item_info1"
							onclick="beshow_tagging(this);" link="/p/TG2C9ACK002WDI"
							price="22,000"
							image="http://newmedia.thehandsome.com/TG/2C/FW/TG2C9ACK002WDI_ML_T01.jpg"
							prdname="[ADIDAS] 미드 컷 크루 양말 세트" code="TG2C9ACK002WDI"><span
							class="item_img"><img
								src="http://newmedia.thehandsome.com/TG/2C/FW/TG2C9ACK002WDI_ML_T01.jpg"
								alt="http://newmedia.thehandsome.com/TG/2C/FW/TG2C9ACK002WDI_ML_T01.jpg"
								class="respon_image"></span><span class="item_size"
							style="display: none; height: 20px; padding-top: 15px; margin-top: 0px; padding-bottom: 15px; margin-bottom: 0px;"
							id="item_size5"><div id="TG2C9ACK002WDI_ML">
									<span>M</span>
								</div></span></a><a href="/p/TG2C9ACK002WDI" class="item_info2"><span
							class="brand">TOM GREYHOUND</span><span class="title">[ADIDAS]
								미드 컷 크루 <!--HS-->양말<!--HE--> 세트
						</span><span class="price price_TG2C9ACK002WDI"><span
								id="price_TG2C9ACK002WDI_ML"><span>￦22,000</span></span></span><span
							class="flag"><input type="hidden" id="productCd5"
								name="productCd" value="TG2C9ACK002WDI"><span
								class="flag_typ1" style="color: rgb(255, 0, 0);">SOLDOUT</span><span
								class="flag_typ1">NEW</span><span class="hsDelivery1902 ch1904"
								id="hsDelivery5" style="display: none;">한섬딜리버리</span> </span></a>
						<div class="color_more_wrap">
							<a href="javascript:void(0);" class="cl wt"
								style="background: #534741 url('http://newmedia.thehandsome.com/TG/2C/FW/TG2C9ACK002WDI_ML_C01.jpg/dims/resize/13x14');"></a>
						</div>
					</div></li>
				<li><div class="item_box">
						<a href="/p/TG2C9ACK001WDI" class="item_info1"
							onclick="beshow_tagging(this);" link="/p/TG2C9ACK001WDI"
							price="25,000"
							image="http://newmedia.thehandsome.com/TG/2C/FW/TG2C9ACK001WDI_WT_T01.jpg"
							prdname="[ADIDAS] 미드 컷 글리터 크루 양말 세트" code="TG2C9ACK001WDI"><span
							class="item_img"><img
								src="http://newmedia.thehandsome.com/TG/2C/FW/TG2C9ACK001WDI_WT_T01.jpg"
								alt="http://newmedia.thehandsome.com/TG/2C/FW/TG2C9ACK001WDI_WT_T01.jpg"
								class="respon_image"></span><span class="item_size"
							style="display: none; height: 1.78133px; padding-top: 0.61684px; margin-top: 0px; padding-bottom: 0.61684px; margin-bottom: 0px;"
							id="item_size6"><div id="TG2C9ACK001WDI_WT">
									<span>M</span>
								</div></span></a><a href="/p/TG2C9ACK001WDI" class="item_info2"><span
							class="brand">TOM GREYHOUND</span><span class="title">[ADIDAS]
								미드 컷 글리터 크루 <!--HS-->양말<!--HE--> 세트
						</span><span class="price price_TG2C9ACK001WDI"><span
								id="price_TG2C9ACK001WDI_WT"><span>￦25,000</span></span></span><span
							class="flag"><input type="hidden" id="productCd6"
								name="productCd" value="TG2C9ACK001WDI"><span
								class="flag_typ1" style="color: rgb(255, 0, 0);">SOLDOUT</span><span
								class="flag_typ1">NEW</span><span class="hsDelivery1902 ch1904"
								id="hsDelivery6" style="display: none;">한섬딜리버리</span> </span></a>
						<div class="color_more_wrap">
							<a href="javascript:void(0);" class="cl wt"
								style="background: #ffffff url('http://newmedia.thehandsome.com/TG/2C/FW/TG2C9ACK001WDI_WT_C01.jpg/dims/resize/13x14');"></a>
						</div>
					</div></li>
				<li><div class="item_box">
						<a href="/p/YS2C9ACK018WGS" class="item_info1"
							onclick="beshow_tagging(this);" link="/p/YS2C9ACK018WGS"
							price="108,000"
							image="http://newmedia.thehandsome.com/YS/2C/FW/YS2C9ACK018WGS_WT_T01.jpg"
							prdname="[GCDS] 헬로 키티 데빌 양말" code="YS2C9ACK018WGS"><span
							class="item_img"><img
								src="http://newmedia.thehandsome.com/YS/2C/FW/YS2C9ACK018WGS_WT_T01.jpg"
								alt="http://newmedia.thehandsome.com/YS/2C/FW/YS2C9ACK018WGS_WT_T01.jpg"
								class="respon_image"></span><span class="item_size"
							style="display: none; height: 12.1333px; padding-top: 8.78947px; margin-top: 0px; padding-bottom: 8.78947px; margin-bottom: 0px;"
							id="item_size7"><div id="YS2C9ACK018WGS_WT">
									<span>FR</span>
								</div></span></a><a href="/p/YS2C9ACK018WGS" class="item_info2"><span
							class="brand">FOURM THE STORE</span><span class="title">[GCDS]
								헬로 키티 데빌 <!--HS-->양말<!--HE-->
						</span><span class="price price_YS2C9ACK018WGS"><span
								id="price_YS2C9ACK018WGS_WT"><span>￦108,000</span></span></span><span
							class="flag"><input type="hidden" id="productCd7"
								name="productCd" value="YS2C9ACK018WGS"><span
								class="flag_typ1">NEW</span><span class="hsDelivery1902 ch1904"
								id="hsDelivery7" style="display: none;">한섬딜리버리</span> </span></a>
						<div class="color_more_wrap">
							<a href="javascript:void(0);" class="cl wt"
								style="background: #ffffff url('http://newmedia.thehandsome.com/YS/2C/FW/YS2C9ACK018WGS_WT_C01.jpg/dims/resize/13x14');"></a>
						</div>
					</div></li>
				<li class="mr1m"><div class="item_box">
						<a href="/p/YS2C7ACK009WZS" class="item_info1"
							onclick="beshow_tagging(this);" link="/p/YS2C7ACK009WZS"
							price="38,000"
							image="http://newmedia.thehandsome.com/YS/2C/FW/YS2C7ACK009WZS_WT_T01.jpg"
							prdname="[SAINT JAMES X SMILEY] 스마일리 양말" code="YS2C7ACK009WZS"><span
							class="item_img"><img
								src="http://newmedia.thehandsome.com/YS/2C/FW/YS2C7ACK009WZS_WT_T01.jpg"
								alt="http://newmedia.thehandsome.com/YS/2C/FW/YS2C7ACK009WZS_WT_T01.jpg"
								class="respon_image"></span><span class="item_size"
							style="display: none" id="item_size8"><div
									id="YS2C7ACK009WZS_WT">
									<span>FR</span>
								</div></span></a><a href="/p/YS2C7ACK009WZS" class="item_info2"><span
							class="brand">FOURM THE STORE</span><span class="title">[SAINT
								JAMES X SMILEY] 스마일리 <!--HS-->양말<!--HE-->
						</span><span class="price price_YS2C7ACK009WZS"><span
								id="price_YS2C7ACK009WZS_WT"><span>￦38,000</span></span></span><span
							class="flag"><input type="hidden" id="productCd8"
								name="productCd" value="YS2C7ACK009WZS"><span
								class="flag_typ1">NEW</span><span class="hsDelivery1902 ch1904"
								id="hsDelivery8" style="display: none;">한섬딜리버리</span> </span></a>
						<div class="color_more_wrap">
							<a href="javascript:void(0);" class="cl wt"
								style="background: #ffffff url('http://newmedia.thehandsome.com/YS/2C/FW/YS2C7ACK009WZS_WT_C01.jpg/dims/resize/13x14');"></a>
						</div>
					</div></li>
				<li><div class="item_box">
						<a href="/p/YS2D1ACK001WHD" class="item_info1"
							onclick="beshow_tagging(this);" link="/p/YS2D1ACK001WHD"
							price="12,000"
							image="http://newmedia.thehandsome.com/YS/2D/SS/YS2D1ACK001WHD_BK_T01.jpg"
							prdname="[HIDDEN FOREST MARKET] 캔디 포인트 양말" code="YS2D1ACK001WHD"><span
							class="item_img"><img
								src="http://newmedia.thehandsome.com/YS/2D/SS/YS2D1ACK001WHD_BK_T01.jpg"
								alt="http://newmedia.thehandsome.com/YS/2D/SS/YS2D1ACK001WHD_BK_T01.jpg"
								class="respon_image"><img
								src="http://newmedia.thehandsome.com/YS/2D/SS/YS2D1ACK001WHD_GN_T01.jpg"
								alt="http://newmedia.thehandsome.com/YS/2D/SS/YS2D1ACK001WHD_GN_T01.jpg"
								class="respon_image" style="display: none"><img
								src="http://newmedia.thehandsome.com/YS/2D/SS/YS2D1ACK001WHD_NY_T01.jpg"
								alt="http://newmedia.thehandsome.com/YS/2D/SS/YS2D1ACK001WHD_NY_T01.jpg"
								class="respon_image" style="display: none"></span><span
							class="item_size"
							style="display: none; height: 19.9895px; padding-top: 14.9917px; margin-top: 0px; padding-bottom: 14.9917px; margin-bottom: 0px;"
							id="item_size9"><div id="YS2D1ACK001WHD_BK">
									<span>FR</span>
								</div>
								<div id="YS2D1ACK001WHD_GN" style="display: none">
									<span>FR</span>
								</div>
								<div id="YS2D1ACK001WHD_NY" style="display: none">
									<span>FR</span>
								</div></span></a><a href="/p/YS2D1ACK001WHD" class="item_info2"><span
							class="brand">FOURM THE STORE</span><span class="title">[HIDDEN
								FOREST MARKET] 캔디 포인트 <!--HS-->양말<!--HE-->
						</span><span class="price price_YS2D1ACK001WHD"><span
								id="price_YS2D1ACK001WHD_BK"><span>￦12,000</span></span></span><span
							class="flag"><input type="hidden" id="productCd9"
								name="productCd" value="YS2D1ACK001WHD"><span
								class="flag_typ1">NEW</span><span class="hsDelivery1902 ch1904"
								id="hsDelivery9" style="display: none;">한섬딜리버리</span> </span></a>
						<div class="color_more_wrap">
							<a href="javascript:void(0);" class="cl wt"
								style="background: #000000 url('http://newmedia.thehandsome.com/YS/2D/SS/YS2D1ACK001WHD_BK_C01.jpg/dims/resize/13x14');"></a>
							<a href="javascript:void(0);" class="cl wt"
								style="background: #316948 url('http://newmedia.thehandsome.com/YS/2D/SS/YS2D1ACK001WHD_GN_C01.jpg/dims/resize/13x14');"></a>
							<a href="javascript:void(0);" class="cl wt"
								style="background: #23416e url('http://newmedia.thehandsome.com/YS/2D/SS/YS2D1ACK001WHD_NY_C01.jpg/dims/resize/13x14');"></a>
						</div>
					</div></li>
				<li><div class="item_box">
						<a href="/p/YS2C9ACK028WND" class="item_info1"
							onclick="beshow_tagging(this);" link="/p/YS2C9ACK028WND"
							price="29,000"
							image="http://newmedia.thehandsome.com/YS/2C/FW/YS2C9ACK028WND_ML_T01.jpg"
							prdname="[BONNE MAISON] 이클립스 크림슨 양말" code="YS2C9ACK028WND"><span
							class="item_img"><img
								src="http://newmedia.thehandsome.com/YS/2C/FW/YS2C9ACK028WND_ML_T01.jpg"
								alt="http://newmedia.thehandsome.com/YS/2C/FW/YS2C9ACK028WND_ML_T01.jpg"
								class="respon_image"></span><span class="item_size"
							style="display: none; height: 19.5713px; padding-top: 14.802px; margin-top: 0px; padding-bottom: 14.802px; margin-bottom: 0px;"
							id="item_size10"><div id="YS2C9ACK028WND_ML">
									<span>FR</span>
								</div></span></a><a href="/p/YS2C9ACK028WND" class="item_info2"><span
							class="brand">FOURM THE STORE</span><span class="title">[BONNE
								MAISON] 이클립스 크림슨 <!--HS-->양말<!--HE-->
						</span><span class="price price_YS2C9ACK028WND"><span
								id="price_YS2C9ACK028WND_ML"><span>￦29,000</span></span></span><span
							class="flag"><input type="hidden" id="productCd10"
								name="productCd" value="YS2C9ACK028WND"><span
								class="flag_typ1">NEW</span><span class="hsDelivery1902 ch1904"
								id="hsDelivery10" style="display: none;">한섬딜리버리</span> </span></a>
						<div class="color_more_wrap">
							<a href="javascript:void(0);" class="cl wt"
								style="background: #534741 url('http://newmedia.thehandsome.com/YS/2C/FW/YS2C9ACK028WND_ML_C01.jpg/dims/resize/13x14');"></a>
						</div>
					</div></li>
				<li><div class="item_box">
						<a href="/p/YS2C9ACK033WND" class="item_info1"
							onclick="beshow_tagging(this);" link="/p/YS2C9ACK033WND"
							price="29,000"
							image="http://newmedia.thehandsome.com/YS/2C/FW/YS2C9ACK033WND_ML_T01.jpg"
							prdname="[BONNE MAISON] 커플 나이트 양말" code="YS2C9ACK033WND"><span
							class="item_img"><img
								src="http://newmedia.thehandsome.com/YS/2C/FW/YS2C9ACK033WND_ML_T01.jpg"
								alt="http://newmedia.thehandsome.com/YS/2C/FW/YS2C9ACK033WND_ML_T01.jpg"
								class="respon_image"></span><span class="item_size"
							style="display: none; height: 13.2945px; padding-top: 9.7599px; margin-top: 0px; padding-bottom: 9.7599px; margin-bottom: 0px;"
							id="item_size11"><div id="YS2C9ACK033WND_ML">
									<span>FR</span>
								</div></span></a><a href="/p/YS2C9ACK033WND" class="item_info2"><span
							class="brand">FOURM THE STORE</span><span class="title">[BONNE
								MAISON] 커플 나이트 <!--HS-->양말<!--HE-->
						</span><span class="price price_YS2C9ACK033WND"><span
								id="price_YS2C9ACK033WND_ML"><span>￦29,000</span></span></span><span
							class="flag"><input type="hidden" id="productCd11"
								name="productCd" value="YS2C9ACK033WND"><span
								class="hsDelivery1902 ch1904" id="hsDelivery11"
								style="display: none;">한섬딜리버리</span> </span></a>
						<div class="color_more_wrap">
							<a href="javascript:void(0);" class="cl wt"
								style="background: #534741 url('http://newmedia.thehandsome.com/YS/2C/FW/YS2C9ACK033WND_ML_C01.jpg/dims/resize/13x14');"></a>
						</div>
					</div></li>
				<li class="mr1m"><div class="item_box">
						<a href="/p/YS2C9ACK032WND" class="item_info1"
							onclick="beshow_tagging(this);" link="/p/YS2C9ACK032WND"
							price="29,000"
							image="http://newmedia.thehandsome.com/YS/2C/FW/YS2C9ACK032WND_ML_T01.jpg"
							prdname="[BONNE MAISON] 시드링 양말" code="YS2C9ACK032WND"><span
							class="item_img"><img
								src="http://newmedia.thehandsome.com/YS/2C/FW/YS2C9ACK032WND_ML_T01.jpg"
								alt="http://newmedia.thehandsome.com/YS/2C/FW/YS2C9ACK032WND_ML_T01.jpg"
								class="respon_image"></span><span class="item_size"
							style="display: none;" id="item_size12"><div
									id="YS2C9ACK032WND_ML">
									<span>FR</span>
								</div></span></a><a href="/p/YS2C9ACK032WND" class="item_info2"><span
							class="brand">FOURM THE STORE</span><span class="title">[BONNE
								MAISON] 시드링 <!--HS-->양말<!--HE-->
						</span><span class="price price_YS2C9ACK032WND"><span
								id="price_YS2C9ACK032WND_ML"><span>￦29,000</span></span></span><span
							class="flag"><input type="hidden" id="productCd12"
								name="productCd" value="YS2C9ACK032WND"><span
								class="flag_typ1">BEST</span><span class="hsDelivery1902 ch1904"
								id="hsDelivery12" style="display: none;">한섬딜리버리</span> </span></a>
						<div class="color_more_wrap">
							<a href="javascript:void(0);" class="cl wt"
								style="background: #534741 url('http://newmedia.thehandsome.com/YS/2C/FW/YS2C9ACK032WND_ML_C01.jpg/dims/resize/13x14');"></a>
						</div>
					</div></li>
			</ul>
		</div>
		<!-- //items list -->

		<!-- paging -->
		<div id="paging" class="paging">
			<a href="#prev2" class="prev2">처음 페이지로 이동</a><a href="#prev"
				class="prev">이전 페이지로 이동</a><span class="num"><a href="#async"
				class="on" title="페이징"> 1 </a><a href="#async"
				onclick="javascript:doPaging('12');" title="페이징"> 2 </a><a
				href="#async" onclick="javascript:doPaging('24');" title="페이징">
					3 </a><a href="#async" onclick="javascript:doPaging('36');" title="페이징">
					4 </a><a href="#async" onclick="javascript:doPaging('48');" title="페이징">
					5 </a><a href="#async" onclick="javascript:doPaging('60');" title="페이징">
					6 </a><a href="#async" onclick="javascript:doPaging('72');" title="페이징">
					7 </a><a href="#async" onclick="javascript:doPaging('84');" title="페이징">
					8 </a><a href="#async" onclick="javascript:doPaging('96');" title="페이징">
					9 </a><a href="#async" onclick="javascript:doPaging('108');"
				title="페이징"> 10 </a></span><a href="#next" class="next"
				onclick="javascript:doPaging('120')">다음 페이지로 이동</a><a href="#next2"
				class="next2">마지막 페이지로 이동</a>
		</div>
		<!-- //paging -->

	</div>
</div>
<%@ include file="/WEB-INF/views/common/footer.jsp"%>