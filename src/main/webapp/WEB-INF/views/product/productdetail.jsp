<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp"%>

<link rel="stylesheet" type="text/css"
	href="/resources/css/contents.css" media="all" />
<link rel="stylesheet" type="text/css" href="/resources/css/product.css"
	media="all" />

<div id="bodyWrap" class="item_detail">
	<div id="oneEventLayer"></div>

	<div class="adaptive_wrap">
		<div class="clearfix prd_detail1905" id="clearfix">
			<div class="clearfix image_view3">
				<a href="javascript:imageZoom()" id="btn_zoom" class="btn_zoom"
					onclick="GA_Event('상품_상세','크게보기','클릭')">크게보기</a>
				<!-- 버튼 클릭시 item_visual 에 zoom 클래스 추가 -->
				<!-- 2021.08.18 동영상 재생 수정, 상품 imageDivisionCode에 VOD가 있는 경우 동영상 url 세팅 -->
				<div class="image_view1" id="image_view1">
					<div class="item_visual" id="imageDiv" style="margin-top: 20px;">
						<ul>
							<!--
							<li><img src="/_ui/desktop/common/images/products/item_img5.jpg" alt="MINE - Jemion Dress in Crunch Wash 1" class="respon_image" /></li>
							-->

							<li><img
								src="http://newmedia.thehandsome.com/IL/2C/FW/IL2CAWJC528W_BK_W01.jpg/dims/resize/684x1032"
								class="respon_image" alt="캐시미어 블렌드 재킷"
								onerror="this.src='http://cdn.thehandsome.com/_ui/desktop/common/images/products/no_img1.jpg'"></li>
							<!--
							<li><img src="/_ui/desktop/common/images/products/item_img5.jpg" alt="MINE - Jemion Dress in Crunch Wash 1" class="respon_image" /></li>
							-->

							<li><img
								src="http://newmedia.thehandsome.com/IL/2C/FW/IL2CAWJC528W_BK_W02.jpg/dims/resize/684x1032"
								class="respon_image" alt="캐시미어 블렌드 재킷"
								onerror="this.src='http://cdn.thehandsome.com/_ui/desktop/common/images/products/no_img1.jpg'"></li>
							<!--
							<li><img src="/_ui/desktop/common/images/products/item_img5.jpg" alt="MINE - Jemion Dress in Crunch Wash 1" class="respon_image" /></li>
							-->

							<li><img
								src="http://newmedia.thehandsome.com/IL/2C/FW/IL2CAWJC528W_BK_W03.jpg/dims/resize/684x1032"
								class="respon_image" alt="캐시미어 블렌드 재킷"
								onerror="this.src='http://cdn.thehandsome.com/_ui/desktop/common/images/products/no_img1.jpg'"></li>
							<!--
							<li><img src="/_ui/desktop/common/images/products/item_img5.jpg" alt="MINE - Jemion Dress in Crunch Wash 1" class="respon_image" /></li>
							-->

							<li><img
								src="http://newmedia.thehandsome.com/IL/2C/FW/IL2CAWJC528W_BK_W04.jpg/dims/resize/684x1032"
								class="respon_image" alt="캐시미어 블렌드 재킷"
								onerror="this.src='http://cdn.thehandsome.com/_ui/desktop/common/images/products/no_img1.jpg'"></li>
							<!--
							<li><img src="/_ui/desktop/common/images/products/item_img5.jpg" alt="MINE - Jemion Dress in Crunch Wash 1" class="respon_image" /></li>
							-->

							<li><img
								src="http://newmedia.thehandsome.com/IL/2C/FW/IL2CAWJC528W_BK_W05.jpg/dims/resize/684x1032"
								class="respon_image" alt="캐시미어 블렌드 재킷"
								onerror="this.src='http://cdn.thehandsome.com/_ui/desktop/common/images/products/no_img1.jpg'"></li>
							<!--
							<li><img src="/_ui/desktop/common/images/products/item_img5.jpg" alt="MINE - Jemion Dress in Crunch Wash 1" class="respon_image" /></li>
							-->

							<li><img
								src="http://newmedia.thehandsome.com/IL/2C/FW/IL2CAWJC528W_BK_W06.jpg/dims/resize/684x1032"
								class="respon_image" alt="캐시미어 블렌드 재킷"
								onerror="this.src='http://cdn.thehandsome.com/_ui/desktop/common/images/products/no_img1.jpg'"></li>
							<!--
							<li><img src="/_ui/desktop/common/images/products/item_img5.jpg" alt="MINE - Jemion Dress in Crunch Wash 1" class="respon_image" /></li>
							-->

							<li><img
								src="http://newmedia.thehandsome.com/IL/2C/FW/IL2CAWJC528W_BK_W07.jpg/dims/resize/684x1032"
								class="respon_image" alt="캐시미어 블렌드 재킷"
								onerror="this.src='http://cdn.thehandsome.com/_ui/desktop/common/images/products/no_img1.jpg'"></li>
							<!--
							<li><img src="/_ui/desktop/common/images/products/item_img5.jpg" alt="MINE - Jemion Dress in Crunch Wash 1" class="respon_image" /></li>
							-->

						</ul>
					</div>
				</div>
				<div class="item_visual" id="imageDivW" style="display: none">
					<ul>
						<li><img
							src="http://newmedia.thehandsome.com/IL/2C/FW/IL2CAWJC528W_BK_W01.jpg"
							class="respon_image" alt="캐시미어 블렌드 재킷"
							onerror="this.src='http://cdn.thehandsome.com/_ui/desktop/common/images/products/no_img1.jpg'"></li>
						<li><img
							src="http://newmedia.thehandsome.com/IL/2C/FW/IL2CAWJC528W_BK_W02.jpg"
							class="respon_image" alt="캐시미어 블렌드 재킷"
							onerror="this.src='http://cdn.thehandsome.com/_ui/desktop/common/images/products/no_img1.jpg'"></li>
						<li><img
							src="http://newmedia.thehandsome.com/IL/2C/FW/IL2CAWJC528W_BK_W03.jpg"
							class="respon_image" alt="캐시미어 블렌드 재킷"
							onerror="this.src='http://cdn.thehandsome.com/_ui/desktop/common/images/products/no_img1.jpg'"></li>
						<li><img
							src="http://newmedia.thehandsome.com/IL/2C/FW/IL2CAWJC528W_BK_W04.jpg"
							class="respon_image" alt="캐시미어 블렌드 재킷"
							onerror="this.src='http://cdn.thehandsome.com/_ui/desktop/common/images/products/no_img1.jpg'"></li>
						<li><img
							src="http://newmedia.thehandsome.com/IL/2C/FW/IL2CAWJC528W_BK_W05.jpg"
							class="respon_image" alt="캐시미어 블렌드 재킷"
							onerror="this.src='http://cdn.thehandsome.com/_ui/desktop/common/images/products/no_img1.jpg'"></li>
						<li><img
							src="http://newmedia.thehandsome.com/IL/2C/FW/IL2CAWJC528W_BK_W06.jpg"
							class="respon_image" alt="캐시미어 블렌드 재킷"
							onerror="this.src='http://cdn.thehandsome.com/_ui/desktop/common/images/products/no_img1.jpg'"></li>
						<li><img
							src="http://newmedia.thehandsome.com/IL/2C/FW/IL2CAWJC528W_BK_W07.jpg"
							class="respon_image" alt="캐시미어 블렌드 재킷"
							onerror="this.src='http://cdn.thehandsome.com/_ui/desktop/common/images/products/no_img1.jpg'"></li>
					</ul>
				</div>
				<!--동영상 삽입 180710-->
				<!--//동영상 삽입 180710-->
				<!--  2021.08.18 동영상 재생 영역  -->
			</div>
			<script type="text/javascript" src="/_ui/desktop/common/js/wpay.js"></script>
			<!-- 품절상품포함 여부 -->
			<script type="text/javascript">
				//<![CDATA[
				var stockOnlineStockpile = {};
				var warehouseStockpile = {};

				$(document)
						.ready(
								function() {
									cartQuantity = {};

									$(".btn_star_score li a").on(
											"click",
											function() {
												$("#rating").val(
														$(this).attr('value'));
											});

									$('#customerReview').click(function() {
										fn_popupCustomerReview();
									});

									$('#offlineQty').click(function() {
										fn_stockconfirm();
									});

									var productCode = $("#productCode").val();
									$
											.ajax({
												url : '/ko/p/review',
												type : "GET",
												data : {
													"productCode" : productCode
												},
												success : function(data) {
													var starWidth = 0;
													if (data.reviewList.results.length > 0) {
														starWidth = getStarScore(data.reviewAvg);
													}
													if (starWidth == 0) {
														$(
																"#prodTotalStarScoreWrapper")
																.css("display",
																		"none");
													} else {
														$("#prodTotalStarScore")
																.css(
																		"width",
																		starWidth
																				+ "%")
													}
												},
												error : function(xhr, Status,
														error) {
													var la = new layerAlert(
															error);
													la.confirmAction = function() {
														return;
													};
												}
											});

									stockOnlineStockpile["IL2CAWJC528W_BK_82"] = "2";
									warehouseStockpile["IL2CAWJC528W_BK_82"] = "0";

									stockOnlineStockpile["IL2CAWJC528W_BK_88"] = "2";
									warehouseStockpile["IL2CAWJC528W_BK_88"] = "0";

									$(".btn_close").on("click", function() {
										hideProductLayer();
										$(".popwrap").hide();
									});

									$('.toggle_type1>dt')
											.click(
													function() {

														$(this).addClass('on');
														$(this).siblings('dt')
																.removeClass(
																		'on');

														var beforeHeight = $(
																".toggle_type1")
																.height();
														var afterHeight = 0;
														var scrolltop = $(
																window)
																.scrollTop();

														var checkElement = $(
																this).next();

														if ((checkElement
																.is('dd'))
																&& (checkElement
																		.is(':visible'))) {
															$(this)
																	.removeClass(
																			'on');
															checkElement
																	.slideUp(
																			'fast',
																			function() {
																				afterHeight = $(
																						".toggle_type1")
																						.height();
																				// 	 					bodyScroll();
																			});

														}
														var fitGuide = false;
														if ((checkElement
																.is('dd'))
																&& (!checkElement
																		.is(':visible'))) {
															var v_label = "";
															var v_type = $(this)
																	.children()
																	.attr("id");
															//21.11.03 상품상세 정보 영역 변경 관련 GA이벤트태깅 추가 및 변경
															if (v_type == "NEW_DETAIL_INFO_EVT") {
																v_label = "상품상세정보";
															} else if (v_type == "DETAIL_INFO_EVT") {
																if ('ko' == 'ko') {
																	v_label = "상품정보제공고시";
																} else {
																	v_label = "상품상세정보";
																}
															} else if (v_type == "REAL_SIZE_EVT") {
																v_label = "실측사이즈";
															} else if (v_type == "DELI_RETURN_EVT") {
																v_label = "배송 및 반품";
															} else if (v_type == "FIT_GUIDE_EVT") {
																fitGuide = true;
															}

															if (!fitGuide) {
																GA_Event(
																		'상품_상세',
																		'정보',
																		v_label);
															}

															$(
																	'.toggle_type1>dd:visible')
																	.slideUp(
																			'fast');

															checkElement
																	.slideDown(
																			'fast',
																			function() {
																				afterHeight = $(
																						".toggle_type1")
																						.height();
																				// 					bodyScroll();
																			});
														}

														if (fitGuide) {
															fitGuide_Swiper_Slide(1);
														}

														var bodyScroll = function() {

															$('body,html')
																	.animate(
																			{
																				scrollTop : parseFloat(scrolltop
																						+ (beforeHeight - afterHeight))
																			},
																			function() {
																				bodyReSize();
																			});
														}

														if ($(this).next('dd').length == 0) {
															return true;
														} else {
															return false;
														}
													});

									if ('en' == 'ko' || 'zh' == 'ko') {
										showExchangeRate();
									}

									$("#restock_tlt").mouseover(
											function() {
												// // 		showExchangeRate();
												$("#restock_delch_box").css(
														"display", "block");
											});

									$("#restock_tlt").mouseout(
											function() {
												$("#restock_delch_box").css(
														"display", "none");
											});

									if ($('#referencesListContent ul:eq(0) > li').length > 3) {
										matchItemSlider();
									} else {
										$(
												".related_evt .matches_list > ul > li")
												.css("margin-right", "10px");
									}

									//타임옴므 실측사이즈
									if ("BR31" == "BR06") {
										var checkShow = false;
										var checkCode = "IL2CAWJC528W";
										var checkLanguage = "ko";
										if (checkCode == "TH1H7WPC500M"
												|| checkCode == "TH1I3WPC505M"
												|| checkCode == "TH1H8WPC503M"
												|| checkCode == "TH1HAWPC505M"
												|| checkCode == "TH1HAWPC505MP1") {
											$(".timehomme_pants_fit").addClass(
													"slim");
											$(".timehomme_pants_fit")
													.removeClass("straight");
											$(".timehomme_pants_fit")
													.removeClass("comfort");
											checkShow = true;
										} else if (checkCode == "TH1H8WPC510M"
												|| checkCode == "TH1H8WPC530M"
												|| checkCode == "TH1H8WPC540M"
												|| checkCode == "TH1HBWPC535M"
												|| checkCode == "TH1HAWPC545M"
												|| checkCode == "TH1HAWPC525M"
												|| checkCode == "TH1HAWPC525MP1") {
											$(".timehomme_pants_fit")
													.removeClass("slim");
											$(".timehomme_pants_fit").addClass(
													"straight");
											$(".timehomme_pants_fit")
													.removeClass("comfort");
											checkShow = true;
										}

										if (checkShow) {
											if (checkLanguage == "ko") {
												$(".timehomme_pants_fit")
														.addClass("ko");
											} else if (checkLanguage == "en") {
												$(".timehomme_pants_fit")
														.addClass("en");
											} else if (checkLanguage == "zh") {
												$(".timehomme_pants_fit")
														.addClass("zh");
											}

											$(".timehomme_pants_fit").show();
										}
									}

									//at home,quick 배송지 변경
									$(".btn_chg")
											.on(
													"click",
													function() {
														if ($(this).parent()
																.parent().attr(
																		"id") == "athome_svc") {
															searchAddressLayer(
																	"streetname",
																	"streetnumber",
																	"postalcode");
														} else if ($(this)
																.parent()
																.parent().attr(
																		"id") == "quick_svc") {
															searchAddressLayer(
																	"quickStreetname",
																	"quickStreetnumber",
																	"quickPostalcode");
														}
													});

									// 예약주문 토스트팝업 190507
									/* if($("#erpWorkOrderProdCode").val() != "") {
									    clearTimeout(toastPopupPreOrderInit);
									    clearTimeout(toastPopupPreOrderAfter);
									    clearTimeout(toastPopupPreOrderStop);
									}

									if("N" == "Y") {
									    toastPopupPreOrder();
									} */

									swiperslideForLookbook();

								});

				function swiperslideForLookbook() {

					var slideBox_Idx = $('.sub-slide-zone .slide-box');
					var smallSwiperLeng = $('.sub-slide-zone .slide-box').length;
					var smallSlideArr = new Array();

					for (var i = 0; i < smallSwiperLeng; i++) {
						var smallSlideLeng = $(slideBox_Idx[i]).find(
								'.swiper-slide').length
						smallSlideArr.push(smallSlideLeng);
					}

					// 룩북보기 sub 배너 슬라이드 옵션
					var subSlideOption = {
						slidesPerView : 3,
						slidesPerGroup : 3,
						spaceBetween : 10,
						loop : true,
						loopFillGroupWithBlank : true,
						observer : true,
						observeParents : true,
						simulateTouch : false,
						navigation : {
							nextEl : '.swiper-button-next.sub-nav-right',
							prevEl : '.swiper-button-prev.sub-nav-left',
						},
					};

					// 룩북보기 sub 배너 슬라이드
					var cdNlb_sub_swiper = new Swiper(
							'.sub-slide-zone .swiper-container', subSlideOption);

					for (var i = 0; i < smallSwiperLeng; i++) {
						if (smallSlideArr[i] <= 2) {
							if (cdNlb_sub_swiper.length !== undefined
									&& cdNlb_sub_swiper.length > 0) {
								$(cdNlb_sub_swiper[i].$el).parent().addClass(
										'destroy');
								cdNlb_sub_swiper[i].destroy();
							} else {
								$(cdNlb_sub_swiper.$el).parent().addClass(
										'destroy');
								cdNlb_sub_swiper.destroy();
							}
						}
					}

					// 룩북보기 title 배너 슬라이드 옵션
					var titleSlideOption = {
						slidesPerView : 1,
						slidesPerGroup : 1,
						spaceBetween : 0,
						loop : true,
						simulateTouch : false,
						navigation : {
							nextEl : '.swiper-button-next.tt-nav-right',
							prevEl : '.swiper-button-prev.tt-nav-left',
						},
						pagination : {
							el : '.swiper-pagination.tt-nav-page',
							clickable : true,
						},
						on : {
							slideChange : function() {
								var $subSlide = $('.detail-pg-lookbook-aside-box .sub-slide-zone .slide-box');
								var slideIndex = this.realIndex;

								//console.log(slideIndex);

								$subSlide.hide();
								$($subSlide[slideIndex]).show();

							}
						/* ,slideChangeTransitionStart: function(){
							// 202010623 auto height 기능 추가
							var slide_Wrap = $(".title-slide-zone .swiper-wrapper");
							var target_Height = $(this.$wrapperEl).find('.swiper-slide-active img').height();

							slide_Wrap.height(target_Height);
						}, */
						}
					};

					if ($(".cd-n-lb-tab a").attr("href") == "#cd-n-lb-tab-02") {

						var ttSlideBox_Idx = $('.title-slide-zone .swiper-wrapper'); // [0, 1]
						var ttSwiperLeng = $('.title-slide-zone .swiper-slide').length;

						var small_new_slide = document
								.querySelector('.sub-slide-zone .swiper-container').swiper;
						if (small_new_slide != null)
							small_new_slide.destroy();

						var cdNlb_sub_swiper_new = new Swiper(
								'.sub-slide-zone .swiper-container',
								subSlideOption);
						var cdNlb_tt_swiper = new Swiper(
								'.title-slide-zone .swiper-container',
								titleSlideOption);

						var $subSlide = $('.detail-pg-lookbook-aside-box .sub-slide-zone .slide-box');

						if (ttSwiperLeng <= 1) {
							if (cdNlb_tt_swiper.length !== undefined
									&& cdNlb_tt_swiper.length > 0) {
								$(cdNlb_tt_swiper[i].$el).parent().addClass(
										'destroy');
								cdNlb_tt_swiper[i].destroy();
							} else {
								$(cdNlb_tt_swiper.$el).parent().addClass(
										'destroy');
								cdNlb_tt_swiper.destroy();
							}

							// title slide가 하나일 경우 sub-slide show
							$($subSlide[0]).show();

						}

					}

					// 함께코디한 상품 & 룩북보기 tab
					$(".related_evt .cd-n-lb-tab")
							.find("a")
							.off()
							.on(
									"click",
									function(e) {
										var $this = $(this);
										var $all_tab_nav = $this.parents(
												".cd-n-lb-tab").find("li");
										var $tab_contents = $this.parents(
												".related_evt").find(
												".cd-n-lb-content-box");
										var id = $this.attr("href");
										var tabIndex = $this.parent().index();

										e.preventDefault();
										$all_tab_nav.removeClass("on");
										$this.parent().addClass("on");
										$tab_contents.hide();
										$(id).show();

										var thisTab = $(this).parent('li')
												.index();

										if (thisTab === 0) {
											var title_new_slide = document
													.querySelector('.title-slide-zone .swiper-container').swiper;
											var small_new_slide = document
													.querySelector('.sub-slide-zone .swiper-container').swiper;
											if (title_new_slide != null)
												title_new_slide.destroy();
											if (small_new_slide != null)
												small_new_slide.destroy();
										} else {
											var ttSlideBox_Idx = $('.title-slide-zone .swiper-wrapper'); // [0, 1]
											var ttSwiperLeng = $('.title-slide-zone .swiper-slide').length;

											var small_new_slide = document
													.querySelector('.sub-slide-zone .swiper-container').swiper;
											if (small_new_slide != null)
												small_new_slide.destroy();

											var cdNlb_sub_swiper_new = new Swiper(
													'.sub-slide-zone .swiper-container',
													subSlideOption);
											var cdNlb_tt_swiper = new Swiper(
													'.title-slide-zone .swiper-container',
													titleSlideOption);

											if (ttSwiperLeng <= 1) {
												if (cdNlb_tt_swiper.length !== undefined
														&& cdNlb_tt_swiper.length > 0) {
													$(cdNlb_tt_swiper[i].$el)
															.parent().addClass(
																	'destroy');
													cdNlb_tt_swiper[i]
															.destroy();
												} else {
													$(cdNlb_tt_swiper.$el)
															.parent().addClass(
																	'destroy');
													cdNlb_tt_swiper.destroy();
												}
											}

										}
									});
				}

				var popupOneclick
				$(document).ready(function() {

				})

				function fn_oneClickProcess() {
					var productCode = $(
							'form[name=addToCartForm] input[name=productCodePost]')
							.val();
					var productType = $(
							'form[name=addToCartForm] input[name=productCodeType]')
							.val();
					var qty = $("#txtqty").val();

					if (parseInt($("#productPrice").val()) == 0) {
						var la = new layerAlert(
								'선택 상품은 일시적인 시스템 장애로 구매하실 수 없습니다.<br/>고객센터(1800-5700)로 문의주세요.');
						oneClickProcess = true;
						return;
					}
					if (productType != 'ApparelSizeVariantProduct') {
						var la = new layerAlert('사이즈를 선택해 주세요.');
						oneClickProcess = true;
						return;
					}

					if (qty < 1) {
						var la = new layerAlert(
								'productdetail.basket.errormag.qty');
						oneClickProcess = true;
						return;
					}

					if ($("#storePickupCheck").is(":checked")
							|| $("#athomeCheck").is(":checked")
							|| $("#quickCheck").is(":checked")) {
						var la = new layerAlert(
								'퀵배송/매장수령은 배송특화 서비스로</br>원클릭 결제가 불가능합니다.');
						la.confirmAction = function() {
							return;
						};
						oneClickProcess = true;
						return;
					}

					var check4pmProcess = false;
					var check4pmOver = false;
					var vipDeliAvail = true;
/* 					if ($("#fourpmCheck").is(":checked")) {
						vipDeliAvail = false;
						$("#deliveryKind").val("4pm");
						$
								.ajax({
									url : '/ko/shoppingbag/check4pm',
									type : "GET",
									data : $('form[name=addToCartForm]')
											.serialize(),
									async : false,
									success : function(data) {
										//data가 0 또는 4pm의 경우 담기
										if (data == "normal") {
											var scrollTop = $(document)
													.scrollTop();
											var la = new layerAlert(
													'쇼핑백에 {0}PM 상품이 아닌 일반배송 상품이 담겨 있습니다. 쇼핑백에서 일반배송 상품을&nbsp; 삭제 후 {0}PM 버튼을 클릭해 주세요.');
											var top = $(".popwrap.w_type_1")
													.css("margin-top").replace(
															"px", "");
											$(document).scrollTop(scrollTop);
											$(".popwrap.w_type_1").css(
													"margin-top",
													Number(scrollTop)
															+ Number(top)
															+ "px");
											la.confirmAction = function() {
												return;
											};
											check4pmProcess = true;
										} else if (data == "pm_over") {
											check4pmOver = true;
											$("#deliveryKind").val("");
										} else if (data == "store") {
											var scrollTop = $(document)
													.scrollTop();
											var la = new layerAlert(
													'쇼핑백에 {0}PM 상품이 아닌 매장수령 상품이 담겨 있습니다. 쇼핑백에서 매장수령 상품을&nbsp; 삭제 후 {0}PM 버튼을 클릭해 주세요.');
											var top = $(".popwrap.w_type_1")
													.css("margin-top").replace(
															"px", "");
											$(document).scrollTop(scrollTop);
											$(".popwrap.w_type_1").css(
													"margin-top",
													Number(scrollTop)
															+ Number(top)
															+ "px");
											la.confirmAction = function() {
												return;
											};
											check4pmProcess = true;
										} else if (data == "athome") {
											var scrollTop = $(document)
													.scrollTop();
											var la = new layerAlert(
													'쇼핑백에 {0}PM 상품이 아닌 앳홈 상품이 담겨 있습니다. 쇼핑백에서 앳홈 상품을&nbsp; 삭제 후 {0}PM 버튼을 클릭해 주세요.');
											var top = $(".popwrap.w_type_1")
													.css("margin-top").replace(
															"px", "");
											$(document).scrollTop(scrollTop);
											$(".popwrap.w_type_1").css(
													"margin-top",
													Number(scrollTop)
															+ Number(top)
															+ "px");
											la.confirmAction = function() {
												return;
											};
											check4pmProcess = true;
										}
									},
									error : function(xhr, Status, error) {
										var la = new layerAlert(error);
										la.confirmAction = function() {
											return;
										};
									}
								});
					} */

/* 					if (check4pmProcess) {
						$("#deliveryKind").val("");
						oneClickProcess = true;
						return false;
					}

					if (check4pmOver) {
						var la = new layerAlert('오후{0}시 이후 주문시 일반배송으로 변경됩니다.');
						la.confirmAction = function() {
							return;
						};
					}

					$('form[name=addToCartForm] input[name=qty]').val(qty);
					$('form[name=addToCartForm] input[name=buyNowYn]').val(
							false);

					if ("false" == "true" && "ko" == "ko") {
						NetFunnel_Action({
							action_id : "buy_now"
						}, function(ev, ret) {
							oneclickLoadingStart(vipDeliAvail);
						});
					} else {
						oneclickLoadingStart(vipDeliAvail);
					}
				} */

/* 				function loadingOff() {
					//로딩바제거
					if ($("#loadingBarDiv").length > 0) {
						$(".layerLoading_bar").remove();
					}

					if ($(".layerArea:last").length > 0) {
						$(".layerArea:last").remove();
					}
				} */

				function oneClickTargetBlankPopup(wpayData) {//원클릭결제 새창 팝업 2001
					WPAY.checkoutAuthSubmit(wpayData);
				}

				var starscore = 0;
				function getStarScore(starscore) {
					var average = starscore;
					var starWidth = 0;
					if (1 <= average && average < 1.25) {
						starWidth = 20;
					} else if (1.25 <= average && average < 1.75) {
						starWidth = 30;
					} else if (1.75 <= average && average < 2.25) {
						starWidth = 40;
					} else if (2.25 <= average && average < 2.75) {
						starWidth = 50;
					} else if (2.75 <= average && average < 3.25) {
						starWidth = 60;
					} else if (3.25 <= average && average < 3.75) {
						starWidth = 70;
					} else if (3.75 <= average && average < 4.25) {
						starWidth = 80;
					} else if (4.25 <= average && average < 4.75) {
						starWidth = 90;
					} else if (4.75 <= average && average <= 5) {
						starWidth = 100;
					}
					return starWidth;
				}

				function setOneClick() {

				}

				function fnSharePin(sUrl) {
					var sImg = "http://newmedia.thehandsome.com/IL/2C/FW/IL2CAWJC528W_BK_C01.jpg";
					var sTxt = "[LÄTT] 캐시미어 블렌드 재킷";

					if (sImg.indexOf("_C01") > 0) {
						sImg = sImg.replace("_C01", "_W01");
					}

					var href = "http://www.pinterest.com/pin/create/button/?url="
							+ sUrl
							+ "&media="
							+ sImg
							+ "&description="
							+ encodeURIComponent(sTxt);
					var a = window.open(href, 'pinterest',
							'width=800, height=500');
					if (a) {
						a.focus();
					}
				}

				function matchItemSlider() {
					var widthLi = $("#referencesListContent").width() / 3;
					var productTotal = $("#referencesListContent .slides li")
							.size();
					if (productTotal <= 3) {
						$("#referencesControls .prev").hide();
						$("#referencesControls .next").hide();
						$("#referencesListContent ul").removeClass("slides");
						$("#referencesListContent > ul li").css("margin-right",
								"10px");
					}
					var mySlider = $("#referencesListContent .slides")
							.bxSlider({
								mode : "horizontal",
								speed : 500,
								pager : false,
								moveSlides : 1,
								slideWidth : widthLi,
								minSlides : 3,
								maxSlides : 3,
								slideMargin : 10,
								auto : false,
								autoHover : false,
								controls : false,
								adaptiveHeight : true,
								adaptiveHeightSpeed : 10
							});
					$("#referencesControls .prev").on("click", function() {
						mySlider.goToPrevSlide();
						return false;
					});
					$("#referencesControls .next").on("click", function() {
						mySlider.goToNextSlide();
						return false;
					});
					$(".rmd_pb .tlt").mouseenter(function() {
						$("#productEctTab .rmd_pb_popup").show();
					});
					$(".rmd_pb .tlt").mouseleave(function() {
						$("#productEctTab .rmd_pb_popup").hide();
					});

				};

				function addHidden(ptag, hname, hvl) {

					if ($("#" + hname).length > 0) {
						$("#" + hname).remove();
					}
					return $('<input/>').attr('type', 'hidden').attr('id',
							hname).attr('name', hname).attr('value', hvl)
							.appendTo(ptag);
				}

				function addWishListProdClick(productBaseCode) {

					var lc = new layerConfirm("로그인이 필요합니다", "확인", "취소");
					lc.cancleAction = function() {//취소 호출 펑션
						$("." + productBaseCode + "Like").each(
								function(index, ele) {
									$(ele).removeClass("on");
								})
					};

					lc.confirmAction = function() {//확인 호출 펑션
						location.href = "/ko/member/login";
					};

					addWishListProd(productBaseCode);
				}

				function addWishListProd(productBaseCode) {
					$.ajax({
						url : "/ko/wishlist/add-product-action",
						type : "GET",
						data : {
							productCode : productBaseCode,
							type : 'toggle'
						},
						success : function(msg) {

							if (msg !== 'erroor1') {
								if (productBaseCode === 'IL2CAWJC528W_BK') {
									$('.wishlist1803').toggleClass('on');
								}
								$('.' + productBaseCode + 'LIKE').each(
										function(index, ele) {
											$(ele).toggleClass('on');
										})
							}

						}
					});
				}

				function chngColorChip(ele, sourceProd, targetProd) {

					var $this = $('#chipbtn_' + targetProd);
					var $thisChips = $this.closest('.we-codi-colorchip');
					//$thisChips.find('a').removeClass('on');

					$
							.ajax({
								url : '/ko/product/reloadCoordiSize',
								type : 'GET',
								datatype : 'json',
								data : {
									'productcode' : targetProd
								},
								success : function(data) {
									var product = data.product;
									var images;

									var txtHtml = '';
									var lookbookTxtHtml = '';
									/* 가격변경 */
									var priceHtml = '';

									priceHtml = product.price.formattedValue;

									if (priceHtml != '') {
										$(
												'#prod_' + sourceProd
														+ ' .info_wrap .price')
												.html(priceHtml);
									}

									if (product.productImages != null) {

										for (var i = 0; i < product.productImages.length; i++) {
											images = product.productImages[i];

											if (images.imageDivisionCode.code === 'S01') {
												txtHtml = images.image.url;
												break;
											}
										}
									}

									$(ele).parent().closest(
											'#prod_' + sourceProd).find('img')
											.attr('src', txtHtml);

								}
							});

				}

				// 210728 oera 신규 추가 S
				function fn_popupOeraMileage() {
					//fn_parentLayer();
					$("#popupOeraMileage").show();
				}

				//211101 체험단 리뷰 추가 S
				function fn_popupTesterReview() { // 체험단 팝업
					if ($("#testerReviewDiv").css("display") == "none") {
						testerReviewReset();
						viewPopup("#testerReviewDiv");
						GA_Event('상품_상세', '정보', '체험단');
					}
				}

				function testerReviewReset() { //팝업초기화
					if ($('.review_more_1807 a').parents('.evaluation_view')
							.hasClass('on')) {
						$('.review_more_1807 a').parents('.evaluation_view')
								.removeClass('on');
					}
					$("#testerReviewDiv .paging .pageBtn:eq(0)").trigger(
							"click");
				}
				// 211101 체험단 리뷰 추가 E

				//]]>
			</script>

			<div class="item_detail_info float_right" id="contentDiv"
				style="margin-top: 20px; top: 0px; left: 638px;">
				<div class="info">
					<div class="info_sect">
						<h4 class="item_name">
							<div class="brand-name">
								<a href="javascript:fn_goCategori('br31')"
									onclick="GA_Detail('brand',$(this))">LÄTT</a>
							</div>
							<span class="name ko_fir_spel"> 캐시미어 블렌드 재킷<input
								type="hidden" id="brandName" value="LÄTT"> <input
								type="hidden" id="productName" value="캐시미어 블렌드 재킷"> <input
								type="hidden" id="productCode" value="IL2CAWJC528W_BK">
							</span>
						</h4>

						<div class="flag"></div>

						<p class="price">
							<span>₩2,950,000</span> <input type="hidden" id="productPrice"
								value="2950000">
						</p>
						<!-- 상품추가설명 -->
						<p class="selling_point"></p>
						<!-- 20200914이후 추가 상품설명 (신) -->
						<div class="prod-detail-con-box">
							<strong class="number-code">상품품번 : <span>IL2CAWJC528W_BK</span></strong>
							<div class="round-style">
								<p>유독 부드러운 터치감을 자랑하는 천연 밍크 소재를 블록하여 고급스럽고 세련된 무드를 자아내는
									재킷입니다. 칼라리스 디자인과 여밈이 따로 없는 간결한 오픈 타입으로 완성하여 한층 단정한 외관을 연출해주며,
									살짝 여유로운 실루엣이 편안한 착용감을 선사합니다.</p>
							</div>
							<div class="fit-info">
								<p class="size-text">- 피팅 정보 : 173cm, 55 사이즈 모델이 88 사이즈 착용</p>
							</div>
						</div>
						<!-- 20200914 이전 상품설명(구) -->
					</div>

					<!-- 20200904 추가 (더보기) -->
					<div class="info_sect">
						<div class="prod-detail-con-more">
							<button type="button" class="more-btn">
								더보기<i></i>
							</button>
							<div class="more-con-box">
								<ul>
									<li>- 이탈리아 'COLOMBO'사의 수입 원단<br>- 캐시미어 혼방 소재<br>-
										오픈 타입<br>- 양 옆에 포켓
									</li>
								</ul>
							</div>
						</div>
					</div>
					<script>
						$(document)
								.ready(
										function() {
											$('.prod-detail-con-more')
													.on(
															'click',
															'.more-btn',
															function() {
																$(
																		'.more-con-box')
																		.slideToggle(
																				function() {
																					$(
																							this)
																							.parent(
																									'.prod-detail-con-more')
																							.find(
																									'.more-btn')
																							.toggleClass(
																									'on');
																				});
															})
										});
					</script>
					<!-- //20200904 더보기 -->
					<div class="info_sect">
						<ul class="point_delivery">
							<li><span class="title">한섬마일리지</span> <span class="txt">147,500&nbsp;M&nbsp;(5%)</span>
							</li>

							<li><span class="title">H.Point</span> <span class="txt">2,950&nbsp;P&nbsp;(0.1%)</span>
								<a href="javascript:fn_cardBenefit();" id="cardbenef"
								class="etc_info" onclick="GA_Event('상품_상세','카드사_혜택안내','클릭');">카드사
									혜택안내</a> <script type="text/javascript">
										$(document)
												.ready(
														function() {

															fn_tableMerge($(
																	"#noInterestTable")
																	.attr("id"));

															fn_tableMerge($(
																	"#partNoInterestTable")
																	.attr("id"));

															$('.card img')
																	.each(
																			function() {
																				$(
																						this)
																						.attr(
																								'src',
																								cdnImgUrl($(
																										this)
																										.attr(
																												'orgurl')));
																			})
														});

										// CDN 이미지 URL로 변경
										function cdnImgUrl(mediaUrl) {
											var rtnUrl = mediaUrl;
											try {
												var searchText = 'context='
												var cdnDomain = 'http://image.thehandsome.com/sys_master/';
												rtnUrl = rtnUrl.substr(rtnUrl
														.indexOf(searchText)
														+ searchText.length,
														rtnUrl.length);
												rtnUrl = decodeURIComponent(
														atob(rtnUrl))
														.split('|');
												if (rtnUrl.length > 4) {
													rtnUrl = rtnUrl[4];
													rtnUrl = cdnDomain + rtnUrl;
												} else {
													rtnUrl = mediaUrl;
												}
											} catch (e) {
												console.log(e);
											}
											return rtnUrl;
										}

										function fn_tableMerge(id) {

											var beforName = "";
											var mergeCnt = 1;
											var beforObj;

											$("#" + id + " th")
													.each(
															function() {

																if (beforName == "") {
																	beforName = $(
																			this)
																			.attr(
																					"name");
																	beforObj = $(this);
																} else if (beforName == $(
																		this)
																		.attr(
																				"name")) {
																	mergeCnt = mergeCnt + 1;
																	$(this)
																			.remove();
																	beforObj
																			.attr(
																					"rowspan",
																					mergeCnt);
																} else {
																	beforName = $(
																			this)
																			.attr(
																					"name");
																	beforObj = $(this);
																	mergeCnt = 1;
																}

															});
										}
									</script>

								<div class="popwrap w_type_2" id="cardBenefit"
									style="display: none;">
									<div class="pop_tltwrap2">
										<h3>카드혜택안내</h3>
									</div>
									<div class="pop_cnt">
										<div class="card_benefits scroll-y">
											<div class="box">
												<div class="title clearfix">
													<p class="float_left">무이자 할부 행사</p>
													<!-- 
						<p class="float_left">무이자 할부 행사</p>
						<p class="float_right">행사기간 : 2015.08.01 ~ 2015.12.31</p>
						-->
												</div>
												<table class="cnt_type1" id="noInterestTable">
													<caption>무이자 할부 행사</caption>
													<colgroup>
														<col style="width: 155px">
														<col>
													</colgroup>
													<tbody>
														<tr>
															<th scope="row" name="신한카드"><span class="card"><img
																	src="http://image.thehandsome.com/sys_master/hde/h2b/8814181515294.jpg"
																	orgurl="/medias/shinhan.jpg?context=bWFzdGVyfHJvb3R8MjY1N3xpbWFnZS9qcGVnfGhkZS9oMmIvODgxNDE4MTUxNTI5NC5qcGd8NTAwMDYxM2ZmZmRlZGFhZDQ0ODNmODJjZTg2OTE3MGI3OWQ2ZmE3YzI0ZjA3MDY3NzIxYWVhNmY3NDQyYWUzMA"
																	alt="신한카드"></span></th>
															<td><b>신한카드 5만원이상 결제시 2~6개월 무이자 할부</b><br> 대상:
																신한카드 전 회원<br> (신한BC 제외/ 법인,기프트,체크,선불카드 제외)<br>
																2022.10.01&nbsp;~&nbsp;2022.10.31</td>
														</tr>
														<tr>
															<th scope="row" name="삼성카드"><span class="card"><img
																	src="http://image.thehandsome.com/sys_master/h3d/h4d/8814181613598.jpg"
																	orgurl="/medias/SAMSUNG.jpg?context=bWFzdGVyfHJvb3R8MzIxOXxpbWFnZS9qcGVnfGgzZC9oNGQvODgxNDE4MTYxMzU5OC5qcGd8ZGY1NDJiM2U1YWNmNGE5MTJkOTA0MTAxMDliMDc4ZjRlNTJmZjJlOTkxOTQzZTEwMDcxZWU2NGU2MjJmMWE2Mw"
																	alt="삼성카드"></span></th>
															<td><b>삼성카드 5만원이상 결제시 2~6개월 무이자 할부</b><br> 대상:
																삼성카드 전 회원<br> (법인,기프트,체크,선불카드 제외)<br>
																2022.10.01&nbsp;~&nbsp;2022.10.31</td>
														</tr>
														<tr>
															<th scope="row" name="비씨카드"><span class="card"><img
																	src="http://image.thehandsome.com/sys_master/hf2/h0d/8814181220382.jpg"
																	orgurl="/medias/BC.jpg?context=bWFzdGVyfHJvb3R8MjQ1OHxpbWFnZS9qcGVnfGhmMi9oMGQvODgxNDE4MTIyMDM4Mi5qcGd8MjZlZGU2ZGQyNDBkYzU5YmY2NWY0MDU3NDc1OTA0YWI5NmM4NDJjMDFiYjBiYjBjY2FhZjhmMzg3ZmE5NGU5Yw"
																	alt="비씨카드"></span></th>
															<td><b>비씨카드 5만원이상 결제시 2~7개월 무이자 할부</b><br> 대상:
																비씨카드 전 회원<br>(법인,기프트,체크,선불카드 제외)<br>
																2022.10.01&nbsp;~&nbsp;2022.10.31</td>
														</tr>
														<tr>
															<th scope="row" name="현대카드"><span class="card"><img
																	src="http://image.thehandsome.com/sys_master/h5d/h7c/8814181711902.jpg"
																	orgurl="/medias/HYUNDAI.jpg?context=bWFzdGVyfHJvb3R8MjYxMHxpbWFnZS9qcGVnfGg1ZC9oN2MvODgxNDE4MTcxMTkwMi5qcGd8YmM5ZWY0ZjlhODlkMzdmMjYyNmY4NjQ4OWU5NWVjOWFlMGY4ODIwYzZlNjA0MjBlNDkwNWI0ZDllYThjMWE5Mw"
																	alt="현대카드"></span></th>
															<td><b>현대카드 5만원이상 결제시 2~7개월 무이자 할부</b><br> 대상:
																현대카드 전 회원<br> (법인,기프트,체크,선불카드 제외)<br>
																2022.10.01&nbsp;~&nbsp;2022.10.31</td>
														</tr>
														<tr>
															<th scope="row" name="국민카드"><span class="card"><img
																	src="http://image.thehandsome.com/sys_master/h2e/h34/8814181023774.jpg"
																	orgurl="/medias/kucmin.jpg?context=bWFzdGVyfHJvb3R8MzMwM3xpbWFnZS9qcGVnfGgyZS9oMzQvODgxNDE4MTAyMzc3NC5qcGd8MjM1YjEyN2I4OTljMGIxYzY3MjhjNDhkZWMyOTE5ODZjYmRiYWExNDdhOWZmNDQ3ZWNhNGIxZjYwYzk2MDA4Zg"
																	alt="국민카드"></span></th>
															<td><b>KB국민카드 5만원이상 결제시 2~7개월 무이자 할부</b><br>
																대상: KB국민카드 전 회원<br> (NH농협, 국민BC 제외/ 법인,기프트,체크,선불카드
																제외)<br> 2022.10.01&nbsp;~&nbsp;2022.10.31</td>
														</tr>
														<tr>
															<th scope="row" name="하나카드"><span class="card"><img
																	src="http://image.thehandsome.com/sys_master/h60/hfb/8814054965278.gif"
																	orgurl="/medias/hanacard.gif?context=bWFzdGVyfHJvb3R8MTkzNXxpbWFnZS9naWZ8aDYwL2hmYi84ODE0MDU0OTY1Mjc4LmdpZnxhMGM5OWY0MDdhNDhjYzkwOTdiMzhkM2VmMDQ2YTI0NTAyNDBjZTljNTdiYzk4YWRhZmI0NjBhOWRhNzRiMGYw"
																	alt="하나카드"></span></th>
															<td><b>하나카드 5만원이상 결제시 2~8개월 무이자 할부</b><br> 대상:
																하나카드 전 회원 (구 하나SK, 구 외환)<br> (하나BC카드
																포함/법인,기프트,체크,선불카드 제외)<br>
																2022.10.01&nbsp;~&nbsp;2022.10.31</td>
														</tr>
														<tr>
															<th scope="row" name="NH카드"><span class="card"><img
																	src="http://image.thehandsome.com/sys_master/h8e/h36/8814181908510.jpg"
																	orgurl="/medias/NH.jpg?context=bWFzdGVyfHJvb3R8Mzk3OXxpbWFnZS9qcGVnfGg4ZS9oMzYvODgxNDE4MTkwODUxMC5qcGd8ZWVlNmY1OWM0NDdmMjg2M2Y4NGZkNDZjYThmOTVkMWNmY2QwYWNkOWI1ODc5YTdiMTc5MjY4MThiZTkzYzNmMw"
																	alt="NH카드"></span></th>
															<td><b>NH농협카드 5만원이상 결제시 2~8개월 무이자 할부</b><br>
																대상: NH농협카드 전 회원<br> (NH농협BC카드 포함/ 법인,기프트,체크,선불카드
																제외) <br> 2022.10.01&nbsp;~&nbsp;2022.10.31</td>
														</tr>
														<tr>
															<th scope="row" name="롯데카드"><span class="card"><img
																	src="http://image.thehandsome.com/sys_master/hb3/h47/8814181810206.jpg"
																	orgurl="/medias/LOTTE.jpg?context=bWFzdGVyfHJvb3R8MzI3MXxpbWFnZS9qcGVnfGhiMy9oNDcvODgxNDE4MTgxMDIwNi5qcGd8MDliOThkNzA1ZDc2ZDE4MzZhYmUzYjI2MDMxZDk0NGU3OTVjYzBhYTA1MmMzMjAyZmE0Y2U4OTZlNTU3NDU2Zg"
																	alt="롯데카드"></span></th>
															<td><b>롯데카드 5만원이상 결제시 2~4개월 무이자 할부</b><br>
																대상:롯데카드 전 회원<br> (법인,기프트,체크,선불카드 제외)<br>
																2022.10.01&nbsp;~&nbsp;2022.10.31</td>
														</tr>
													</tbody>
												</table>
											</div>
											<div class="box">
												<div class="title clearfix">
													<p class="float_left">부분 무이자 할부 행사</p>

												</div>
												<table class="cnt_type1" id="partNoInterestTable">
													<caption>부분 무이자 할부 행사</caption>
													<colgroup>
														<col style="width: 155px">
														<col>
													</colgroup>
													<tbody>
														<tr>
															<th scope="row" name="신한카드"><span class="card"><img
																	src="http://image.thehandsome.com/sys_master/hde/h2b/8814181515294.jpg"
																	orgurl="/medias/shinhan.jpg?context=bWFzdGVyfHJvb3R8MjY1N3xpbWFnZS9qcGVnfGhkZS9oMmIvODgxNDE4MTUxNTI5NC5qcGd8NTAwMDYxM2ZmZmRlZGFhZDQ0ODNmODJjZTg2OTE3MGI3OWQ2ZmE3YzI0ZjA3MDY3NzIxYWVhNmY3NDQyYWUzMA"
																	alt="신한카드"></span></th>
															<td><b>10개월 부분무이자</b><br> (5만원이상 결제시/1,2,3,4회차
																고객부담, 잔여할부 수수료 면제/법인,체크,기프트카드 제외)<br>
																2022.10.01&nbsp;~&nbsp;2022.10.31</td>
														</tr>
														<tr>
															<th scope="row" name="삼성카드" rowspan="2"><span
																class="card"><img
																	src="http://image.thehandsome.com/sys_master/h3d/h4d/8814181613598.jpg"
																	orgurl="/medias/SAMSUNG.jpg?context=bWFzdGVyfHJvb3R8MzIxOXxpbWFnZS9qcGVnfGgzZC9oNGQvODgxNDE4MTYxMzU5OC5qcGd8ZGY1NDJiM2U1YWNmNGE5MTJkOTA0MTAxMDliMDc4ZjRlNTJmZjJlOTkxOTQzZTEwMDcxZWU2NGU2MjJmMWE2Mw"
																	alt="삼성카드"></span></th>
															<td><b>10개월 부분무이자</b><br> (5만원이상 결제시/1,2,3,4회차
																고객 부담, 잔여할부 수수료 면제/법인,체크,기프트카드 제외)<br>
																2022.10.01&nbsp;~&nbsp;2022.10.31</td>
														</tr>
														<tr>

															<td><b>12개월 부분무이자</b><br> (5만원이상
																결제시/1,2,3,4,5회차 고객 부담, 잔여할부 수수료 면제/법인,체크,기프트카드 제외) <br>
																2022.10.01&nbsp;~&nbsp;2022.10.31</td>
														</tr>
														<tr>
															<th scope="row" name="비씨카드" rowspan="2"><span
																class="card"><img
																	src="http://image.thehandsome.com/sys_master/hf2/h0d/8814181220382.jpg"
																	orgurl="/medias/BC.jpg?context=bWFzdGVyfHJvb3R8MjQ1OHxpbWFnZS9qcGVnfGhmMi9oMGQvODgxNDE4MTIyMDM4Mi5qcGd8MjZlZGU2ZGQyNDBkYzU5YmY2NWY0MDU3NDc1OTA0YWI5NmM4NDJjMDFiYjBiYjBjY2FhZjhmMzg3ZmE5NGU5Yw"
																	alt="비씨카드"></span></th>
															<td><b> 우리BC 10개월 부분무이자</b><br> (5만원이상
																결제시/1,2,3회차 고객부담, 잔여할부 수수료 면제/법인,체크,기프트카드 제외) <br>
																2022.10.01&nbsp;~&nbsp;2022.10.31</td>
														</tr>
														<tr>

															<td><b>우리BC 12개월 부분무이자</b><br> (5만원이상
																결제시/1,2,3,4회차 고객부담, 잔여할부 수수료 면제/법인,체크,기프트카드 제외) <br>
																2022.10.01&nbsp;~&nbsp;2022.10.31</td>
														</tr>
														<tr>
															<th scope="row" name="국민카드" rowspan="2"><span
																class="card"><img
																	src="http://image.thehandsome.com/sys_master/h2e/h34/8814181023774.jpg"
																	orgurl="/medias/kucmin.jpg?context=bWFzdGVyfHJvb3R8MzMwM3xpbWFnZS9qcGVnfGgyZS9oMzQvODgxNDE4MTAyMzc3NC5qcGd8MjM1YjEyN2I4OTljMGIxYzY3MjhjNDhkZWMyOTE5ODZjYmRiYWExNDdhOWZmNDQ3ZWNhNGIxZjYwYzk2MDA4Zg"
																	alt="국민카드"></span></th>
															<td><b>10개월 부분무이자</b><br> (5만원이상 결제시/1,2,3,4 회차
																고객부담, 잔여할부 수수료 면제/법인,체크,기프트카드 제외)<br>
																2022.10.01&nbsp;~&nbsp;2022.10.31</td>
														</tr>
														<tr>

															<td><b>12개월 부분무이자</b><br> (5만원이상 결제시/1,2,3,4,5
																회차 고객부담, 잔여할부 수수료 면제/법인,체크,기프트카드 제외)<br>
																2022.10.01&nbsp;~&nbsp;2022.10.31</td>
														</tr>
														<tr>
															<th scope="row" name="하나카드" rowspan="2"><span
																class="card"><img
																	src="http://image.thehandsome.com/sys_master/h60/hfb/8814054965278.gif"
																	orgurl="/medias/hanacard.gif?context=bWFzdGVyfHJvb3R8MTkzNXxpbWFnZS9naWZ8aDYwL2hmYi84ODE0MDU0OTY1Mjc4LmdpZnxhMGM5OWY0MDdhNDhjYzkwOTdiMzhkM2VmMDQ2YTI0NTAyNDBjZTljNTdiYzk4YWRhZmI0NjBhOWRhNzRiMGYw"
																	alt="하나카드"></span></th>
															<td><b>10개월 부분무이자</b><br> (5만원이상 결제시/1,2,3회차
																고객부담, 잔여할부 수수료 면제/법인,체크,기프트카드 제외)<br>
																2022.10.01&nbsp;~&nbsp;2022.10.31</td>
														</tr>
														<tr>

															<td><b>12개월 부분무이자</b><br> (5만원이상 결제시/1,2,3,4회차
																고객부담, 잔여할부 수수료 면제/법인,체크,기프트카드 제외)<br>
																2022.10.01&nbsp;~&nbsp;2022.10.31</td>
														</tr>
														<tr>
															<th scope="row" name="신한카드"><span class="card"><img
																	src="http://image.thehandsome.com/sys_master/hde/h2b/8814181515294.jpg"
																	orgurl="/medias/shinhan.jpg?context=bWFzdGVyfHJvb3R8MjY1N3xpbWFnZS9qcGVnfGhkZS9oMmIvODgxNDE4MTUxNTI5NC5qcGd8NTAwMDYxM2ZmZmRlZGFhZDQ0ODNmODJjZTg2OTE3MGI3OWQ2ZmE3YzI0ZjA3MDY3NzIxYWVhNmY3NDQyYWUzMA"
																	alt="신한카드"></span></th>
															<td><b>12개월 부분무이자</b><br> (5만원이상
																결제시/1,2,3,4,5회차 고객부담, 잔여할부 수수료 면제/법인,체크,기프트카드 제외)<br>
																2022.10.01&nbsp;~&nbsp;2022.10.31</td>
														</tr>
													</tbody>
												</table>
												<ul class="bul_sty01_li mt10">
													<li>무이자 할부 결제 시 카드사 포인트는 적립되지 않습니다.</li>
													<li>ARS 무이자 할부는 해당 카드사 ARS 번호로 사전 신청을 하신 경우에 한하여<br>무이자
														혜택이 적용됩니다.(ARS 부문 무이자 할부 포함)
													</li>
													<li>상기 부분 무이자 할부는 5만원 이상 결제 시 자동 적용되며, 결제창에는 무이자 표시가
														되지 않을 수 있습니다.</li>
													<li>법인 / 체크 / 선불 / 기프트 / 은행 계열 카드는 제외됩니다.</li>
													<li>고객 부담 수수료는 해당 카드사로 문의 바랍니다.</li>
													<li>본 행사는 카드사 사정에 따라 일부 내용이 변경 또는 중단될 수 있습니다.</li>
												</ul>
											</div>
										</div>
									</div>
									<a href="javascript:void(0);" class="btn_close"><img
										src="http://cdn.thehandsome.com/_ui/desktop/common/images/popup/ico_close.png"
										alt="닫기"></a>
								</div></li>

							<li><span class="title">배송비</span> <span class="txt">30,000원
									이상 무료배송 (실결제 기준)</span> <a href="javascript:fn_popupDelivery();"
								class="etc_info" onclick="GA_Event('상품_상세','배송안내','클릭');">배송안내</a>
								<div class="popwrap w_type_2" id="popupDelivery"
									style="display: none;">
									<div class="pop_tltwrap2">
										<h3>배송비안내</h3>
									</div>
									<div class="pop_cnt">
										<table class="cnt_type1">
											<caption>배송비안내</caption>
											<colgroup>
												<col style="width: 155px">
												<col>
											</colgroup>
											<tbody>
												<tr>
													<th scope="row">배송기간</th>
													<td>평균 입금완료일 기준 2-4일 소요됩니다.<br>(토/일/공휴일 제외)
													</td>
												</tr>
												<tr>
													<th scope="row">배송비</th>
													<td>
														<ul class="bul_sty01_li">
															<li>30,000원 이상 결제 시 <em class="ft_point01">무료배송</em></li>
															<li>30,000원 미만 결제 시 <em class="ft_point01">2,500원</em></li>
														</ul>
														<p class="bul_sty02">도서산간 지역은 3,000원의 별도 배송비가 부과됩니다.</p>
														<p class="bul_sty02">쿠폰/바우처 할인금액 및 한섬마일리지/H.Point 사용을
															제외한 실결제금액 기준입니다.</p>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
									<a href="javascript:void(0);" class="btn_close"><img
										src="http://cdn.thehandsome.com/_ui/desktop/common/images/popup/ico_close.png"
										alt="닫기"></a>
								</div></li>
						</ul>
					</div>

					<div class="info_sect" id="color_size">
						<ul class="color_size_qty">
							<li><span class="title">색상</span>
								<div class="txt">
									<ul class="color_chip clearfix">
										<input type="hidden" id="colorName" value="BLACK">
										<li id="IL2CAWJC528W_BK"><input type="hidden"
											class="colorNameVal" value="BLACK"> <a href="#;"
											class="beige on"
											style="background: #000000 url('http://newmedia.thehandsome.com/IL/2C/FW/IL2CAWJC528W_BK_C01.jpg/dims/resize/24x24')"
											onmouseover="setColorName('BLACK');"
											onmouseout="setColorName('');"></a></li>
									</ul>
								</div> <span class="cl_name" id="colorNameContent"></span></li>
							<li><span class="title">사이즈<!-- 사이즈 --></span> <span
								class="txt"> <script type="text/javascript">
									$(document)
											.ready(
													function() {

														var tab = $('#size_tab ul li');
														var content = $('.size_tab_container > div');
														$(
																'.size_tab_container > div + div')
																.css('display',
																		'none');
														tab
																.on(
																		'click',
																		function(
																				e) {
																			e
																					.preventDefault();
																			var tg = $(this);
																			var tc = tg
																					.find('> a');
																			tab
																					.find(
																							'> a')
																					.removeClass(
																							'active');
																			tc
																					.addClass('active');
																			i = tg
																					.index();
																			content
																					.css(
																							'display',
																							'none');
																			content
																					.eq(
																							i)
																					.css(
																							'display',
																							'block');
																		});

													});
								</script>

									<div class="popwrap w_type_2" id="sizeQuickReferenceLayer"
										style="display: none;">
										<div class="pop_tltwrap2">
											<h3>사이즈조견표</h3>
										</div>
										<div class="pop_cnt">
											<div class="size_chart">
												<div class="tab_a m6" id="size_tab">
													<ul>
														<li><a href="#;" class="active">WOMEN<br>TOP
														</a></li>
														<li><a href="#;">WOMEN<br>BOTTOMS
														</a></li>
														<li><a href="#;">WOMEN<br>SHOES
														</a></li>
														<li><a href="#;">MEN<br>TOP
														</a></li>
														<li><a href="#;">MEN<br>BOTTOMS
														</a></li>
														<li><a href="#;">MEN<br>SHOES
														</a></li>
													</ul>
												</div>
												<div class="size_tab_container">
													<div>
														<table class="cnt_type2">
															<caption>사이즈조견표</caption>
															<colgroup>
																<col>
																<col style="width: 16%">
																<col style="width: 16%">
																<col style="width: 16%">
																<col style="width: 16%">
																<col style="width: 16%">
															</colgroup>
															<thead>
																<tr class="al_middle">
																	<th scope="col">BRAND/<br>SIZE
																	</th>
																	<th scope="col">XS</th>
																	<th scope="col">S</th>
																	<th scope="col">M</th>
																	<th scope="col">L</th>
																	<th scope="col">FREE</th>
																</tr>
															</thead>
															<tbody>
																<tr class="al_middle">
																	<th scope="row">TIME</th>
																	<td>76</td>
																	<td>82</td>
																	<td>88</td>
																	<td>94</td>
																	<td>90</td>
																</tr>
																<tr class="al_middle">
																	<th scope="row">MINE</th>
																	<td>76</td>
																	<td>82</td>
																	<td>88</td>
																	<td>94</td>
																	<td>90</td>
																</tr>
																<tr class="al_middle">
																	<th scope="row">SYSTEM</th>
																	<td>76</td>
																	<td>82</td>
																	<td>88</td>
																	<td>-</td>
																	<td>90</td>
																</tr>
																<tr class="al_middle">
																	<th scope="row">SJSJ</th>
																	<td>76</td>
																	<td>82</td>
																	<td>88</td>
																	<td>-</td>
																	<td>90</td>
																</tr>
																<tr class="al_middle">
																	<th scope="row" rowspan="2">KOREA</th>
																	<td>85</td>
																	<td>90</td>
																	<td>95</td>
																	<td>100</td>
																	<td>-</td>
																</tr>
																<tr class="al_middle">
																	<td>44</td>
																	<td>55</td>
																	<td>66</td>
																	<td>77</td>
																	<td>-</td>
																</tr>
																<tr class="al_middle">
																	<th scope="row">US</th>
																	<td>2</td>
																	<td>4</td>
																	<td>6</td>
																	<td>8</td>
																	<td>-</td>
																</tr>
																<tr class="al_middle">
																	<th scope="row">EUROPE</th>
																	<td>34</td>
																	<td>36</td>
																	<td>38</td>
																	<td>40</td>
																	<td>-</td>
																</tr>
																<tr class="al_middle">
																	<th scope="row">CHINA</th>
																	<td>160/<br>80A
																	</td>
																	<td>165/<br>84A
																	</td>
																	<td>170/<br>88A
																	</td>
																	<td>175/<br>92A
																	</td>
																	<td>-</td>
																</tr>
															</tbody>
														</table>
													</div>
													<div style="display: none;">
														<table class="cnt_type2">
															<caption>사이즈조견표</caption>
															<colgroup>
																<col>
																<col style="width: 19%">
																<col style="width: 19%">
																<col style="width: 19%">
																<col style="width: 19%">
															</colgroup>
															<thead>
																<tr class="al_middle">
																	<th scope="col">BRAND/<br>SIZE
																	</th>
																	<th scope="col">XS</th>
																	<th scope="col">S</th>
																	<th scope="col">M</th>
																	<th scope="col">L</th>
																</tr>
															</thead>
															<tbody>
																<tr>
																	<th scope="row">TIME</th>
																	<td>61</td>
																	<td>64</td>
																	<td>67</td>
																	<td>70</td>
																</tr>
																<tr>
																	<th scope="row">MINE</th>
																	<td>61</td>
																	<td>64</td>
																	<td>67</td>
																	<td>70</td>
																</tr>
																<tr>
																	<th scope="row">SYSTEM</th>
																	<td>61</td>
																	<td>64</td>
																	<td>67</td>
																	<td>-</td>
																</tr>
																<tr>
																	<th scope="row">SJSJ</th>
																	<td>61</td>
																	<td>64</td>
																	<td>67</td>
																	<td>-</td>
																</tr>
																<tr class="al_middle">
																	<th scope="row" rowspan="2">KOREA</th>
																	<td>24</td>
																	<td>26</td>
																	<td>28</td>
																	<td>30</td>
																</tr>
																<tr>
																	<td>44</td>
																	<td>55</td>
																	<td>66</td>
																	<td>77</td>
																</tr>
																<tr>
																	<th scope="row">US</th>
																	<td>2</td>
																	<td>4</td>
																	<td>6</td>
																	<td>8</td>
																</tr>
																<tr>
																	<th scope="row">EUROPE</th>
																	<td>34</td>
																	<td>36</td>
																	<td>38</td>
																	<td>40</td>
																</tr>
																<tr>
																	<th scope="row">CHINA</th>
																	<td>160/<br>66A
																	</td>
																	<td>165/<br>68A
																	</td>
																	<td>170/<br>70A
																	</td>
																	<td>175/<br>72A
																	</td>
																</tr>
															</tbody>
														</table>
													</div>
													<div style="display: none;">
														<table class="cnt_type2">
															<caption>사이즈조견표</caption>
															<colgroup>
																<col>
																<col style="width: 19%">
																<col style="width: 19%">
																<col style="width: 19%">
																<col style="width: 19%">
															</colgroup>
															<thead>
																<tr class="al_middle">
																	<th scope="col">BRAND/<br>SIZE
																	</th>
																	<th scope="col">XS</th>
																	<th scope="col">S</th>
																	<th scope="col">M</th>
																	<th scope="col">L</th>
																</tr>
															</thead>
															<tbody>
																<tr>
																	<th scope="row">TIME</th>
																	<td>230</td>
																	<td>235</td>
																	<td>240</td>
																	<td>245</td>
																</tr>
																<tr>
																	<th scope="row">MINE</th>
																	<td>230</td>
																	<td>235</td>
																	<td>240</td>
																	<td>245</td>
																</tr>
																<tr>
																	<th scope="row">SYSTEM</th>
																	<td>230</td>
																	<td>235</td>
																	<td>240</td>
																	<td>245</td>
																</tr>
																<tr>
																	<th scope="row">SJSJ</th>
																	<td>230</td>
																	<td>235</td>
																	<td>240</td>
																	<td>245</td>
																</tr>
																<tr>
																	<th scope="row">KOREA</th>
																	<td>230</td>
																	<td>235</td>
																	<td>240</td>
																	<td>245</td>
																</tr>
																<tr>
																	<th scope="row">US</th>
																	<td>6</td>
																	<td>6.5</td>
																	<td>7</td>
																	<td>7.5</td>
																</tr>
																<tr>
																	<th scope="row">EUROPE</th>
																	<td>36</td>
																	<td>36.5</td>
																	<td>37</td>
																	<td>37.5</td>
																</tr>
																<tr>
																	<th scope="row">CHINA</th>
																	<td>36</td>
																	<td>37</td>
																	<td>38</td>
																	<td>39</td>
																</tr>
															</tbody>
														</table>
													</div>
													<div style="display: none;">
														<table class="cnt_type2">
															<caption>사이즈조견표</caption>
															<colgroup>
																<col>
																<col style="width: 16%">
																<col style="width: 16%">
																<col style="width: 16%">
																<col style="width: 16%">
																<col style="width: 16%">
															</colgroup>
															<thead>
																<tr class="al_middle">
																	<th scope="col">BRAND/<br>SIZE
																	</th>
																	<th scope="col">S</th>
																	<th scope="col">M</th>
																	<th scope="col">L</th>
																	<th scope="col">XL</th>
																	<th scope="col">XXL</th>
																</tr>
															</thead>
															<tbody>
																<tr class="al_middle">
																	<th scope="row">TIME<br>HOMME
																	</th>
																	<td>90</td>
																	<td>95</td>
																	<td>100</td>
																	<td>105</td>
																	<td>110</td>
																</tr>
																<tr class="al_middle">
																	<th scope="row">SYSTEM<br>HOMME
																	</th>
																	<td>90</td>
																	<td>95</td>
																	<td>100</td>
																	<td>105</td>
																	<td>110</td>
																</tr>
																<tr class="al_middle">
																	<th scope="row">CLUB<br>MONACO
																	</th>
																	<td>XS</td>
																	<td>S</td>
																	<td>M</td>
																	<td>L</td>
																	<td>XL</td>
																</tr>
																<tr class="al_middle">
																	<th scope="row">KOREA</th>
																	<td>90</td>
																	<td>95</td>
																	<td>100</td>
																	<td>105</td>
																	<td>110</td>
																</tr>
																<tr class="al_middle">
																	<th scope="row">US</th>
																	<td>36</td>
																	<td>38</td>
																	<td>40</td>
																	<td>42</td>
																	<td>44</td>
																</tr>
																<tr class="al_middle">
																	<th scope="row">EUROPE</th>
																	<td>46</td>
																	<td>48</td>
																	<td>50</td>
																	<td>52</td>
																	<td>54</td>
																</tr>
																<tr class="al_middle">
																	<th scope="row">CHINA</th>
																	<td>165/<br>80-90
																	</td>
																	<td>170/<br>96-98
																	</td>
																	<td>175/<br>108-110
																	</td>
																	<td>180/<br>118-122
																	</td>
																	<td>185/<br>126-130
																	</td>
																</tr>
															</tbody>
														</table>
													</div>
													<div style="display: none;">
														<table class="cnt_type2">
															<caption>사이즈조견표</caption>
															<colgroup>
																<col>
																<col style="width: 9.5%">
																<col style="width: 9.5%">
																<col style="width: 9.5%">
																<col style="width: 9.5%">
																<col style="width: 9.5%">
																<col style="width: 9.5%">
																<col style="width: 9.5%">
																<col style="width: 9.5%">
																<col style="width: 9.5%">
															</colgroup>
															<thead>
																<tr class="al_middle">
																	<th scope="col">BRAND/<br>SIZE
																	</th>
																	<th scope="col">S</th>
																	<th scope="col" colspan="2">M</th>
																	<th scope="col" colspan="2">L</th>
																	<th scope="col" colspan="2">XL</th>
																	<th scope="col" colspan="2">XXL</th>
																</tr>
															</thead>
															<tbody>
																<tr class="al_middle">
																	<th scope="row">TIME<br>HOMME
																	</th>
																	<td>74</td>
																	<td colspan="2">78</td>
																	<td>82</td>
																	<td>84</td>
																	<td>86</td>
																	<td>88</td>
																	<td>90</td>
																	<td>92</td>
																</tr>
																<tr class="al_middle">
																	<th scope="row">SYSTEM<br>HOMME
																	</th>
																	<td>74</td>
																	<td colspan="2">78</td>
																	<td>82</td>
																	<td>84</td>
																	<td>86</td>
																	<td>88</td>
																	<td>90</td>
																	<td>92</td>
																</tr>
																<tr class="al_middle">
																	<th scope="row">CLUB<br>MONACO
																	</th>
																	<td>29</td>
																	<td>30</td>
																	<td>31</td>
																	<td>32</td>
																	<td>33</td>
																	<td colspan="2">34</td>
																	<td colspan="2">36</td>
																</tr>
																<tr class="al_middle">
																	<th scope="row">KOREA</th>
																	<td>29</td>
																	<td colspan="2">30</td>
																	<td>32</td>
																	<td>33</td>
																	<td>34</td>
																	<td>35</td>
																	<td>35.5</td>
																	<td>36</td>
																</tr>
																<tr class="al_middle">
																	<th scope="row">US</th>
																	<td>44T</td>
																	<td colspan="2">46T</td>
																	<td colspan="2">48T</td>
																	<td colspan="2">50T</td>
																	<td colspan="2">52T</td>
																</tr>
																<tr class="al_middle">
																	<th scope="row">EUROPE</th>
																	<td>44</td>
																	<td colspan="2">46</td>
																	<td colspan="2">48</td>
																	<td colspan="2">50</td>
																	<td colspan="2">52</td>
																</tr>
																<tr class="al_middle">
																	<th scope="row">CHINA</th>
																	<td>44</td>
																	<td colspan="2">46</td>
																	<td colspan="2">48</td>
																	<td colspan="2">50</td>
																	<td colspan="2">52</td>
																</tr>
															</tbody>
														</table>
													</div>
													<div style="display: none;">
														<table class="cnt_type2">
															<caption>사이즈조견표</caption>
															<colgroup>
																<col>
																<col style="width: 23%">
																<col style="width: 23%">
																<col style="width: 23%">
															</colgroup>
															<thead>
																<tr class="al_middle">
																	<th scope="col">BRAND<br>SIZE
																	</th>
																	<th scope="col">S</th>
																	<th scope="col">M</th>
																	<th scope="col">L</th>
																</tr>
															</thead>
															<tbody>
																<tr class="al_middle">
																	<th scope="row">TIME HOMME</th>
																	<td>260</td>
																	<td>270</td>
																	<td>280</td>
																</tr>
																<tr class="al_middle">
																	<th scope="row">SYSTEM HOMME</th>
																	<td>260</td>
																	<td>270</td>
																	<td>280</td>
																</tr>
																<tr class="al_middle">
																	<th scope="row">KOREA</th>
																	<td>260</td>
																	<td>270</td>
																	<td>280</td>
																</tr>
																<tr class="al_middle">
																	<th scope="row">US</th>
																	<td>8</td>
																	<td>9</td>
																	<td>10</td>
																</tr>
																<tr class="al_middle">
																	<th scope="row">EUROPE</th>
																	<td>41</td>
																	<td>42</td>
																	<td>43.5</td>
																</tr>
																<tr class="al_middle">
																	<th scope="row">CHINA</th>
																	<td>43</td>
																	<td>45</td>
																	<td>47</td>
																</tr>
															</tbody>
														</table>
													</div>
												</div>
											</div>
										</div>
										<a href="javascript:void(0);" class="btn_close"><img
											src="http://cdn.thehandsome.com/_ui/desktop/common/images/popup/ico_close.png"
											alt="닫기"></a>
									</div>
									<ul class="size_chip clearfix sizeChipKo1901">
										<li id="IL2CAWJC528W_BK_82"><a
											href="javascript:fn_detailProductAjax('IL2CAWJC528W_BK_82')"
											onclick="GA_Event('상품_상세','사이즈','82')">82<span
												class="ko_size1901">&nbsp;(55)</span></a></li>
										<li id="IL2CAWJC528W_BK_88"><a
											href="javascript:fn_detailProductAjax('IL2CAWJC528W_BK_88')"
											onclick="GA_Event('상품_상세','사이즈','88')">88<span
												class="ko_size1901">&nbsp;(66)</span></a></li>
									</ul>
							</span> <!-- 2021.08.10 화장품 상품인 경우 사이즈조견표 영역 미노출 --> <a
								href="javascript:fn_popupSizeQuickReference();" class="etc_info"
								onclick="GA_Event('상품_상세','사이즈_조건표','클릭')">사이즈 조견표</a> <!-- 재입고알림 툴팁 -->
								<!-- //재입고알림 툴팁 --></li>
							<li><span class="title">수량</span> <span class="txt">
									<span class="qty_sel num"> <a
										href="javascript:fn_qtySubtraction();" class="left">이전 버튼</a>
										<input type="text" id="txtqty" title="수량" value="1"
										class="mr0" readonly="readonly"> <a
										href="javascript:fn_qtyAdd();" class="right">다음 버튼</a>
								</span>
							</span> <span class="txt" id="popularProudct" style="display: none">
									<span class="deliveryPlanDate"> 해당 상품은 전국 매장을 통해 수급하여 배송
										될 예정입니다. <br> 불량 등의 이유로 수급이 어려울 경우, 취소될 수 있습니다. <br>(평일
										기준 5일 이상 소요 예정)
								</span>
							</span> <input type="hidden" id="erpWorkOrderNumber"> <input
								type="hidden" id="reserveSalesStockpile"> <input
								type="hidden" id="erpWorkOrderProdCode"></li>
						</ul>
					</div>
					<div class="total_price clearfix">
						<div class="title float_left" style="width: auto;">총 합계</div>
						<div class="pirce float_right">
							<!-- 				<div class="tlt_ship"> -->
							<!-- 				<div class="delch_box" style="display: none;"> -->
							<!-- 	       			<span class="arr">위치아이콘</span> -->
							<!-- 	                <div> -->
							<!-- 	                    <div id="exchangeDiv"></div> -->
							<!-- 	                </div> -->
							<!-- 	        	</div> -->
							<!-- 				</div> -->
							<span id="sumPrice">₩2,950,000</span>
						</div>
					</div>
					<!-- st_receipt_wrap -->
					<!-- //st_receipt_wrap -->
					<!-- st_store_wrap -->
					<div class="st_store_wrap1807" id="storePickupChoice"
						style="display: none;">
						<div class="st_store">
							<dl>
								<dt>선택 매장</dt>
								<dd>
									<p id="storePickupChoiceName"></p>
									<p id="storePickupChoiceAddress"></p>
									<p id="storePickupChoiceTelephone"></p>
								</dd>
								<dt>수령 신청일</dt>
								<dd>
									<p id="storePickupChoiceDate"></p>
								</dd>
							</dl>
							<a href="javascript:fn_popupStorePickUp();" class="btn">매장변경</a>
						</div>
						<ul class="bul_sty01_li">
							<li>매장 수령 시 상품 사이즈 및 컬러 변경은 불가합니다.</li>
							<li>수령 가능 확정 일은 주문 완료 후, 수령 교환권을 SMS로 안내 드립니다.</li>
							<li>수령 확정일로부터 <span style="color: #fe4242;">1일 경과 후
									상품을 수령하지 않으시면 자동 취소</span> 됩니다.
							</li>
						</ul>
					</div>
					<!-- //st_store_wrap -->
					<div class="btnwrap clearfix"
						style="position: absolute; width: 473px; margin-top: -154.953px; margin-bottom: 154.953px;">
						<input type="button" value=""
							class="btn wishlist1803 float_left ml0  "
							onclick="addWishListClick();GA_Event('상품_상세','하단 고정 버튼','좋아요');">

						<div class="toast_popup">
							<p style="display: none; top: -4.12381px; opacity: 0.031172;">위시리스트에서
								삭제했습니다.</p>
						</div>

						<!--190508 추가 -->
						<div class="toast_popup_pre_order1905">
							<!-- 토스트팝업 190507 -->
							<p>
								예약 주문이 가능한 옵션(컬러/사이즈)가 있습니다. <br>옵션 선택 후 배송 예정일을 확인해 주세요.
							</p>
							<span class="arr">위치아이콘</span>
						</div>
						<!--//190508 추가 -->

						<form id="addToCartForm" name="addToCartForm"
							action="/ko/HANDSOME/WOMEN/OUTER/JACKET/%EC%BA%90%EC%8B%9C%EB%AF%B8%EC%96%B4-%EB%B8%94%EB%A0%8C%EB%93%9C-%EC%9E%AC%ED%82%B7/p/IL2CAWJC528W_BK?categoryCode=we05"
							method="post">
							<input type="hidden" maxlength="3" size="1" name="qty"
								class="qty"> <input type="hidden" name="productCodePost"
								value="IL2CAWJC528W_BK"> <input type="hidden"
								id="productCodeType" name="productCodeType"
								value="ApparelStyleVariantProduct"> <input type="hidden"
								id="stockCnt" value="0"> <input type="hidden"
								name="storeId" id="storeId" value=""> <input
								type="hidden" name="storePickupDate" id="storePickupDate"
								value=""> <input type="hidden" name="workOrder"
								id="workOrder" value=""> <input type="hidden"
								name="recommendProduct" id="recommendProduct" value="">
							<input type="hidden" name="deliveryKind" id="deliveryKind"
								value=""> <input type="hidden" name="streetname"
								id="streetname" value=""> <input type="hidden"
								name="streetnumber" id="streetnumber" value=""> <input
								type="hidden" name="postalcode" id="postalcode" value="">
							<input type="hidden" name="quickStreetname" id="quickStreetname"
								value=""> <input type="hidden" name="quickStreetnumber"
								id="quickStreetnumber" value=""> <input type="hidden"
								name="quickPostalcode" id="quickPostalcode" value=""> <input
								type="hidden" name="fourpmList" id="fourpmList"> <input
								type="hidden" name="athomeList" id="athomeList"> <input
								type="hidden" name="pickupList" id="pickupList"> <input
								type="hidden" name="quickList" id="quickList"> <input
								type="hidden" name="buyNowYn" id="buyNowYn" value="false">
							<input type="button" value="쇼핑백 담기"
								class="btn cart1803 float_left ml0" id="addToCartButton"
								onclick="addToCart();GA_Event('상품_상세','하단 고정 버튼','쇼핑백담기');">
							<div>
								<input type="hidden" name="CSRFToken"
									value="ecf5895e-d72c-450d-9930-223071a6e7ca">
							</div>
						</form>
						<input type="button" value="바로주문"
							class="btn order float_right mr0" id="addToCartBuyNowButton"
							onclick="GA_Event('상품_상세','하단 고정 버튼','바로주문');addToCart(true);">
					</div>

					<dl class="toggle_type1" style="margin-top: 80px;">
						<!-- 상품상세 정보창 변경 211027 S -->
						<dt>
							<a href="javascript:void(0);" id="NEW_DETAIL_INFO_EVT">상품상세정보</a>
						</dt>
						<dd>
							<div class="product-info-211027">
								<h3>상품 추가 정보</h3>
								<table>
									<caption>상품 추가 정보</caption>
									<colgroup>
										<col style="width: 91px">
										<col style="width: 125px;">
										<col style="width: 127px">
										<col style="width: 126px;">
									</colgroup>
									<tbody>
										<tr>
											<th>핏</th>
											<td>슬림핏</td>
											<td class="bold">레귤러핏</td>
											<td>루즈핏</td>
										</tr>
										<tr>
											<th>신축성</th>
											<td class="bold">없음</td>
											<td>조금 있음</td>
											<td>있음</td>
										</tr>
										<tr>
											<th>비침</th>
											<td class="bold">없음</td>
											<td>약간</td>
											<td>있음</td>
										</tr>
										<tr>
											<th>두께</th>
											<td>얇음</td>
											<td class="bold">보통</td>
											<td>두꺼움</td>
										</tr>
										<tr>
											<th>안감</th>
											<td>없음</td>
											<td>부분 안감</td>
											<td class="bold">전체 안감</td>
										</tr>
									</tbody>
								</table>
								<p>상기 정보는 주관적 내용이므로 참고해주세요</p>
							</div>
						</dd>
						<!-- 상품상세 정보창 변경 211027 E -->
						<dt>
							<a href="javascript:void(0);" id="DETAIL_INFO_EVT"> 상품정보제공고시</a>
						</dt>
						<dd style="display: none;">
							<strong>상품품번 :</strong> IL2CAWJC528W<br> <strong>품목
								:</strong> 의류<br> <strong>소재 :</strong> 겉감 캐시미어 84%, 나일론 16%, 배색1
							천연모피(밍크), 배색2 견 100%, 배색3 레이온 100%, 안감 레이온 100%(BK,PE)<br> <strong>색상
								:</strong> PE(PALE BEIGE), BK(BLACK)<br> <strong>사이즈 :</strong> 88,
							82<br> <strong>제조국 :</strong> 한국<br> <strong>제조사
								:</strong> (주)한섬<br> <strong>제조연월 :</strong> 202210<br> <br>
							<strong>품질보증기준</strong><br> 1. 본 제품은 정부 고시 소비자 분쟁해결 기준에 의거
							고객의 정당한 피해를 보상해드립니다. <br> - 원단 불량, 부자재 불량, 봉제 불량, 사이즈 부정확,
							부당 표시(미표시 및 부실표시) 및 소재 구성 부적합으로 인한 세탁 사고 : 구입일로부터 1년 이내분은 무상수리,
							교환, 구입가 환불함. (단, 봉제 불량은 1년 경과 후에도 무상 수선 가능) <br> - 사이즈가 맞지
							않거나 디자인, 색상 불만 제품 : 구입 후 7일 이내로서 제품에 손상이 없는 경우 동일 가격, 동일 제품으로 교환
							가능. <br> - 상하의 한 벌(세트/일착)인 경우 한 쪽에만 이상이 있어도 한 벌(세트/일착)로 처리함.
							단, 소재 및 디자인이 다른 경우에는 해당 의류만 교환 가능. <br>2. 소비자 부주의에 의한 제품 훼손,
							세탁 잘못으로 인한 변형 및 품질 보증기간(1년)이 경과한 제품에 대해서는 보상의 책임을 지지 않으며, 수선
							가능시에는 실비로 수선해드립니다. <br>3. 제품에 이상이 있는 경우 바로 본사로 연락주시면
							수선/교환/환불이 가능하나, 타업체(일반 수선실 등)에서 수선했을 경우는 불가능합니다.<br> <br>
							<strong>세탁방법 및 취급 시 주의사항</strong><br> 본 제품은 반드시 드라이크리닝 하십시오.
							세탁 시 이염, 변색, 탈색될 수 있으니 유의하시기 바랍니다. 단추나 악세서리는 세탁 시 손상될 수 있으므로 은박지로
							싸거나 분리하여 주십시오. 특성상 마찰에 의해 올 뜯김 등 원단 손상이 발생할 수 있으니 취급 시 주의하시기
							바랍니다.<br> <br>
							<div style="margin-bottom: 20px;">
								<p style="float: left;">
									<strong>AS 책임자와 연락처</strong><br> ㈜한섬/1800-5700
								</p>
								<!-- 20200218 마크 추가 -->
								<div class="sft_ksdt"></div>
								<!-- // 20200218 마크 추가 -->
							</div>
							<br> <br> 위 내용은 상품정보제공 고시에 따라 작성되었습니다.
						</dd>
						<!-- 2021.08.10 화장품 상품인 경우 실측사이즈 영역 미노출 -->
						<dt>
							<a href="javascript:void(0);" id="REAL_SIZE_EVT">실측사이즈</a>
						</dt>
						<dd>
							<div class="ko realsize_img SZ06"></div>
							<p class="tit">자켓</p>
							<!-- info_tbl -->
							<div class="detail-size-bd">
								<!--20200910 -->
								<!-- 20160627 -->
								<span class="unit">단위(cm)</span>
								<!-- 아우터 사이즈 -->
								<table class="unit-board" border="0">

									<!-- 2019.07.24 아이템별 노출항목 판단 -->
									<!-- 2020.08.19 아이템별 노출항목 판단 -->
									<!-- 탑(베스트 제외) 2020.08.19 sizeCode 추가( SZ13 ~ SZ16 ) -->
									<caption>아우터 실측사이즈</caption>
									<colgroup>
										<col style="width: 81px;">
										<col style="width: auto;">
										<col style="width: auto;">
										<col style="width: auto;">
									</colgroup>

									<thead>
										<tr>
											<th scope="col">사이즈</th>
											<th scope="col">82</th>
											<th scope="col">88</th>
										</tr>
									</thead>
									<tbody>
										<!-- 2020.08.19 실측사이즈 추가 09~12 -->
										<tr>
											<th scope="row">총길이</th>
											<td>62.86</td>
											<td>64.14</td>
										</tr>
										<tr>
											<th scope="row">가슴단면</th>
											<td>60.01</td>
											<td>63.18</td>
										</tr>
										<tr>
											<th scope="row">소매부리</th>
											<td>32.38</td>
											<td>33.34</td>
										</tr>
									</tbody>
								</table>
							</div>
							<!-- //info_tbl -->

							<!-- <p class="txt_last">- 모델착용사이즈 : <strong>82</strong></p> -->
							<!-- 20160627 -->

							<!-- info_tbl -->

							<!-- //info_tbl -->
							<!-- numlist -->
							<br>
							<!-- //numlist -->
							<font color="red"> <strong> 원단, 측정방법에 따라 약간의 오차
									가능성이 있습니다.</strong>
							</font>

							<div class="timehomme_pants_fit" style="display: none"></div>
						</dd>
						<dt>
							<a href="#" id="DELI_RETURN_EVT">배송 및 교환/반품</a>
						</dt>
						<dd>
							<p class="tit">배송안내</p>
							<dl class="info_tbl">
								<dt>배송방식 :</dt>
								<dd>우체국택배, CJ대한통운, 로젠택배</dd>
								<!-- 210728 oera 신규 추가  -->
								<dt>배송지역 :</dt>
								<dd>전국 (일부 지역 제외)</dd>
								<dt>배송정보 :</dt>
								<dd>평균 입금완료일 기준 2-4일 소요됩니다 (토/일/공휴일 제외)</dd>
								<dt>배송비 :</dt>
								<dd>
									실결제금액 기준 30,000원 이상 결제 시 무료배송<br>30,000원 미만 결제 시 2,500원(기본
									배송비)<br>* 실결제금액이란, 쿠폰/바우처 할인액 및 <br>&nbsp;
									한섬마일리지/H.Point 사용 금액을 제외한 금액입니다. <br> &nbsp;&nbsp;(e-money
									사용은 실결제금액에 포함)<br>* 도서산간 지역은 3,000원의 별도 배송비가 부과됩니다.<br>*
									일부 도서지역은 도선료가 부가될 수 있습니다.
								</dd>
							</dl>
							<p class="tit mt20">교환 및 반품안내</p>
							<!-- info_tbl -->
							<dl class="info_tbl">
								<dt>교환/반품 기간 :</dt>
								<dd>상품 수령 후, 7일 이내</dd>
								<dt>교환절차 :</dt>
								<dd style="letter-spacing: -0.2px;">
									사이즈 및 상품불량 교환만 가능(색상교환 불가)하며 교환을 원하실 경우<br> 고객센터로 문의해주시기
									바랍니다. (교환 재고가 없을 경우, 환불로 안내예정)<br> - 교환은 배송비 입금 및 상품 입고 확인
									이후에 진행됩니다. <br> 화장품은 상품 불량만 교환 가능하며(상품 개봉 후 교환 불가), 고객센터로<br>
									문의해주시기 바랍니다.
									<!-- 210728 oera 신규 추가  -->
								</dd>
								<dt>반품절차 :</dt>
								<dd>
									[배송완료] 7일 이내에 마이페이지 주문/배송/취소/반품 메뉴에서<br> [반품신청] 버튼을 클릭 시
									가능합니다.
								</dd>
								<dt>교환/반품 배송비 :</dt>
								<dd style="letter-spacing: -0.4px;">
									배송비는 5,000원 이며(반품비는 주문시 배송비 결제 유무에 따라 변동)<br>상품 불량 등의 이유로
									교환/반품하실 경우, 배송비는 무료입니다.
								</dd>
								<dt>교환/반품 불가사유</dt>
								<dd>
									다음의 경우에는 교환/반품이 불가합니다.
									<ol class="numlist">
										<li><span class="num sum">-</span> <span class="txt">교환/반품
												기간(상품 수령 후 7일 이내)을 초과하였을 경우</span></li>
										<li><span class="num sum">-</span> <span class="txt">고객님의
												요청에 의해 제품 사양이 변경(이니셜 제품, 사이즈 맞춤 제품 등)된 경우</span></li>
										<li><span class="num sum">-</span><span class="txt">제품을
												이미 사용하였거나, 제품 일부를 소비하였을 경우</span></li>
										<!-- 210728 oera 신규 추가  -->
										<li><span class="num sum">-</span> <span class="txt">화장품
												: 상품 개봉 후 교환/반품 불가. 단 상품 불량(내용물 불량) 혹은 피부 트러블로 인한 반품은 가능(용량
												1/3 미만 사용 및 의사소견서 1:1문의 첨부 필수)</span></li>
										<!-- // 210728 oera 신규 추가  -->
										<li><span class="num sum">-</span> <span class="txt">식기류
												: 제품 수령 후, 비닐포장을 개봉한 경우</span></li>
										<li><span class="num sum">-</span> <span class="txt">고객님의
												귀책사유로 인해 회수가 지연될 경우</span></li>
										<li><span class="num sum">-</span> <span class="txt">국내외
												환율 변동 등에 의해 가격이 변동되는 제품의 경우</span></li>
										<li><span class="num sum">-</span> <span class="txt">문제소지가
												있는 제품을 본사가 아닌, 타 업체(일반 수선실 등)에서 선처리가 된 경우</span></li>
									</ol>
								</dd>
								<!-- 210728 oera 신규 추가  -->
								<dt>교환/반품건 배송</dt>
								<dd>
									교환/반품 시 배송 받으신 박스로 반송하셔야 합니다. <br>(한섬/오에라/리퀴드퍼퓸바 상품 함께 주문
									후 교환/반품 시 각각의 박스에 나눠서 반송해주세요. 한 박스에 함께 동봉하여 반송 시 교환/반품 처리가 불가할
									수 있습니다)
								</dd>
								<!-- // 210728 oera 신규 추가  -->
							</dl>
							<p class="tit mt20">환불안내</p>
							<p>환불은 반송제품 확인 후 진행됩니다.</p>
							<br>
						</dd>
						<!--상품평 btn-->
						<div class="popup_customer_review1807" id="customerReview">
							<a href="#;" onclick="GA_Event('상품_상세','정보','상품평');">상품평(<span
								id="customerReviewCnt">0</span>)
								<div class="star_score1807" id="prodTotalStarScoreWrapper"
									style="display: none;">
									<span class="cmt_star"> <!-- 별점에 따라 class명 변경 (star1, star2 ,star3, star4, star5) -->
										<span class="cmt_per" id="prodTotalStarScore">별점</span>
									</span>
								</div>
							</a>
						</div>
						<!--//상품평 btn-->

					</dl>
				</div>

				<div class="clearfix mt30">
					<div class="btnwrap float_left">
						<a href="javascript:fn_popupProductQnA();" class="btn arrow mr0"
							onclick="GA_Event('상품_상세','Q&amp;A','클릭');">Q&amp;A(<span
							class="data" id="productQnACnt">0</span>)
						</a>
					</div>
					<div class="float_right">
						<!-- AddToAny BEGIN -->
						<div class="a2a_kit a2a_kit_size_32 a2a_default_style"
							data-a2a-url="http://www.thehandsome.com/ko/HANDSOME/WOMEN/OUTER/JACKET/%EC%BA%90%EC%8B%9C%EB%AF%B8%EC%96%B4-%EB%B8%94%EB%A0%8C%EB%93%9C-%EC%9E%AC%ED%82%B7/p/IL2CAWJC528W_BK?lang=ko"
							data-a2a-title="[LÄTT] 
					캐시미어 블렌드 재킷"
							style="line-height: 32px;">
							<a class="a2a_button_facebook"
								onclick="GA_Event('상품_상세','공유_SNS','FACEBOOK');" target="_blank"
								href="/#facebook" rel="nofollow noopener"><span
								class="a2a_svg a2a_s__default a2a_s_facebook"
								style="background-color: rgb(24, 119, 242);"><svg
										focusable="false" aria-hidden="true"
										xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32">
										<path fill="#FFF"
											d="M17.78 27.5V17.008h3.522l.527-4.09h-4.05v-2.61c0-1.182.33-1.99 2.023-1.99h2.166V4.66c-.375-.05-1.66-.16-3.155-.16-3.123 0-5.26 1.905-5.26 5.405v3.016h-3.53v4.09h3.53V27.5h4.223z"></path></svg></span><span
								class="a2a_label">Facebook</span></a> <a class="a2a_button_twitter"
								onclick="GA_Event('상품_상세','공유_SNS','TWITTER');" target="_blank"
								href="/#twitter" rel="nofollow noopener"><span
								class="a2a_svg a2a_s__default a2a_s_twitter"
								style="background-color: rgb(29, 155, 240);"><svg
										focusable="false" aria-hidden="true"
										xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32">
										<path fill="#FFF"
											d="M28 8.557a9.913 9.913 0 01-2.828.775 4.93 4.93 0 002.166-2.725 9.738 9.738 0 01-3.13 1.194 4.92 4.92 0 00-3.593-1.55 4.924 4.924 0 00-4.794 6.049c-4.09-.21-7.72-2.17-10.15-5.15a4.942 4.942 0 00-.665 2.477c0 1.71.87 3.214 2.19 4.1a4.968 4.968 0 01-2.23-.616v.06c0 2.39 1.7 4.38 3.952 4.83-.414.115-.85.174-1.297.174-.318 0-.626-.03-.928-.086a4.935 4.935 0 004.6 3.42 9.893 9.893 0 01-6.114 2.107c-.398 0-.79-.023-1.175-.068a13.953 13.953 0 007.55 2.213c9.056 0 14.01-7.507 14.01-14.013 0-.213-.005-.426-.015-.637.96-.695 1.795-1.56 2.455-2.55z"></path></svg></span><span
								class="a2a_label">Twitter</span></a> <a
								href="javascript:fnSharePin(&quot;http://www.thehandsome.com/ko/HANDSOME/WOMEN/OUTER/JACKET/%EC%BA%90%EC%8B%9C%EB%AF%B8%EC%96%B4-%EB%B8%94%EB%A0%8C%EB%93%9C-%EC%9E%AC%ED%82%B7/p/IL2CAWJC528W_BK&quot;);"
								class="pinterest"
								onclick="GA_Event('상품_상세','공유_SNS','PRINTEREST');"></a> <input
								type="hidden" id="url"
								value="http://www.thehandsome.com/ko/HANDSOME/WOMEN/OUTER/JACKET/%EC%BA%90%EC%8B%9C%EB%AF%B8%EC%96%B4-%EB%B8%94%EB%A0%8C%EB%93%9C-%EC%9E%AC%ED%82%B7/p/IL2CAWJC528W_BK">
							<div style="clear: both;"></div>
						</div>
						<script type="text/javascript">
							var a2a_config = a2a_config || {};
							a2a_config.num_services = 10;
							var brandName = "[" + $('#brandName').val() + "]";
							var productName = $('.name').contents().first()
									.text();
							a2a_config.linkname = brandName + " " + productName;
							a2a_config.linkurl = 'http://www.thehandsome.com/ko/HANDSOME/WOMEN/OUTER/JACKET/%EC%BA%90%EC%8B%9C%EB%AF%B8%EC%96%B4-%EB%B8%94%EB%A0%8C%EB%93%9C-%EC%9E%AC%ED%82%B7/p/IL2CAWJC528W_BK?lang=ko';
							a2a_config.track_links = 'googl';
						</script>
						<script type="text/javascript"
							src="//static.addtoany.com/menu/page.js"></script>
						<!-- AddToAny END -->

					</div>
				</div>

				<input type="hidden" id="viewExhibitionPageCode" value=""> <input
					type="hidden" id="viewExhibitionPageName" value="">



				<!-- 코디상품 start -->
				<div class="related_evt">
					<div class="cd-n-lb-tab" id="codi_lookbook_tab" style="">
						<ul>
							<li class="on"><a href="#cd-n-lb-tab-01"
								onclick="GA_Event('상품_상세','함께 코디한 상품','함께 코디한 상품');">함께 코디한
									상품</a></li>
						</ul>
					</div>
					<!-- box1 -->
					<div class="cd-n-lb-content-box" id="cd-n-lb-tab-01"
						style="display: block;">
						<div class="matches_list together-codi-list"
							id="referencesListContent">
							<div class="bx-wrapper"
								style="max-width: 491px; margin: 0px auto;">
								<div class="bx-viewport"
									style="width: 100%; overflow: hidden; position: relative; height: 276px;">
									<ul class="clearfix slides"
										style="width: 615%; position: relative; transition-duration: 0s; transform: translate3d(-483px, 0px, 0px);">
										<li id="prod_IL2C9WPC341W_BK"
											style="float: left; list-style: none; position: relative; width: 151px; margin-right: 10px;"
											class="bx-clone">
											<div class="together-codi-pic">
												<a href="javascript:goDetailPage('IL2C9WPC341W_BK');"
													onclick="GA_Event('상품_상세','코디상품','레더 와이드 크롭 팬츠');"
													class="pic"> <img
													src="http://newmedia.thehandsome.com/IL/2C/FW/IL2C9WPC341W_BK_S01.jpg"
													alt="코디상품" class="respon_image">
												</a> <a href="#;" id="IL2C9WPC341W_BKLIKE"
													class="add_wishlist IL2C9WPC341W_BKLIKE like "
													onclick="addWishListProdClick('IL2C9WPC341W_BK');GA_Event('스타일', '코디상품 좋아요', '레더 와이드 크롭 팬츠');">위시리스트
													담기</a>
											</div> <span class="info_wrap item_info2"> <span
												class="brand BR31">LÄTT</span> <span class="title">레더
													와이드 크롭 팬츠</span> <span class="price"> ₩395,000</span>
										</span> <!-- 컬러칩 추가(20210614) -->
											<div class="we-codi-colorchip">
												<ul class="color_chip clearfix">
													<input type="hidden" id="colorName" value="BLACK">
													<li id="chipbtn_IL2C9WPC341W_BK"><input type="hidden"
														class="colorNameVal" value="BLACK"> <a href="#;"
														onclick="chngColorChip(this, 'IL2C9WPC341W_BK','IL2C9WPC341W_BK');"
														class="beige on"
														style="background: #000000 url('http://newmedia.thehandsome.com/IL/2C/FW/IL2C9WPC341W_BK_C01.jpg/dims/resize/24x24')"></a>
													</li>
													<li id="chipbtn_IL2C9WPC341W_MB"><input type="hidden"
														class="colorNameVal" value="SMOKE BLUE"> <a
														href="#;"
														onclick="chngColorChip(this, 'IL2C9WPC341W_BK','IL2C9WPC341W_MB');"
														class="beige"
														style="background: #788c99 url('http://newmedia.thehandsome.com/IL/2C/FW/IL2C9WPC341W_MB_C01.jpg/dims/resize/24x24')"
														onmouseover="setColorName('SMOKE BLUE');"
														onmouseout="setColorName('');"></a></li>
												</ul>
											</div> <!-- //컬러칩 추가(20210614) -->
										</li>

										<li id="prod_IL2C9ABG198W_DG"
											style="float: left; list-style: none; position: relative; width: 151px; margin-right: 10px;"
											class="bx-clone">
											<div class="together-codi-pic">
												<a href="javascript:goDetailPage('IL2C9ABG198W_DG');"
													onclick="GA_Event('상품_상세','코디상품','울 블렌드 자수 토트백');"
													class="pic"> <img
													src="http://newmedia.thehandsome.com/IL/2C/FW/IL2C9ABG198W_DG_S01.jpg"
													alt="코디상품" class="respon_image">
												</a> <a href="#;" id="IL2C9ABG198W_DGLIKE"
													class="add_wishlist IL2C9ABG198W_DGLIKE like "
													onclick="addWishListProdClick('IL2C9ABG198W_DG');GA_Event('스타일', '코디상품 좋아요', '울 블렌드 자수 토트백');">위시리스트
													담기</a>
											</div> <span class="info_wrap item_info2"> <span
												class="brand BR31">LÄTT</span> <span class="title">울
													블렌드 자수 토트백</span> <span class="price"> ₩275,000</span>
										</span> <!-- 컬러칩 추가(20210614) -->
											<div class="we-codi-colorchip">
												<ul class="color_chip clearfix">
													<input type="hidden" id="colorName" value="DARK GREY">
													<li id="chipbtn_IL2C9ABG198W_DG"><input type="hidden"
														class="colorNameVal" value="DARK GREY"> <a
														href="#;"
														onclick="chngColorChip(this, 'IL2C9ABG198W_DG','IL2C9ABG198W_DG');"
														class="beige on"
														style="background: #464646 url('http://newmedia.thehandsome.com/IL/2C/FW/IL2C9ABG198W_DG_C01.jpg/dims/resize/24x24')"></a>
													</li>
													<li id="chipbtn_IL2C9ABG198W_IV"><input type="hidden"
														class="colorNameVal" value="IVORY"> <a href="#;"
														onclick="chngColorChip(this, 'IL2C9ABG198W_DG','IL2C9ABG198W_IV');"
														class="beige"
														style="background: #fbfaea url('http://newmedia.thehandsome.com/IL/2C/FW/IL2C9ABG198W_IV_C01.jpg/dims/resize/24x24')"
														onmouseover="setColorName('IVORY');"
														onmouseout="setColorName('');"></a></li>
												</ul>
											</div> <!-- //컬러칩 추가(20210614) -->
										</li>
									</ul>
								</div>
							</div>
							<div class="controls" id="referencesControls">
								<a href="javascript:void(0);" class="prev"></a> <a
									href="javascript:void(0);" class="next"></a>
							</div>
						</div>
					</div>
					<!-- //box1 -->

					<!-- box2 -->
					<div class="cd-n-lb-content-box" id="cd-n-lb-tab-02">
						<div class="detail-pg-lookbook-aside-box">
							<!-- title-slide -->
							<div class="title-slide-zone">
								<div class="swiper-container">
									<div class="swiper-wrapper"></div>
								</div>
								<!-- nav -->
								<!-- //nav -->
							</div>
							<!-- //title-slide -->

							<!-- sub-slide -->
							<div class="sub-slide-zone"></div>
							<!-- //sub-slide -->
						</div>
					</div>

					<!-- //box2 -->
				</div>

				<!--코디상품 end -->



			</div>

			<form id="PAY_FORM" method="post" accept-charset="euc-kr"></form>
		</div>
	</div>

	<!--상품평 리스트 팝업-->
	<div class="popwrap w_type_4" id="customerReviewDiv"
		style="display: none;">
		<!--마일리지 안내영역 1906 -->
		<div class="mileage_info_wrap1906">
			<p class="wrap_heading">상품평 작성 시 추가 마일리지를 드려요!</p>
			<div class="mileage_info_box">
				<div class="review_w">
					<p class="review_w_tit">• 온라인 구매 상품평 작성 시</p>
					<ul>
						<li>
							<div class="ico_mileage1906">정상상품</div>
							<p>
								<strong>정상상품</strong><br>구매금액의 <b>0.5%</b>
							</p>
						</li>
						<li>
							<div class="ico_mileage1906">아울렛상품</div>
							<p>
								<strong>아울렛상품</strong><br>구매금액의 <b>0.1%</b>
							</p>
						</li>
						<li>
							<div class="ico_mileage1906">포토상품평</div>
							<p>
								<strong>포토상품평</strong><br>(상품별 최초)<br> <b>2,000마일리지</b>
							</p>
						</li>
					</ul>
				</div>
				<div class="best_review">
					<p class="review_w_tit">• 온라인/오프라인 구매</p>
					<ul>
						<li>
							<div class="ico_mileage1906">베스트리뷰</div>
							<p>
								<strong>베스트리뷰</strong><br>매월 5명 <b>10만원</b> 바우처
							</p>
						</li>
					</ul>
				</div>
			</div>
			<div class="noti_box" style="display: none;">
				<ul class="bul_sty01_li">
					<li>마일리지는 배송 완료일로부터 30일 이내, 작성한 상품평에 한하여 제공됩니다.</li>
					<li>상품평 작성 시, 제공되는 추가 마일리지는 온라인에서 구입한 상품에 한하여 제공됩니다.</li>
					<li>베스트 리뷰는 온라인/오프라인에서 구매한 상품의 상품평 전체를 대상으로 선정합니다.</li>
					<li>할인, 쿠폰 적용 후 실결제금액이 5,000원 이상인 상품에 한하여 지급됩니다.</li>
					<li>판매가 종료된 상품의 경우, 상품 상세페이지가 소멸되어 상품평 작성 및 마일리지 적립이 불가능합니다.</li>
				</ul>
			</div>
			<div class="btn_noti_box">
				<span>자세히 보기</span>
			</div>
		</div>
		<!--//마일리지 안내영역 1906 -->
		<div class="pop_tltwrap2 pb0 customerreviewdiv1905">

			<h3>
				상품평(<span id="review_cnt" class="review_cnt">0</span>)
			</h3>
			<div class="star_score1807" id="totalStarScoreWrapper">
				<span class="cmt_star"> <!-- 별점에 따라 class명 변경 (star1, star2 ,star3, star4, star5) -->
					<span class="cmt_per" id="totalStarScore">별점</span>
				</span>
			</div>
			<a href="#;" class="btn_evaluation1905" id="customerReviewWrite"
				onclick="GA_Event('상품평','상품평 작성하기','클릭');">상품평 작성하기</a>
		</div>
		<!-- pop_cnt-->
		<div class="pop_cnt evaluation_list1807 options">
			<div class="tab_a m3 mt20">
				<input type="hidden" id="review_tab_active" value="ALL">
				<ul id="review_tab">
					<li id="ALL"><a href="#;" class="active"
						onclick="GA_Event('상품평','탭','전체');">전체 (0)</a></li>
					<li id="PHOTO"><a href="#;" class=""
						onclick="GA_Event('상품평','탭','포토상품평');">포토 상품평 (0)</a></li>
					<li id="TEXT"><a href="#;"
						onclick="GA_Event('상품평','탭','일반상품평');">일반 상품평 (0)</a></li>
				</ul>
			</div>
			<div class="clearfix review_tab1_1807">
				<ul></ul>
			</div>
			<!-- paging -->
			<div class="paging mt30" id="reviewPagingDiv"></div>
			<!-- //paging -->
		</div>
		<!--// pop_cnt-->
		<a href="javascript:void(0);" class="btn_close"><img
			src="http://cdn.thehandsome.com/_ui/desktop/common/images/popup/ico_close.png"
			alt="닫기"></a>
	</div>
	<!--//상품평 리스트 팝업 -->

	<!--상품평 쓰기 팝업 -->
	<div class="popwrap w_type_4" id="customerReviewWriteDiv"
		style="display: none;">
		<div class="pop_tltwrap2 customerreviewwritediv1807">
			<h3 id="review_title">상품평 작성하기</h3>
			<p class="reqd_txt float_right">
				<strong class="reqd">*</strong> 표시는 필수항목입니다.
			</p>
		</div>
		<div class="pop_cnt evaluation_write1905 options1811">
			<form id="reviewForm" name="reviewForm"
				action="/ko/HANDSOME/WOMEN/OUTER/JACKET/%EC%BA%90%EC%8B%9C%EB%AF%B8%EC%96%B4-%EB%B8%94%EB%A0%8C%EB%93%9C-%EC%9E%AC%ED%82%B7/p/IL2CAWJC528W_BK?categoryCode=we05"
				method="post" enctype="multipart/form-data">
				<input type="hidden" name="productCode"> <input
					type="hidden" name="productCodeType"> <input type="hidden"
					name="orderNumber" id="orderNumber" value=""> <input
					type="hidden" name="purchaseColor" id="purchaseColor" value="">
				<input type="hidden" name="purchaseColorName" id="purchaseColorName"
					value=""> <input type="hidden" name="purchaseSize"
					id="purchaseSize" value=""> <input type="hidden"
					name="purchaseProdYN" id="purchaseProdYN" value=""> <input
					type="hidden" name="orderWriteChk" id="orderWriteChk" value="">
				<input type="hidden" name="closeWriteChk" id="closeWriteChk"
					value=""> <input type="hidden" name="productId"
					id="productId" value=""> <input type="hidden"
					name="fileDeleteYN" id="fileDeleteYN">

				<!-- 상품평활성화 -->
				<input type="hidden" name="categoryCode" id="categoryCode"
					value="SZ06"> <input type="hidden" name="shoulderWidth"
					id="shoulderWidth" value=""> <input type="hidden"
					name="chestSize" id="chestSize" value=""> <input
					type="hidden" name="waistSize" id="waistSize" value=""> <input
					type="hidden" name="buttSize" id="buttSize" value=""> <input
					type="hidden" name="totalSize" id="totalSize" value=""> <input
					type="hidden" name="photoAccumulationRightYn"
					id="photoAccumulationRightYn" value=""> <input
					type="hidden" name="offlineOrdDt" id="offlineOrdDt" value="">
				<input type="hidden" name="offlineShpCd" id="offlineShpCd" value="">
				<input type="hidden" name="offlineShpNm" id="offlineShpNm" value="">
				<input type="hidden" name="tempProductId" id="tempProductId"
					value=""> <input type="hidden" name="reviewFileCd"
					id="reviewFileCd" value=""> <input type="hidden"
					name="reviewFileCd1" id="reviewFileCd1" value=""> <input
					type="hidden" name="reviewFileCd2" id="reviewFileCd2" value="">
				<input type="hidden" name="reviewFileCd3" id="reviewFileCd3"
					value=""> <input type="hidden" name="reviewFileCd4"
					id="reviewFileCd4" value="">
				<fieldset>
					<legend>상품평쓰기</legend>
					<div class="tblwrap">
						<table class="tbl_wtype1">
							<caption>상품평쓰기 입력항목</caption>
							<colgroup>
								<col style="width: 135px">
								<col>
								<col style="width: 130px">
								<col>
							</colgroup>
							<tbody>
								<tr>
									<th scope="row" class="th_space">상품명</th>
									<td colspan="3" style="padding: 15px;">
										<div class="item_box" id="reviewProductDiv">
											<div class="pt_list_all">
												<a href="#;"><img
													src="http://cdn.thehandsome.com/_ui/desktop/common/images/products/no_img1.jpg"
													id="reviewProducImg" alt="상품 이미지"
													onerror="this.src='http://cdn.thehandsome.com/_ui/desktop/common/images/products/no_img1.jpg'"></a>
												<div class="tlt_wrap review_header_wrapper">
													<!-- <div class="tlt_wrap review_header_wrapper nodata"> -->
													<a href="#;" class="basket_tlt"> <span class="tlt"
														id="reviewProductBrandName"></span> <span class="sb_tlt"
														id="reviewProductProductName"></span> / <span
														id="reviewProducPrice"></span>
													</a>
													<!-- 주문조회에서 넘어올시 이거 보여줌<p class="color_op" id="purchased_color_size" style="display:none;">COLOR : <span id="review_color_name"></span>   <span class="and_line">/</span>  SIZE : <span id="review_size"></span></p> -->
													<div class="select_options_wrap" style="display: none;">
														<ul class="select_options">
															<li class="select_colors">
																<p>
																	<span class="compulsory">*</span> 색상
																	<!-- 색상 -->
																</p>
																<ul class="color_chip clearfix">
																	<input type="hidden" id="colorName" value="BLACK">
																	<li id="IL2CAWJC528W_BK"><input type="hidden"
																		class="colorNameVal" value="BLACK"> <a
																		href="#;" class="beige" data-color="BLACK"
																		style="background: #000000 url('http://newmedia.thehandsome.com/IL/2C/FW/IL2CAWJC528W_BK_C01.jpg/dims/resize/24x24');"
																		onclick="javascript:fn_clickColorCode('IL2CAWJC528W_BK', 'BLACK');"
																		onmouseover="setColorName('BLACK');"
																		onmouseout="setColorName('');"></a></li>
																	<li><span class="cl_name" id="colorNameContent"></span>
																	</li>
																</ul>
															</li>
															<li class="select_size">
																<p>
																	<span class="compulsory">*</span> 사이즈
																	<!-- 사이즈 -->
																</p>
																<ul class="size_chip clearfix" id="review_size_btn_area">
																	<li id="IL2CAWJC528W_BK_82"><a
																		onclick="javascript:fn_clickSizeCode('IL2CAWJC528W_BK_82');">82</a>
																		<productdetails:popupsizequickreference>
																		</productdetails:popupsizequickreference></li>
																	<li id="IL2CAWJC528W_BK_88"><a
																		onclick="javascript:fn_clickSizeCode('IL2CAWJC528W_BK_88');">88</a>
																	</li>
																</ul> <!-- <ul class="size_chip clearfix">
                                                            <li id="MN1IBKTO483W_MB_90">
                                                                <a href="javascript:fn_detailProductAjax('MN1IBKTO483W_MB_90')">90</a>
                                                            </li>
                                                 </ul> -->
															</li>
														</ul>
													</div>

													<!-- <div class="select_checkbox">
                                                <input type="checkbox" name="" value="" id="storePickTFC">
                                                <label for="storePickTFC">상품을 매장에서 구매하셨나요?</label>
                                            </div> -->
												</div>
												<!--20190529_selelct_group -->
												<div class="select_group" id="productOption"
													style="display: none;"></div>
												<!--//20190529_selelct_group -->
												<div class="select_checkbox" style="display: none;">
													<input type="checkbox" id="packopt" name="packopt">
													<label for="purchaseYN"> 매장에서 구매한 상품입니다.</label>
												</div>
											</div>
										</div>
									</td>
								</tr>
								<tr class="tbl_blank1807">
									<td colspan="4">&nbsp;</td>
								</tr>
								<tr class="radio_btn_1905 bk">
									<th scope="row" class="th_space">연 령</th>
									<td colspan="3"><input id="ageG1" type="radio" name="age"
										value="18세 이하"> <label for="ageG1">18세 이하</label> <input
										id="ageG2" type="radio" name="age" value="20대"> <label
										for="ageG2">20대</label> <input id="ageG3" type="radio"
										name="age" value="30대"> <label for="ageG3">30대</label>
										<input id="ageG4" type="radio" name="age" value="40대">
										<label for="ageG4">40대</label> <input id="ageG5" type="radio"
										name="age" value="50대"> <label for="ageG5">50대</label>
										<input id="ageG6" type="radio" name="age" value="60대 이상">
										<label for="ageG6">60대 이상</label></td>
								</tr>
								<tr class="input_txt_1905">
									<th scope="row" class="th_space" id="thHeight"><strong
										class="reqd">*</strong> 키</th>
									<td><input type="text" name="height" id="height"
										style="width: 75% amrgin-right:10px">cm</td>
									<th scope="row" class="th_space" id="thEnjoySize"><strong
										class="reqd">*</strong> 평소 사이즈</th>
									<td><input type="text" name="enjoySize" id="enjoySize"></td>
								</tr>
								<tr class="radio_btn_1905">
									<th scope="row" class="th_space" id="thBodyType"><strong
										class="reqd">*</strong> 체 형</th>
									<td colspan="3"><input id="dark1" type="radio"
										name="bodyType" value="마른 체형"> <label for="dark1">마른
											체형</label> <input id="dark2" type="radio" name="bodyType" value="보통">
										<label for="dark2">보통</label> <input id="dark3" type="radio"
										name="bodyType" value="통통한 체형"> <label for="dark3">통통한
											체형</label></td>
								</tr>
								<tr class="tbl_blank1807">
									<td colspan="4">&nbsp;</td>
								</tr>
								<tr class="write_star_wrap">
									<th colspan="4">
										<div class="write_star_score1807">
											<span class="cmt_star"> <span class="cmt_per star5">별점</span>
											</span>
											<ul class="btn_star_score">
												<li><a href="#;" value="1">1점</a></li>
												<li><a href="#;" value="2">2점</a></li>
												<li><a href="#;" value="3">3점</a></li>
												<li><a href="#;" value="4">4점</a></li>
												<li><a href="#;" value="5">5점</a></li>
												<input type="hidden" id="rating" name="rating" value="5">
											</ul>
											<p>평점을 선택해 주세요.</p>
										</div>
									</th>
								</tr>
								<tr>
									<th scope="row" class="th_space"><strong class="reqd">*</strong>실
										착용 사이즈</th>
									<td colspan="3">
										<!--20190529_상품평활성화-->
										<div class="cont_detail">
											<p class="left_txt">어깨너비 :</p>
											<ul class="rd_box_radio_list">
												<li><input id="realWearSize1_01" type="radio"
													name="realWearSize1" value="1"> <label
													for="realWearSize1_01">타이트함</label></li>
												<li><input id="realWearSize1_02" type="radio"
													name="realWearSize1" value="2"> <label
													for="realWearSize1_02">적당함</label></li>
												<li><input id="realWearSize1_03" type="radio"
													name="realWearSize1" value="3"> <label
													for="realWearSize1_03">여유있음</label></li>
											</ul>
										</div>
										<div class="cont_detail">
											<p class="left_txt">가슴둘레 :</p>
											<ul class="rd_box_radio_list">
												<li><input id="realWearSize2_01" type="radio"
													name="realWearSize2" value="1"> <label
													for="realWearSize2_01">타이트함</label></li>
												<li><input id="realWearSize2_02" type="radio"
													name="realWearSize2" value="2"> <label
													for="realWearSize2_02">적당함</label></li>
												<li><input id="realWearSize2_03" type="radio"
													name="realWearSize2" value="3"> <label
													for="realWearSize2_03">여유있음</label></li>
											</ul>
										</div>
										<div class="cont_detail">
											<p class="left_txt">총길이 :</p>
											<ul class="rd_box_radio_list">
												<li><input id="realWearSize3_01" type="radio"
													name="realWearSize3" value="1"> <label
													for="realWearSize3_01">짧은 편</label></li>
												<li><input id="realWearSize3_02" type="radio"
													name="realWearSize3" value="2"> <label
													for="realWearSize3_02">적당함</label></li>
												<li><input id="realWearSize3_03" type="radio"
													name="realWearSize3" value="3"> <label
													for="realWearSize3_03">긴 편</label></li>
											</ul>
										</div> <!--//20190529_상품평활성화-->
									</td>
								</tr>
								<tr>
									<th scope="row" class="th_space"><strong class="reqd">*</strong>실
										제품 색상</th>
									<td colspan="3"><input id="dark" type="radio"
										name="realProductColor" value="1"> <label for="dark">어두워요</label>
										<input id="same" type="radio" name="realProductColor"
										class="ml20" value="2"> <label for="same">화면과
											같아요</label> <input id="light" type="radio" name="realProductColor"
										class="ml20" value="3"> <label for="light">밝아요</label>
									</td>
								</tr>
								<tr>
									<th scope="row"><strong class="reqd"
										style="margin-top: 6px;">*</strong> <label for="lb1"
										style="margin-top: 6px;">상품평<br> <span
											class="subtxt_1905"> (20자 이상<br>&nbsp;200자 이하)
										</span>
									</label></th>
									<td colspan="3"><textarea id="reviewHeadline"
											name="headline" cols="30" rows="5"
											style="width: 98%; height: 78px" maxlength="200"></textarea>
									</td>
								</tr>
								<tr>
									<th scope="row" id="thFile" class="th_space"><label
										for="file">사진등록</label></th>
									<td colspan="3">
										<!-- File upload -->
										<div class="file_upload hs_input_file_wrap2003">
											<div class="upload_wrap2003">
												<input type="text" id="textReviewFile" class="text"
													title="파일 첨부하기" readonly="readonly" name="fileText">
												<div class="upload_btn">
													<input type="file" name="reviewFile" id="reviewFile"
														class="btn add_s" title="파일찾기"> <label
														for="reviewFile"> <!-- 	 <button type="button" id="uploadFile1" class="img_upload" title="파일찾기">  -->
														<span id="uploadFile1" class="img_upload">파일찾기</span> <!--	 </button> -->
													</label>

												</div>
											</div>
											<ul class="file_image_wrap2003">

											</ul>
											<p class="txt_guide">10MB 미만의 jpg,gif,png 파일만 첨부하실 수
												있습니다.</p>
											<!-- //File upload -->
										</div>
									</td>
								</tr>
							</tbody>
						</table>
						<p class="txt_guide">
							<span style="color: #e46764; font-weight: bold;">- 상품평과
								무관한 내용이거나 상품 재판매, 광고, 동일 문자의 반복 및 기타 불법적인 내용은 통보 없이 삭제되며,<br>&nbsp;&nbsp;해당
								글 작성자 ID는 글쓰기 권한이 제한됩니다.
							</span><br>- 반품, 취소 등의 CS관련 글은 고객센터&gt;1:1문의로 이동될 수 있습니다.<br>
							<span>- 더한섬닷컴에서 구매한 상품의 상품평을 배송완료 30일 이내 작성 시, 추가 마일리지를
								지급합니다.</span><br> - 마일리지 지급에 대한 상세 내용은 마이페이지&gt;내 상품평 페이지에서 확인
							부탁드립니다.<br> &nbsp;&nbsp;(마일리지 적립은 오프라인 구매 및 간편회원 제외)
						</p>
					</div>
					<div class="btnwrap mt40">
						<input type="button" id="reviewCancle" value="취소하기" class="btn wt">
						<input type="button" id="reviewWriteSend" value="등록하기"
							class="btn gray mr0">
					</div>

				</fieldset>
				<div>
					<input type="hidden" name="CSRFToken"
						value="ecf5895e-d72c-450d-9930-223071a6e7ca">
				</div>
			</form>
		</div>
		<a href="javascript:void(0);" id="reviewCloseBtn"
			style="position: absolute; top: 20px; right: 20px; width: 20px; height: 20px;"><img
			src="http://cdn.thehandsome.com/_ui/desktop/common/images/popup/ico_close.png"
			alt="닫기"></a>
	</div>
	<!--//상품평 쓰기 팝업 -->
	<style>
#delQnAFile {
	display: inline;
	position: absolute;
	top: 9px;
	right: 115px;
}

#textQnAFile {
	padding: 0 30px 0 6px;
	width: calc(100% - 24px);
	text-overflow: ellipsis;
}
</style>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#inquiryMobileNo2").on("keyup", function() {
				$(this).val($(this).val().replace(/[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/g, ''));
				if ($("#inquiryMobileNo2").val().length > 0) {
					var inputNumberchk = /^[0-9]+$/; // 숫자 체크
					if (!inputNumberchk.test($("#inquiryMobileNo2").val())) {
						$(this).val($(this).val().replace(/[^0-9]/gi, ""));
						var la = new layerAlert("숫자만 입력 가능합니다.");
						la.confirmAction = function() {
							$("#inquiryMobileNo2").focus();
						};
					}
				}
			});

			$("#inquiryMobileNo3").on("keyup", function() {
				$(this).val($(this).val().replace(/[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/g, ''));
				if ($("#inquiryMobileNo3").val().length > 0) {
					var inputNumberchk = /^[0-9]+$/; // 숫자 체크
					if (!inputNumberchk.test($("#inquiryMobileNo3").val())) {
						$(this).val($(this).val().replace(/[^0-9]/gi, ""));
						var la = new layerAlert("숫자만 입력 가능합니다.");
						la.confirmAction = function() {
							$("#inquiryMobileNo3").focus();
						};
					}
				}
			});

			$("#inquiryEmailSel").change(function() {
				if ($("#inquiryEmailSel").val().trim() == "") {
					$("#inquiryEmailDomain").val("");
				} else {
					$("#inquiryEmailDomain").val($("#inquiryEmailSel").val());
				}
			});

			//파일 삭제
			$(document).on('click', '#delQnAFile', function() {
				$("#delAttach").val("Y");
				$('#textQnAFile').val("");
				$('#qnaFile').val('');
			});
		});
	</script>
	<div class="popwrap w_type_4" id="productQnADiv" style="display: none;">

		<div class="pop_tltwrap2 pb0">
			<h3>Q&amp;A</h3>
		</div>
		<div class="pop_cnt evaluation_list">
			<a href="#;" class="btn_evaluation" id="productQnAWrite">상품문의하기</a>
			<div class="clearfix">
				<table class="pop_tbl_ltype1">
					<caption>Q&amp;A</caption>
					<thead>
						<tr>
							<th scope="col">번호</th>
							<th scope="col">Q&amp;A</th>
							<th scope="col">작성자</th>
							<th scope="col">작성일</th>
						</tr>
					</thead>
					<tbody></tbody>
				</table>
			</div>
			<!-- paging -->
			<div class="paging mt30" id="qnAPagingDiv"></div>
			<!-- //paging -->
		</div>
		<a href="javascript:void(0);" class="btn_close"><img
			src="http://cdn.thehandsome.com/_ui/desktop/common/images/popup/ico_close.png"
			alt="닫기"></a>
	</div>


	<div class="popwrap w_type_3" id="productQnAWriteDiv"
		style="display: none;">
		<div class="pop_tltwrap2">
			<h3>상품문의하기</h3>
		</div>
		<div class="pop_cnt evaluation_write">
			<form id="productQnAForm" name="productQnAForm"
				action="/ko/HANDSOME/WOMEN/OUTER/JACKET/%EC%BA%90%EC%8B%9C%EB%AF%B8%EC%96%B4-%EB%B8%94%EB%A0%8C%EB%93%9C-%EC%9E%AC%ED%82%B7/p/IL2CAWJC528W_BK?categoryCode=we05"
				method="post" enctype="multipart/form-data">
				<input type="hidden" id="productCode" name="productCode"> <input
					type="hidden" id="productQnaCode" name="productQnaCode"> <input
					type="hidden" id="delAttach" name="delAttach" value="N">
				<fieldset>
					<legend>상품문의하기</legend>
					<div class="tblwrap">
						<p class="reqd_txt float_right">
							<strong class="reqd">*</strong> 표시는 필수항목입니다.
						</p>
						<table class="tbl_wtype1">
							<caption>상품문의하기 입력항목</caption>
							<colgroup>
								<col width="140px">
								<col width="*">
							</colgroup>
							<tbody>
								<tr>
									<th scope="row"><strong class="reqd">*</strong><label
										for="inquiryTitle">문의제목</label></th>
									<td><input type="text" id="inquiryTitle"
										name="inquiryTitle" title="input" style="width: 100%">
									</td>
								</tr>
								<tr>
									<th scope="row"><strong class="reqd">*</strong><label
										for="inquiryContents">문의내용</label><span class="com_txt_p">(300자
											이하)</span></th>
									<td><textarea name="inquiryContents" id="inquiryContents"
											cols="30" rows="5" style="width: 98%; height: 200px"></textarea>
									</td>
								</tr>
								<tr>
									<th scope="row" class="th_space"><label for="file">파일
											첨부하기</label></th>
									<td>
										<!-- File upload -->
										<div class="file_upload">
											<input type="text" id="textQnAFile" class="text" title="파일찾기"
												readonly="readonly" name="fileText"> <a
												href="javascript:void(0);" id="delQnAFile"> <img
												src="http://cdn.thehandsome.com/_ui/desktop/common/images/popup/ico_close.png"
												alt="파일삭제">
											</a>
											<div class="upload_btn">
												<label for="qnaFile"><button type="button"
														id="uploadFile" class="img_upload" title="파일찾기">
														<span>파일찾기</span>
													</button></label> <input type="file" id="qnaFile" name="uploadFile"
													class="btn add_s" title="파일찾기">
											</div>
										</div> <!-- //File upload -->
										<p class="txt_guide">10MB 미만의 jpg,gif,png 파일만 첨부하실 수 있습니다.</p>
									</td>
								</tr>
								<tr>
									<th scope="row" class="th_space"><label
										for="inquiryMobileNo2">SMS 알림받기</label></th>
									<td>
										<div style="position: relative;">
											<input type="hidden" id="smsMobileNo" name="smsMobileNo">
											<select id="inquiryMobileNo1" title="휴대폰 번호 앞자리"
												style="width: 80px; margin-top: 0; vertical-align: middle; padding: 3px 8px 3px 8px;">
												<option value="010" selected="selected">010</option>
												<option value="011">011</option>
												<option value="016">016</option>
												<option value="017">017</option>
												<option value="018">018</option>
												<option value="019">019</option>
											</select>
											<div class="form_hyphen">-</div>
											<input type="text" id="inquiryMobileNo2"
												name="inquiryMobileNo2" title="휴대폰 번호 가운데자리"
												style="width: 80px;" maxlength="4">
											<div class="form_hyphen">-</div>
											<input type="text" id="inquiryMobileNo3"
												name="inquiryMobileNo3" title="휴대폰 번호 뒷자리"
												style="width: 80px;" maxlength="4"> <span
												class="sms_alm_2006_chk"
												style="display: block; position: absolute; top: 3px; right: 14px;">
												<input type="hidden" id="smsNoticeYN" name="smsNoticeYN"
												value="N"> <input type="checkbox"
												id="inquirySmsNoticeYn" name="inquirySmsNoticeYn"
												style="margin-top: 1px;"> <label
												for="inquirySmsNoticeYn">SMS 알람고지</label>
											</span>
										</div>
									</td>
								</tr>
								<tr>
									<th scope="row"><label for="inquiryEmailAddress"><strong
											class="reqd">*</strong><label for="inquiryMobileNo2">이메일
												답변받기</label></label></th>
									<td><input type="hidden" id="replyToEmail"
										name="replyToEmail"> <input type="text"
										id="inquiryEmailAddress" name="inquiryEmailAddress"
										title="이메일아이디" style="width: 120px;"> <span
										class="andmail">@</span> <input type="text"
										id="inquiryEmailDomain" name="inquiryEmailDomain"
										title="이메일계정 입력란" style="width: 120px;"> <select
										id="inquiryEmailSel" title="이메일계정"
										style="width: 140px; padding: 3px 8px 3px 8px;">
											<option value="" selected="selected">직접입력</option>
											<option value="naver.com">naver.com</option>
											<option value="daum.net">daum.net</option>
											<option value="gmail.com">gmail.com</option>
											<option value="yahoo.co.kr">yahoo.co.kr</option>
											<option value="lycos.co.kr">lycos.co.kr</option>
											<option value="nate.com">nate.com</option>
											<option value="empas.com">empas.com</option>
											<option value="hotmail.com">hotmail.com</option>
											<option value="msn.com">msn.com</option>
											<option value="hanmir.com">hanmir.com</option>
											<option value="chol.net">chol.net</option>
											<option value="korea.com">korea.com</option>
											<option value="netsgo.com">netsgo.com</option>
											<option value="dreamwiz.com">dreamwiz.com</option>
											<option value="hanafos.com">hanafos.com</option>
											<option value="freechal.com">freechal.com</option>
											<option value="hitel.net">hitel.net</option>
									</select></td>
								</tr>
							</tbody>
						</table>
					</div>
					<p class="guide_txt clearfix" style="border-top: 0;">
						<span class="float_left"><strong>상품에 관한 배송, 교환, 취소
								등의 자세한 문의사항은 고객센터를 이용해 주시기 바랍니다.</strong></span> <span class="float_right">
							<input type="checkbox" name="securitySentenceYn"
							id="securitySentenceYn" value="Y"> <label
							for="securitySentenceYn">비밀글 설정</label>
						</span>
					</p>
					<div class="btnwrap mt40">
						<input type="button" id="qnaCancle" value="취소하기" class="btn wt">
						<input type="button" id="qnaWriteSend" value="등록하기"
							class="btn gray mr0">
					</div>
				</fieldset>
				<div>
					<input type="hidden" name="CSRFToken"
						value="ecf5895e-d72c-450d-9930-223071a6e7ca">
				</div>
			</form>
		</div>
		<a href="javascript:void(0);" class="btn_close"><img
			src="http://cdn.thehandsome.com/_ui/desktop/common/images/popup/ico_close.png"
			alt="닫기"></a>
	</div>
	<!-- layer pop 1 -->
	<div class="popwrap w_type_3" id="storePickupDiv"
		style="display: none;">
		<!--title-->
		<div class="pop_tltwrap">
			<h3>수령 매장 선택</h3>
		</div>
		<!--//title-->
		<!--contents-->
		<div class="pop_cnt zipcode">
			<!-- search -->
			<div class="search">
				<label for="search">지역명 (도로명)</label> <input type="text"
					id="storePickupSearchWord" name="searchWord"
					placeholder="매장명 또는 지역 명을 입력 후 검색해 주세요" style="width: 260px">
				<input type="button" value="검색" id="storePickupSearchBtn"
					class="btn wt_s mr0 min_auto">
			</div>
			<!-- //search -->
			<!--  del_tab_container -->
			<div class="del_tab_container">
				<table class="pop_dtable store">
					<caption>배송지 목록</caption>
					<thead>
						<tr>
							<th scope="col">선택</th>
							<th scope="col">배송지 주소</th>
							<th scope="col">연락처/휴대폰</th>
						</tr>
					</thead>
					<tbody id="popupStorePickupContent">

					</tbody>
				</table>
				<div class="btnwrap">
					<input class="btn wt_s" id="storePickupCloseBtn" value="취소"
						type="button"> <input class="btn gray_s"
						id="storePickupChoiceBtn" value="확인" type="button">
				</div>
			</div>
			<!-- //del_tab_container -->
		</div>
		<!--//contents-->
		<a href="#;" class="btn_close" id="storePickupClose"><img
			src="http://cdn.thehandsome.com/_ui/desktop/common/images/popup/ico_close.png"
			alt="닫기"></a>
	</div>
	<!-- layer pop 1 -->

	<!-- layer pop 1 -->
	<!--리얼핏 팝업 -->
	<div class="popwrap w_type_3" id="viewRealFit1810"
		style="width: 624px; display: none; margin-left: -342px;">
		<!-- Title1 -->
		<div class="pop_tltwrap rlfit_pop_tltwrap">
			<h3>핏 가이드</h3>
		</div>
		<!-- //Title1 -->
		<div class="rlfit_pop_cnt">
			<div class="tab_d m2">
				<ul>
					<li><a href="javascript:chageFitGuideTab('FIRST')"
						class="active"></a></li>
					<li><a href="javascript:chageFitGuideTab('SECOND')"></a></li>
				</ul>
			</div>
			<div class="rlfit_pop_slider">
				<!-- rlfit_slide1 -->
				<div class="tab_cnt1810 rlfit_slide1">
					<p class="fit_guide_size1810">• 착용 사이즈:</p>
					<ul class="slides">
					</ul>
					<div class="controls">
						<span class="prev" id="fitGuiPrev1"></span> <span class="next"
							id="fitGuiNext1"></span>
					</div>
					<div class="bx_pager1810">
						<a class="bx-pager-link" data-slide-index="0" href="#;">정면</a> <a
							class="bx-pager-link" data-slide-index="1" href="#;">뒷면</a>
					</div>
				</div>
				<!--// rlfit_slide1 -->
				<!-- rlfit_slide2 -->
				<div class="tab_cnt1810 rlfit_slide2" style="display: none;">
					<p class="fit_guide_size1810">• 착용 사이즈:</p>
					<ul class="slides">
					</ul>
					<div class="controls">
						<span class="prev" id="fitGuiPrev2"></span> <span class="next"
							id="fitGuiNext2"></span>
					</div>
					<div class="bx_pager1810">
						<a class="bx-pager-link" data-slide-index="0" href="#;">정면</a> <a
							class="bx-pager-link" data-slide-index="1" href="#;">뒷면</a>
					</div>
				</div>
				<!--// rlfit_slide2 -->
			</div>
		</div>
		<!-- btn_close -->
		<a href="#" class="btn_close"><img
			src="/_ui/desktop/common/images/popup/ico_close.png" alt="닫기"></a>
		<!-- //btn_close -->
	</div>

	<!-- // 211101 체험단 리뷰 추가 E -->
</div>
<%@ include file="/WEB-INF/views/common/footer.jsp"%>