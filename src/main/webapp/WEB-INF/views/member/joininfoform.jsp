<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!-- /**
 * @author 신기원
 * @since 2022.10.20
 * @version 1.0
 * 
 * <pre>
 * 수정일                    수정자               수정내용
 * 2022.10.20   신기원              최초 생성
 * </pre>
 */ -->
<!DOCTYPE html>
<html lang="en">
<head>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=1, target-densitydpi=medium-dpi" />
<meta property="og:image"
	content="http://s3.ap-northeast-2.amazonaws.com/cdn.thehandsome.com-kr/pc/210510_logo/%E3%84%B9%EB%A1%9C%EA%B3%A0.png" />
<title>회원정보입력폼 | 더한섬닷컴</title>

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
<style type="text/css" media="print">
@import url("/resources/blueprint/print.css");
</style>
<script async="" charset="utf-8"
	src="//static.recopick.com/dist/production.min.js"></script>
<script type="text/javascript" src="/resources/js/jquery-1.11.2.min.js"></script>
<script type="text/javascript" src="/resources/js/jquery.vticker.js"></script>

<script type="text/javascript" src="/resources/js/handsome/common.js"></script>
<script type="text/javascript"
	src="/resources/js/handsome/html5shiv-printshiv.js"></script>
<script type="text/javascript"
	src="/resources/js/handsome/jquery.flexslider.js"></script>
<script type="text/javascript"
	src="/resources/js/handsome/ui.js?20211105"></script>
<script type="text/javascript" src="/resources/js/jquery.form-3.51.js"></script>
<script type="text/javascript"
	src="/resources/js/common_function.js?20220411"></script>
<script type="text/javascript" src="/resources/js/videojs-ie8.min.js"></script>

<script type="text/javascript"
	src="/resources/js/jquery-ui-1.11.2.min.js"></script>

<script type="text/javascript" src="/resources/js/instagramAPI.js"></script>
<script type="text/javascript" src="/resources/js/makePCookie.js"></script>

<script type="text/javascript" src="/resources/wisenut/js/jquery.min.js"></script>

<script type="text/javascript" src="/resources/js/netfunnel.js"
	charset="UTF-8"></script>
<script type="text/javascript" src="/resources/js/netfunnel_skin.js"
	charset="UTF-8"></script>

<script type="text/javascript" src="/resources/js/unorm.js"></script>


<style media="screen">
.blsmflw1 {
	animation: target_image 1.5s;
	animation-iteration-count: 2;
	transform-origin: 50% 50%;
}

.leaf2209 {
	animation: target_image 1.5s;
	animation-iteration-count: 2;
	transform-origin: 50% 50%;
}

@
keyframes target_image { 0% {
	transform: rotate(-1deg);
}
50%
{
transform
















:








 








rotate
















(9
deg














);
}
100%
{
transform
















:








 








rotate
















(-1
deg














);
}
}
</style>

</head>
<body>
	<!-- 	<form id="CSRFForm" action="/ko/member/joininfoform" method="post">
		<div>
			<input type="hidden" name="CSRFToken"
				value="bb3009c6-58a4-40fd-ac1d-b2fee6de282a" />
		</div>
	</form> -->
	<div id="headerWrap">
		<div class="header header_fixed header_main1903">
			<script type="text/javascript" src="/resources/js/SsoAjax.js"></script>

			<script>
				var arkQuery = $.noConflict(true);
			</script>


			<script type="text/javascript">
				var historyDelete = "검색기록전체삭제";
				var typingWord = "검색어를 입력해주세요.";
				var gotoBrand = "브랜드바로가기";
				var noRecommendCategory = "추천 카테고리가 없습니다.";
				var noRecommendBrand = "추천 브랜드가 없습니다.";
				var noRecommendResult = "해당 단어로 시작하는 검색어가 없습니다.";
				var brandReport = "브랜드리포트";
				var graph = "그래프";
				var fold = "접기";

				var favoriteBrands = new Array();
			</script>
			<script type="text/javascript"
				src="/resources/wisenut/ark/js/beta.fix.js"></script>
			<script type="text/javascript" src="/resources/wisenut/ark/js/ark.js"></script>
			<script type="text/javascript" src="/resources/wisenut/js/search.js"></script>
			<script type="text/javascript">
				//<![CDATA[
				// #1067 - 201803 메인 개편
				function applyCategory() {
					layerAlert("로그인 후 당신만의 브랜드 즐겨찾기를 <br /> 완성하세요.");
					return;

					var brandNameArray = new Array();
					var brandCodeArray = new Array();
					var parentBrandCodeArray = new Array();
					var sortIndexArray = new Array();
					var valueSplitArray = new Array();
					var dataValue = "";

					$('input:checkbox[class="checkboxEvent"]').each(function() {
						if (this.checked) {
							dataValue = this.value;
							valueSplitArray = dataValue.split("#");
							brandNameArray.push(this.title);
							parentBrandCodeArray.push(valueSplitArray[0]);
							brandCodeArray.push(valueSplitArray[1]);
							sortIndexArray.push(valueSplitArray[2]);
						}
					});
					var parentBrandCode = parentBrandCodeArray.join(",");
					var brandName = brandNameArray.join(",");
					var brandCode = brandCodeArray.join(",");
					var sortIndex = sortIndexArray.join(",");

					$.ajax({
						type : "GET",
						url : "/intro/setCategoryList",
						data : {
							brandName : brandName,
							brandCode : brandCode,
							parentBrandCode : parentBrandCode,
							sortIndex : sortIndex,
						},
						success : function(data) {
							window.location.reload();
						},
						error : function(e) {
							console.log("error", e);
						},
					});
				}

				function resetCategory() {
					$('input:checkbox[class="checkboxEvent"]').each(function() {
						if (this.checked) {
							this.checked = false;
						}
					});
					applyCategory();
				}

				function searchOn() {
					searchInit();
					$("div.gnb_sh_wrap").css("display", "block");
					$("div.util_menu").css("display", "none");
					$("div.gnb_sh_result").css("display", "block");
				}

				function searchOff() {
					$("div.util_menu").css("display", "block");
					$("div.gnb_sh_wrap").css("display", "none");
				}

				function showTab() {
					$("div.gnb_sh_result").css("display", "block");
				}

				// 쿠키 생성
				function setCookie(cName, cValue, cDay) {
					var expire = new Date();
					expire.setDate(expire.getDate() + cDay);
					cookies = cName + "=" + escape(cValue) + "; path=/ ";
					if (typeof cDay != "undefined")
						cookies += ";expires=" + expire.toGMTString() + ";";
					document.cookie = cookies;
				}
				//쿠키 생성 (지정날짜 제거)
				function setLimitCookie(cName, cValue, cLimitDay) {
					var expire = null;
					cookies = cName + "=" + escape(cValue) + "; path=/ ";

					if (cLimitDay && cLimitDay != ""
							&& cLimitDay.indexOf("/") != -1) {
						var limitFullYear = parseInt(cLimitDay.split("/")[0],
								10);
						var limitMonth = parseInt(cLimitDay.split("/")[1], 10) - 1; //0부터 1월
						var limitDate = parseInt(cLimitDay.split("/")[2], 10);
						expire = new Date(limitFullYear, limitMonth, limitDate);

						cookies += ";expires=" + expire.toGMTString() + ";";
					}
					document.cookie = cookies;
				}
				//쿠키 생성 (00시 제거)
				function setOneDayCookie(cName, cValue, cDay) {
					var currentDate = new Date();
					var expire = new Date(currentDate.getFullYear(),
							currentDate.getMonth(), currentDate.getDate()
									+ cDay, 0, 0, 0);
					cookies = cName + "=" + escape(cValue) + "; path=/ ";
					if (typeof cDay != "undefined")
						cookies += ";expires=" + expire.toGMTString() + ";";
					document.cookie = cookies;
				}

				// 쿠키 가져오기
				function getCookie(cName) {
					cName = cName + "=";
					var cookieData = document.cookie;
					var start = cookieData.indexOf(cName);
					var cValue = "";
					if (start != -1) {
						start += cName.length;
						var end = cookieData.indexOf(";", start);
						if (end == -1)
							end = cookieData.length;
						cValue = cookieData.substring(start, end);
					}
					return unescape(cValue);
				}

				//쿠키 삭제
				function deletecookie(name) {
					var today = new Date();
					var path = "/ko/";
					var lastIndex = path.lastIndexOf("/");
					path = path.substring(0, lastIndex);
					today.setDate(today.getDate() + -1);
					document.cookie = name + "=; path=" + path + "; expires="
							+ today.toGMTString() + ";";
				}

				function deletecookiePath(name, path) {
					var today = new Date();

					if (path == "") {
						path = "/";
					}

					today.setDate(today.getDate() + -1);
					document.cookie = name + "=; path=" + path + "; expires="
							+ today.toGMTString() + ";";
				}

				function searchInit() {
					var settingCookie = getCookie("searchSaveYN");
					if (settingCookie == "on") {
						$("#searchSaveYN").text("끄기");
						$("#searchSaveYNfame").text("끄기");
					} else {
						$("#searchSaveYN").text("저장");
						$("#searchSaveYNfame").text("저장");
					}
				}

				function ie8AlertHide() {
					setCookie("ie8AlertHideYN", "on", 365);
					$("#alertIE8").hide();
				}

				$(document)
						.ready(
								function() {
									$(".gnb_nav.hscene1906 .cate_m .hscene")
											.mouseover(
													function() {
														// 툴팁
														$(
																".gnb_nav.hscene1906 .cate_m li .delch_box")
																.addClass("on");
													});
									$(".gnb_nav.hscene1906 .cate_m .hscene")
											.mouseout(
													function() {
														$(
																".gnb_nav.hscene1906 .cate_m li .delch_box")
																.removeClass(
																		"on");
													});

									var todayDate = new Date();
									var startDate = new Date(
											"2018/05/29 00:00:01"), endDate = new Date(
											"2018/06/17 23:59:59");
									if (todayDate.getTime() >= startDate
											.getTime()
											&& todayDate.getTime() <= endDate
													.getTime()) {
										$("#athome_header_event").show();
									} else {
										$("#athome_header_org").show();
									}

									//IE8버젼 체크
									if (getCookie("ie8AlertHideYN") != "on") {
										if (navigator.appVersion
												.indexOf("MSIE 8.0") >= 0
												|| navigator.appVersion
														.indexOf("Trident/4.0") >= 0) {
											var html = "<div style='position:relative; width: 100%; height: 30px;'><div style='position:fixed;width:100%;background:#ffffbc none repeat scroll 0% 0%; text-align: center; z-index: 999; line-height: 30px;'>";
											html += "Thehandsome.com은 인터넷 익스플로러 10 이상에 최적화되어 있습니다.";
											html += " <a href='http://windows.microsoft.com/ko-kr/windows/downloads'><strong>[브라우저 업데이트 바로가기]</strong></a>";
											html += "<a href='#' onclick='ie8AlertHide();' style='display:block;float:right;padding-right:10px'>X</a></div></div>";
											$(".loading_bar").before(
													"<div align='center' id='alertIE8'>"
															+ html + "</div>");
										}
									}

									settingCookie = getCookie("searchSaveYN");

									if (settingCookie == "") {
										setCookie("searchSaveYN", "on", 365);
									}

									$("#gnbsearch")
											.click(
													function() {
														var searchwords = $(
																"#gnbsearchwords")
																.val();
														searchwords = searchwords
																.replace(
																		/(^\s*)|(\s*$)/g,
																		"");

														if (searchwords != "") {
															location.href = "/ko/hssearch?searchwords="
																	+ searchwords;
														} else {
															$("#gnbsearchwords")
																	.val("");
															alert("검색어를 입력해주세요.");
														}
													});

									$(".btn_svclose")
											.click(
													function() {
														settingCookie = getCookie("searchSaveYN");
														if ($(this).children(
																"span").text() == "끄기") {
															$(this).children(
																	"span")
																	.text("저장");
														} else {
															$(this).children(
																	"span")
																	.text("끄기");
														}
														if (settingCookie == "off") {
															$(this)
																	.children(
																			"span")
																	.attr(
																			"save",
																			"on");
															setCookie(
																	"searchSaveYN",
																	"on", 365);
														} else {
															$(this)
																	.children(
																			"span")
																	.attr(
																			"save",
																			"off");
															setCookie(
																	"searchSaveYN",
																	"off", 365);
														}
													});
									$(".favBtn")
											.click(
													function() {
														words = $(this).text();
														location.href = "/ko/hssearch?searchwords="
																+ words;
													});
									$(".newlyBtn")
											.click(
													function() {
														words = $(this).text();
														location.href = "/ko/hssearch?searchwords="
																+ words;
													});

									var sw1 = decodeURIComponent(escape(getCookie("HS_Seachwords1")));
									var sw2 = decodeURIComponent(escape(getCookie("HS_Seachwords2")));
									var sw3 = decodeURIComponent(escape(getCookie("HS_Seachwords3")));
									var sw4 = decodeURIComponent(escape(getCookie("HS_Seachwords4")));
									var sw5 = decodeURIComponent(escape(getCookie("HS_Seachwords5")));

									var sw1_date = sw1 != "" ? sw1.split("_")[1]
											: "";
									var sw2_date = sw2 != "" ? sw2.split("_")[1]
											: "";
									var sw3_date = sw3 != "" ? sw3.split("_")[1]
											: "";
									var sw4_date = sw4 != "" ? sw4.split("_")[1]
											: "";
									var sw5_date = sw5 != "" ? sw5.split("_")[1]
											: "";

									var arr = [ sw1, sw2, sw3, sw4, sw5 ];
									var arr_date = [ sw1_date, sw2_date,
											sw3_date, sw4_date, sw5_date ];

									arr_date.sort(compStringReverse);

									for (var i = 0; i < arr_date.length; i++) {
										for (var j = 0; j < arr.length; j++) {
											if (arr_date[i] != "") {
												if (arr[j].indexOf(arr_date[i]) > 0) {
													$("#searchWord" + (i + 1))
															.text(
																	arr[j]
																			.split("_")[0]);
													$(".searchWord" + (i + 1))
															.css("display",
																	"block");

													$("#searchWord" + (i + 1))
															.next()
															.attr(
																	"onclick",
																	"deletecookie('HS_Seachwords"
																			+ (j + 1)
																			+ "')");
												}
											}
										}

										if (arr_date[i] == "") {
											$("#searchWord" + (i + 1)).text("");
										}
									}

									//자동로그인

									var ssoUrl = "https://sso.h-point.co.kr:29865"
											+ "/co/setSsoReqJSONP.hd";
									gfnSsoReqAjax(ssoUrl, hpAutoLogin);

									//vip 채팅 서비스
									if ("" != "") {
										var pag = "joinInfoFormPage";

										var chkPag = [ "svCenterMainPage",
												"noticePage",
												"manToManInquiryPage",
												"faqPage", "mendingPage",
												"vocProvisionPage",
												"vocInfoFormPage",
												"memberJoinGuidePage",
												"theClubInfoPage",
												"memberBenefitGuidePage",
												"pointGuidePage",
												"couponGuidePage",
												"paymentGuidePage",
												"asGuidePage", ];

										var vipPassCheck = "N"; // VVIP/THESTAR/STAR 등급 체크
										var timePassCheck = "N"; // 평일 0900~1800 체크

										if ("" == "VVIP" || "" == "THESTAR"
												|| "" == "STAR") {
											vipPassCheck = "Y";
										}

										if (vipPassCheck == "N" && "" == "PASS") {
											// MANIA 이하 등급, 평일 체크
											// chatbotInfo "PASS" : 등급이 VVIP/THESTAR/STAR/MANIA 이거나 평일 0900~1800
											var hour = new Date()
													.format("HHmm");
											var weekName = new Date()
													.format("E");
											if (weekName != "일요일"
													&& weekName != "토요일"
													&& hour >= "0900"
													&& hour <= "1800") {
												$
														.ajax({
															type : "POST",
															url : "/ko/chatbot/chkholiday",
															data : {
																CSRFToken : "bb3009c6-58a4-40fd-ac1d-b2fee6de282a"
															},
															async : false,
															success : function(
																	result) {
																if (result == true) {
																	timePassCheck = "Y";
																}
															},
															error : function(
																	request,
																	statuss,
																	error) {
															},
														});
											}
										}

										if ((vipPassCheck == "Y" || timePassCheck == "Y")
												&& "joinInfoFormPage" == "main201903Page") {
											$("#chatbotMain").show();
										} else {
											$("#chatbotMain").hide();
										}

										if (chkPag.indexOf(pag) > -1) {
											if (vipPassCheck == "Y"
													|| timePassCheck == "Y") {
												$("#chatbot").show();
											} else {
												$("#chatbot").hide();
											}
										} else {
											$("#chatbot").hide();
										}
									}

									//athome
									if ("" != "") {
										// #1067 - 메인 개편

										$(".ico.athome").mouseenter(function() {
											$(".athome_info").show();
										});
										$(".athome_header").mouseleave(
												function() {
													$(".athome_info").hide();
												});
									}

									// ##1141 - 카테고리 개편
									outletGnbNav(); //아울렛 gnb
								});

				function athomeBlink() {
					$(".ico.athome").css("opacity", "0");
					setTimeout(function() {
						$(".ico.athome").css("opacity", "1");
					}, 500);
				}
				function athomeEventBlink() {
					$(".athome_event").css("opacity", "0");
					setTimeout(function() {
						$(".athome_event").css("opacity", "1");
					}, 500);
				}

				function hpAutoLogin(data) {
					//console.log("data.succYn:"+data.succYn);
					if (data.succYn == "Y") {
						$.ajax({
							type : "GET",
							url : "/ko/hpoint/simpleJoinMember",
							data : {
								mcustNo : data.mcustNo
							},
							success : function(data) {
								if (data.resultCode == "L") {
									$("#hcid").val(data.uid);
									$("#autologinForm").submit();
								}
							},
							error : function(e) {
							},
						});
					}
				}

				function compStringReverse(a, b) {
					if (a > b)
						return -1;
					if (b > a)
						return 1;
					return 0;
				}

				function EnterSearchHeader() {
					var searchwords = $("#gnbsearchwords").val();
					searchwords = searchwords.replace(/(^\s*)|(\s*$)/g, "");

					if (searchwords != "") {
						location.href = "/ko/hssearch?searchwords="
								+ searchwords;
					} else {
						$("#gnbsearchwords").val("");
						alert("검색어를 입력해주세요.");
					}
				}

				function language(isoCode) {
					if (location.href.indexOf("/handsome/") > -1) {
						$.ajax({
							type : "post",
							url : "/ko/_s/language" + "?" + "code=" + isoCode,
							dataType : "json",
							error : function(request, status, error) {
								console.log("code:" + request.status + "\n"
										+ "message:" + request.responseText
										+ "\n" + "error:" + error);
							},
							success : function(result) {
								location.href = "/ko/";
							},
						});
					} else {
						location.href = "/" + isoCode;
					}
				}

				function getCSRFToken() {
					return ("CSRFToken=" + $("#CSRFForm [name='CSRFToken']")
							.first().val());
				}

				function setLogout() {
					deletecookie("UID");
					deletecookie("criteoEmail");
					deletecookie("memberGb");
					location.href = "/ko/logout";
				}

				//START OF 메인 검색창////////////////////////
				// #1067 - 201803 메인 개편
				$(function() {
					getNotLoginMyKeyWord($("#query").val(), 10);

					/* 
					// 내가 찾은 검색어(비로그인 상태) set, get in DB
					getNotLoginMyKeyWord($("#query").val(), 10);           
					 */

					if (navigator.userAgent.toLowerCase().indexOf("firefox") > -1) {
						$("#searchBox").on("keypress", function(event) {
							var keyCode = event.which || event.keyCode;
						});
					}

					$("#query")
							.click(
									function() {
										// 스타일 서치 아이템
										doStyleItem();
										$(".search_box_wrap")
												.click(
														function() {
															if (!$(
																	".search_box_wrap")
																	.hasClass(
																			"on")) {
																var dataHeight = $(
																		".data_react")
																		.height();
																$(
																		"#transparent_mask")
																		.show();

																GA_Event(
																		"공통",
																		"유틸_메뉴",
																		"검색");
																$(
																		".search_box_wrap")
																		.stop()
																		.animate(
																				{
																					width : "406px",
																					height : '+= dataHeight +"px"',
																					"max-height" : "430px",
																					opacity : 1,
																				},
																				"fast");

																$(
																		".search_box_wrap")
																		.addClass(
																				"on");
																$(
																		".btn_search_tab")
																		.stop()
																		.show();

																$(".data_react")
																		.stop()
																		.show();

																$(
																		"#styleSearchSlider")
																		.hide();
																$(
																		".search_box .search")
																		.stop()
																		.fadeIn(
																				"fast");

																//검색창 텝 >> style search slider
																$(document)
																		.find(
																				"#styleSearchSlider")
																		.flexslider(
																				{
																					animation : "slide",
																					slideshow : false,
																					directionNav : true,
																					after : function(
																							slider) {
																						$(
																								"#styleSearchSlider .slides li")
																								.not(
																										".clone")
																								.each(
																										function(
																												idx) {
																											if ($(
																													this)
																													.hasClass(
																															"flex-active-slide")) {
																												$(
																														".ss_txt_list li a")
																														.removeClass(
																																"on");
																												$(
																														".ss_txt_list li:eq("
																																+ idx
																																+ ") a")
																														.addClass(
																																"on");
																											}
																										});
																					},
																				});
																var styleTotal = $(
																		"#styleSearchSlider .slides li")
																		.size();
																if (styleTotal <= 1) {
																	$(
																			"#styleSearchSlider .flex-direction-nav")
																			.hide();
																}

																//keyup 자동완성 리스트

																//keyup 자동완성 리스트
																$("#query")
																		.keyup(
																				function(
																						e) {
																					if (!$(
																							"#query")
																							.val() == "") {
																						$(
																								".search_tab")
																								.hide();

																						$(
																								".search_box_wrap")
																								.stop()
																								.animate(
																										{
																											width : "477px"
																										},
																										"fast",
																										function() {
																											$(
																													".search_autocomplete")
																													.show();
																										});
																						$(
																								'.search_box_wrap.on .search_box input[type="search"]')
																								.stop()
																								.animate(
																										{
																											width : "461px"
																										},
																										"fast");
																						/*  var atcRightHeight = $(".autocomplete_right").height();//자동완성리스트 높이 조절
																						var atctxtHeight = $(".autocomplete_txt").height();
																						if(atcRightHeight < atctxtHeight){
																						$(".autocomplete_right").height(atctxtHeight);
																						} */
																					} else {
																						$(
																								".search_autocomplete")
																								.hide();
																						$(
																								".search_tab")
																								.show();

																						$(
																								".search_box_wrap")
																								.stop()
																								.animate(
																										{
																											width : "406px"
																										});
																						$(
																								'.search_box_wrap.on .search_box input[type="search"]')
																								.stop()
																								.animate(
																										{
																											width : "390px"
																										});
																					}
																					$(
																							".autocomplete_txt li a")
																							.each(
																									function() {
																										if (!$(
																												this)
																												.hasClass(
																														"brand_main")) {
																											$(
																													this)
																													.html(
																															$(
																																	this)
																																	.html()
																																	.replace(
																																			"<strong>",
																																			""));
																											$(
																													this)
																													.html(
																															$(
																																	this)
																																	.html()
																																	.replace(
																																			"</strong>",
																																			""));

																											if ($(
																													this)
																													.html()
																													.indexOf(
																															$(
																																	"#searchBox")
																																	.val()) > -1) {
																												$(
																														this)
																														.html(
																																$(
																																		this)
																																		.html()
																																		.replace(
																																				$(
																																						"#searchBox")
																																						.val(),
																																				"<strong>"
																																						+ $(
																																								"#searchBox")
																																								.val()
																																						+ "</strong>"));
																											}
																										}
																									});
																				});

																//검색창 click시 이미 value 값이 있을 때
																if (!$("#query")
																		.val() == "") {
																	$(
																			".search_box_wrap")
																			.stop()
																			.animate(
																					{
																						width : "477px",
																						opacity : 1
																					},
																					"fast");
																	$(
																			'.search_box_wrap.on .search_box input[type="search"]')
																			.stop()
																			.animate(
																					{
																						width : "461px"
																					},
																					"fast");
																} else {
																	$(
																			'.search_box_wrap.on .search_box input[type="search"]')
																			.stop()
																			.animate(
																					{
																						width : "390px"
																					},
																					"fast");
																}
															}

															$(
																	"#styleSearchSlider")
																	.fadeIn();

															//close button
															$(
																	".search_box a span.btn_close")
																	.on(
																			"click",
																			function() {
																				$(
																						".search_box_wrap")
																						.stop()
																						.animate(
																								{
																									width : "30px",
																									height : '-= dataHeight +"px"',
																									opacity : 0,
																								});

																				$(
																						".data_react")
																						.stop()
																						.hide();
																				$(
																						".btn_search_tab")
																						.stop()
																						.hide();
																				$(
																						".search_box_wrap")
																						.removeClass(
																								"on");
																				$(
																						"#transparent_mask")
																						.hide();
																				$(
																						".search_box .search")
																						.stop()
																						.fadeOut(
																								"fast");
																				if (!$(
																						"#query")
																						.val() == "") {
																					$(
																							"#query")
																							.val(
																									"");
																					$(
																							".search_autocomplete")
																							.hide();
																					$(
																							".search_tab")
																							.show();
																				}
																				return false;
																			});
														});
										$("#transparent_mask")
												.click(
														function() {
															if ($(
																	".search_box_wrap")
																	.hasClass(
																			"on")) {
																$(
																		".search_box_wrap")
																		.stop()
																		.animate(
																				{
																					width : "30px",
																					height : '-= dataHeight +"px"',
																					opacity : 0,
																				});

																$(".data_react")
																		.stop()
																		.hide();
																$(
																		".btn_search_tab")
																		.stop()
																		.hide();
																$(
																		".search_box_wrap")
																		.removeClass(
																				"on");
																$(
																		"#transparent_mask")
																		.hide();
																$(
																		".search_box .search")
																		.stop()
																		.fadeOut(
																				"fast");
															}
														});
										//검색창 텝
										$(document).on(
												"click",
												".btn_search_tab a",
												function() {
													$(this).addClass("on");
													$(this).siblings()
															.removeClass("on");
													$(".data_react .s_tab")
															.stop().hide();
													var activeTab = $(this)
															.attr("rel");
													$("." + activeTab).stop()
															.show();
												});
									});
				});

				//##1141 - 카테고리 개편
				function outletGnbNav() {
					//아울렛 gnb
					$(".outlet_brand1803 .sub_menu > ul > li > ul > li > a")
							.on(
									"mouseenter focus",
									function() {
										$(
												".outlet_brand1803 .sub_menu > ul > li > ul > li > a")
												.removeClass("on");
										$(
												".outlet_brand1803 .sub_menu > ul > li > ul > li > div")
												.stop().hide();
										$(this).addClass("on");
										$(this).parent("li").children("div")
												.stop().css("display",
														"inline-block");
										var liWidthSumDep3 = 0;
										$(this)
												.next("div")
												.children("ul")
												.children("li")
												.each(
														function(idx3) {
															var liWidth = $(
																	this)
																	.width();
															var liLength = $(this).length;
															if (idx3 > 0) {
																liWidthSumDep3 = liWidthSumDep3
																		+ (liWidth + 25);
															}
															$(this).width(
																	liWidth);
														});
										$(this).next("div").children("ul")
												.width(liWidthSumDep3 - 10);
									});
					$(".outlet_brand1803 .sub_menu > ul > li > ul > li")
							.on(
									"mouseleave blur",
									function() {
										$(
												".outlet_brand1803 .sub_menu > ul > li > ul > li > a")
												.removeClass("on");
										$(
												".outlet_brand1803 .sub_menu > ul > li > ul > li > div")
												.stop().hide();
									});
				}

				function GA_search() {
					var searchForm = document.search;
					var searchwords = escape(searchForm.query.value);

					GA_Event("검색", "직접입력", searchwords);
				}

				//]]>
			</script>
			<form id="autologinForm" name="autologinForm"
				action="/ko/hp/autologin" method="get">
				<input type="hidden" name="hcid" id="hcid" value="e2gaf@naver.com" />
			</form>
			<div class="top_nav topnav1903">
				<div class="top_nav_wrap clearfix">
					<div class="brand_menu brand_menu1903">
						<ul class="clearfix">
							<!-- 선호 브랜드 없음 -->
							<li><span class="on"><a href="/ko/main"
									onclick="GA_Event('공통','탑_네비게이션','HOME')">HOME</a></span></li>
							<!-- 로그인 상태 -->
							<!-- 비로그인 상태 -->
							<p class="brand_menu_guide_text">
								로그인 후 아래 '브랜드' 메뉴에서 좋아하는 브랜드를 <span
									style="margin-top: -1px; display: inline-block">♥</span>해주세요
							</p>
						</ul>
					</div>
					<div class="gnb_sh_wrap" style="display: none">
						<!-- search box -->
						<div class="gnb_sh_box">
							<input type="text" class="input" id="gnbsearchwords"
								title="검색어 입력" value=""
								onkeypress="if(event.keyCode==13) {EnterSearchHeader(); return false;}" />
							<a href="javascript:void(0);" id="gnbsearch">검색</a>
						</div>
						<!-- //search box -->
						<!-- search result -->
						<div class="gnb_sh_result">
							<div class="tab">
								<a href="javascript:void(0);" class="menu on">최근검색어</a>
								<div class="result_list on">
									<div class="searchWord1" style="display: none">
										<a href="javascript:void(0);" class="ml newlyBtn"
											id="searchWord1"></a><a href="javascript:void(0);"
											class="close" onclick="deletecookie('HS_Seachwords1')">닫기</a>
									</div>
									<div class="searchWord2" style="display: none">
										<a href="javascript:void(0);" class="ml newlyBtn"
											id="searchWord2"></a><a href="javascript:void(0);"
											class="close" onclick="deletecookie('HS_Seachwords2')">닫기</a>
									</div>
									<div class="searchWord3" style="display: none">
										<a href="javascript:void(0);" class="ml newlyBtn"
											id="searchWord3"></a><a href="javascript:void(0);"
											class="close" onclick="deletecookie('HS_Seachwords3')">닫기</a>
									</div>
									<div class="searchWord4" style="display: none">
										<a href="javascript:void(0);" class="ml newlyBtn"
											id="searchWord4"></a><a href="javascript:void(0);"
											class="close" onclick="deletecookie('HS_Seachwords4')">닫기</a>
									</div>
									<div class="searchWord5" style="display: none">
										<a href="javascript:void(0);" class="ml newlyBtn"
											id="searchWord5"></a><a href="javascript:void(0);"
											class="close" onclick="deletecookie('HS_Seachwords5')">닫기</a>
									</div>
									<a href="javascript:void(0);" class="btn_svclose">검색어 <span
										id="searchSaveYN" save="on">끄기</span>
									</a> <a href="javascript:void(0);" class="btn_allclose on"
										onclick="searchOff()">닫기</a>
								</div>
								<a href="javascript:void(0);" class="menu">인기검색어</a>
								<div class="result_list">
									<div>
										<a href="javascript:void(0);" class="ml favBtn">jacket</a>
										<!-- <a href="javascript:void(0);" class="close">닫기</a> -->
									</div>
									<div>
										<a href="javascript:void(0);" class="ml favBtn">blouse</a>
										<!-- <a href="javascript:void(0);" class="close">닫기</a> -->
									</div>
									<div>
										<a href="javascript:void(0);" class="ml favBtn">stripe</a>
										<!-- <a href="javascript:void(0);" class="close">닫기</a> -->
									</div>
									<div>
										<a href="javascript:void(0);" class="ml favBtn">ribbon</a>
										<!-- <a href="javascript:void(0);" class="close">닫기</a> -->
									</div>
									<div>
										<a href="javascript:void(0);" class="ml favBtn">blouson</a>
										<!-- <a href="javascript:void(0);" class="close">닫기</a> -->
									</div>
									<a href="javascript:void(0);" class="btn_svclose">검색어 <span
										id="searchSaveYNfame" save="on">끄기</span>
									</a> <a href="javascript:void(0);" class="btn_allclose"
										onclick="searchOff()">닫기</a>
								</div>
							</div>
						</div>
						<!-- //search result -->
					</div>
					<!-- 201705 search_box_wrap -->
					<div class="search_box_wrap sbw1803" id="searchBox">
						<form name="search" id="search" action="/ko/hssearch/searchCount"
							method="post" onsubmit="return false;">
							<input type="hidden" name="CSRFToken"
								value="bb3009c6-58a4-40fd-ac1d-b2fee6de282a" /> <input
								type="hidden" name="searchwords" value="" /> <input
								type="hidden" name="startCount" value="" /> <input
								type="hidden" name="mode" value="" /> <input type="hidden"
								name="sort" value="" /> <input type="hidden" name="collection"
								value="" /> <input type="hidden" name="range" value="" /> <input
								type="hidden" name="startDate" value="" /> <input type="hidden"
								name="endDate" value="" /> <input type="hidden"
								name="searchField" value="" /> <input type="hidden"
								name="reQuery" /> <input type="hidden" id="prefixQuery"
								value="" /> <input type="hidden" id="identity" name="identity"
								value="" /> <input type="hidden" id="realQuery"
								name="realQuery" value="" /> <input type="hidden"
								id="loginState" value="loginOff" /> <input type="hidden"
								id="athomeInfo" value="" /> <input type="hidden"
								id="selectedLang" name="selectedLang" value="product_ko" /> <input
								type="hidden" id="lang" name="lang" value="ko" /> <input
								type="hidden" id="brandPageGubun" name="brandPageGubun"
								value="off" />
							<!-- 브랜드 페이지 여부 -->
							<input type="hidden" id="brand_img" name="brand_img" value="" />
							<input type="hidden" id="brand_url" name="brand_url" value="" />
							<div class="search_box">
								<label for="query" class="hidden">search</label> <input
									type="search" id="query" name="query" value=""
									onkeypress="javascript:pressCheck((event),this);"
									style="margin-top: 0.2px" autocomplete="off" /> <span
									class="placeholder"></span> <a href="javascript:void(0);"><span
									class="btn_close">닫기</span></a> <a
									href="javascript:GA_search();doSearch();" class="search"><span
									class="ico">검색</span></a>
							</div>
						</form>
						<!--검색박스 활성화 data_react -->
						<div class="data_react">
							<!-- tab 검색어 입력 전 -->
							<div class="search_tab">
								<div class="btn_search_tab" style="display: none">
									<a href="javascript:void(0);" rel="recent_search"
										class="btn_recent_search on"
										onclick="GA_Event('검색','최근 검색어','클릭')">최근 검색어</a> <a
										href="javascript:void(0);" rel="style_search"
										class="btn_style_search" id="btn_style_search">Style
										Search</a> <a href="javascript:void(0);" rel="popular_search"
										class="btn_style_search" id="btn_top_search"
										style="display: none" onclick="GA_Event('검색','인기검색어','클릭')">인기검색어</a>
								</div>
								<!-- 최근 검색어 -->
								<div class="recent_search s_tab">
									<ul id="mykeyword">
										<div class="clear_search_hs">
											<a href="javascript:removeAllMyKeyword()">검색기록전체삭제</a>
										</div>
									</ul>
								</div>
								<!-- style search -->
								<form id="searchStyle" name="searchStyle"
									action="/ko/hssearch/searchCount" method="post"
									onsubmit="return false;">
									<input type="hidden" name="query" value="" /> <input
										type="hidden" name="collection" value="" /> <input
										type="hidden" id="CSRFToken" name="CSRFToken"
										value="bb3009c6-58a4-40fd-ac1d-b2fee6de282a" /> <input
										type="hidden" id="searchStyleYn" name="searchStyleYn"
										value="searchStyle" />
								</form>

								<div class="style_search s_tab" id="stylesearch_area">
									<p class="style_search_tlt">Style Search 2018</p>
									<div class="ss_txt_list">
										<ul class="style_search_arr" id="style_search_arr"></ul>
									</div>
									<div class="ss_img_list" id="styleSearchSlider">
										<ul class="slides">
											<li></li>
										</ul>
									</div>
								</div>

								<!-- style search 컨텐츠 하나일 때-->
								<!-- <div class="style_search s_tab">
                            <div class="ss_txt_list">
                                <p class="style_search_tlt">Style Search 2017 S/S</p>
                                <ul id="style_search_arr">
                               </ul>
                            </div>
                             <div class="ss_img_list" id="styleSearchSlider">
                                <ul class="slides"><li></li></ul>
                            </div>
                        </div> -->
								<!-- //style search 컨텐츠 하나일 때-->
								<div class="popular_search s_tab" id="topsearch_area"
									style="display: none">
									<ol class="ol_popular1" id="topsearchLeft"></ol>
									<!-- 				                <ol class="ol_popular2" id="topsearchRight"> -->
									<!-- 	                            </ol> -->
								</div>
							</div>
							<!--// tab 검색어 입력 전 -->
							<!-- 검색어 입력 후 (검색어 자동완성) -->
							<div class="search_autocomplete">
								<div class="autocomplete_txt">
									<div id="brandView">
										<ul></ul>
									</div>
									<div id="ark" style="height: 170px">
										<div class="ark_wrap" id="ark_wrap" style="display: none">
											<ul id="ark_content_list"></ul>
										</div>
									</div>
								</div>
								<div class="autocomplete_right">
									<div class="category_brand">
										<p>카테고리/브랜드</p>
										<div class="brand">
											<p id="autocomplete_brand">브랜드</p>
										</div>
										<div class="category">
											<p id="autocomplete_category">카테고리</p>
										</div>
									</div>
									<div class="autocomplete_img">
										<p>
											<span>"<span id="autocomplete_query">{0}</span>"
											</span>에 대한 주요 검색 결과
										</p>
										<!--                                     <p><span>"<span id="autocomplete_query"></span>&#32;"</span>에 대한 주요 검색 결과</p> -->
										<ul id="auto2"></ul>
									</div>
								</div>
							</div>
							<!--// 검색어 입력 후 (검색어 자동완성) -->
						</div>
						<!--//검색박스 활성화 data_react -->
					</div>
					<!--// 201705 search_box_wrap -->
					<div class="util_menu" style="display: block">
						<ul class="clearfix">
							<li><a href="/ko/member/login"
								onclick="GA_Event('공통','헤더_메뉴','로그인')">로그인<!-- 로그인 --></a></li>
							<li class="header_dropmemu mypage"><a href="/ko/mypage"
								class="btn" onclick="GA_Event('공통','헤더_메뉴','마이페이지')">마이페이지</a>
								<div class="list">
									<ul>
										<li><a href="/ko/mypage/order/myorders"
											onclick="GA_Event('공통','헤더_메뉴','마이페이지_주문조회')">주문조회<!-- 주문조회 --></a>
										</li>
										<li><a href="/ko/mypage/myGradeInfo"
											onclick="GA_Event('공통','헤더_메뉴','마이페이지_나의회원등급')">나의회원등급<!-- 온라인등급 --></a>
										</li>
										<li><a href="/ko/mypage/voucher"
											onclick="GA_Event('공통','헤더_메뉴','마이페이지_쿠폰조회')">쿠폰조회<!-- 쿠폰조회 --></a>
										</li>
										<li><a href="/ko/mypage/mypoint"
											onclick="GA_Event('공통','헤더_메뉴','마이페이지_마일리지조회')">마일리지조회<!-- 포인트조회 --></a>
										</li>
										<li><a href="/ko/mypage/myEGiftCard"
											onclick="GA_Event('공통','헤더_메뉴','마이페이지_e-Gift Card')">e-Gift
												Card<!-- e-Gfit Card -->
										</a></li>
										<li><a href="/ko/mypage/personInfomationChangePWCheck"
											onclick="GA_Event('공통','헤더_메뉴','마이페이지_회원정보변경')">회원정보변경<!-- 회원정보변경 --></a>
										</li>
										<li><a href="/ko/svcenter/mantomaninquiry"
											onclick="GA_Event('공통','헤더_메뉴','마이페이지_온라인상담')">온라인상담<!-- 온라인 상담 --></a>
										</li>
									</ul>
								</div></li>

							<li>
								<div class="header_dropmemu lang_switch lang_1911">
									<a href="javascript:void(0);" class="btn"
										onclick="GA_Event('공통','헤더_메뉴','LANGUAGE')">LANGUAGE</a>
									<div class="list"
										style="height: 87px; padding-top: 0px; margin-top: 0px; padding-bottom: 0px; margin-bottom: 0px; display: none;">
										<ul>
											<li><a href="javascript:language('ko')"
												onclick="GA_Event('공통','헤더_메뉴','LANGUAGE_한국어')">한국어</a></li>
											<li><a href="javascript:language('en')"
												onclick="GA_Event('공통','헤더_메뉴','LANGUAGE_ENGLISH')">ENGLISH</a>
											</li>
											<li><a href="javascript:language('zh')"
												onclick="GA_Event('공통','헤더_메뉴','LANGUAGE_中文')">中文</a></li>
										</ul>
									</div>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>

			<!-- validation check message global -->
			<input type="hidden" id="validationCheckPwd"
				value="비밀번호를 재입력 하셔야 합니다." /> <input type="hidden"
				id="validationCheck" value="필수데이터가 입력되지 않았습니다." /> <input
				type="hidden" id="validationCheckMsg" value="다음 사항을 확인해 주세요." /> <input
				type="hidden" id="validationCheckMsg1" value="필수데이터가 입력되지 않았습니다." />
			<input type="hidden" id="validationCheckMsg2"
				value="동일문자를 3번 이상 사용할 수 없습니다." /> <input type="hidden"
				id="validationCheckMsg3"
				value="연속된 문자열(123 또는 321, abc, cba 등) 3자리이상 올 수 없습니다." /> <input
				type="hidden" id="validationCheckMsg4" value="Caps Lock 이 켜져 있습니다." />
			<input type="hidden" id="validationCheckMsg5"
				value="이메일 아이디의 중복 확인이 필요합니다." /> <input type="hidden"
				id="validationCheckMsg6" value="이메일의 중복확인이 필요합니다." /> <input
				type="hidden" id="deliveryOkMsg" value="확인" /> <input type="hidden"
				id="deliveryCancelMsg" value="취소" />

			<form id="chatbotForm"
				action="https://talk.thehandsome.com/front/v1/jsp/view/chat.jsp"
				method="post" target="chatwindow">
				<input type="hidden" name="token" id="chatbot_token" /> <input
					type="hidden" name="talkId" id="chatbot_talkId" />
				<div>
					<input type="hidden" name="CSRFToken"
						value="bb3009c6-58a4-40fd-ac1d-b2fee6de282a" />
				</div>
			</form>
			<!-- //headerWrap -->
			<div class="gnbwarp new201608 clearfix">
				<h1 class="logo logo1903">
					<a href="/ko/main" onclick="GA_Event('공통', '로고', '상단');">thehandsome.com</a>
				</h1>
				<!-- 첫번째 c:if -->

				<div id="transparent_mask"></div>
				<!-- 201803 util menu -->
				<div class="util_menu util_menu1803">
					<ul class="clearfix">
						<li><a href="javascript:void(0);"><span class="ico_sh">search</span></a></li>
						<li><a href="/ko/mypage/myWish"
							onclick="GA_Event('공통','유틸_메뉴','위시리스트');"><span
								class="ico wishlist">wish list</span> <span class="count">(<span
									id="wishlistCount">0</span>)
							</span></a></li>
						<li><a href="/ko/shoppingbag"
							onclick="GA_Event('공통','유틸_메뉴','쇼핑백');"><span
								class="ico cart">장바구니</span> <span class="count">(<span
									id="cartCount">0</span>)
							</span></a></li>
					</ul>
				</div>
			</div>
			<!-- //201803 util menu -->
		</div>
	</div>
	<script type="text/javascript">
		//<![CDATA[ 
		$(document)
				.ready(
						function() {

							var nowYear = parseInt('2008');
							var nowMonth = parseInt('10');
							var nowDay = parseInt('20');
							var monthArray = [ 0, 31, 28, 31, 30, 31, 30, 31,
									31, 30, 31, 30, 31 ];

							//if(nowYear < 2000) nowYear += 1900;

							//년도 
							for (var i = nowYear; i >= 1900; i--) {
								$('#selYear').append(
										"<option value='" + i + "'>" + i
												+ "</option>");
							}

							$("#selYear")
									.change(
											function() {

												var selYear1 = $('#selYear')
														.val();

												if ($('#selMonth').val() == 02) {
													if ($("#selDay option:last")
															.val() >= 29) {

														$(
																"#selDay option[value='29']")
																.remove();
														$(
																"#selDay option[value='30']")
																.remove();
														$(
																"#selDay option[value='31']")
																.remove();
													}

													if ((selYear1 % 4 == 0 && selYear1 % 100 != 0)
															|| selYear1 % 400 == 0) {
														$("#selDay")
																.append(
																		"<option value='29'>29</option>");
													}
												}

												//만14세미만 가입X
												if (nowYear == selYear1) {
													for (var i = nowMonth + 1; i <= 12; i++) {
														if (i < 10) {
															$(
																	"#selMonth option[value='0"
																			+ i
																			+ "']")
																	.remove();
														} else {
															$(
																	"#selMonth option[value='"
																			+ i
																			+ "']")
																	.remove();
														}
														if ($("#selMonth")
																.val() > nowMonth)
															$("#selMonth").val(
																	'').prop(
																	"selected",
																	true);
													}

													if (nowMonth == parseInt($(
															'#selMonth').val())) {

														var n_selMonth = parseInt($(
																'#selMonth')
																.val());
														var maxDay = monthArray[n_selMonth];

														for (var i = nowDay + 1; i <= maxDay; i++) {
															if (i < 10) {
																$(
																		"#selDay option[value='0"
																				+ i
																				+ "']")
																		.remove();
															} else {
																$(
																		"#selDay option[value='"
																				+ i
																				+ "']")
																		.remove();
															}
															if ($("#selDay")
																	.val() > nowDay) {
																$("#selDay")
																		.val('')
																		.prop(
																				"selected",
																				true);
															}
														}
													}
												} else {
													var n_selMonth = parseInt($(
															'#selMonth').val());
													var maxDay = monthArray[n_selMonth];

													if ($(
															"#selMonth option:last")
															.val() < 12) {
														for (var i = nowMonth + 1; i <= 12; i++) {
															if (i < 10) {
																$("#selMonth")
																		.append(
																				"<option value='0"+i+"'>0"
																						+ i
																						+ "</option>");
															} else {
																$("#selMonth")
																		.append(
																				"<option value='"+i+"'>"
																						+ i
																						+ "</option>");
															}
														}
													}

													if ($("#selDay option:last")
															.val() < maxDay) {

														if ($('#selMonth')
																.val() == 02) {
															if ((selYear1 % 4 == 0 && selYear1 % 100 != 0)
																	|| selYear1 % 400 == 0) {
																maxDay = 29;
															}
														}

														for (var i = parseInt($(
																"#selDay option:last")
																.val()) + 1; i <= maxDay; i++) {
															if (i < 10) {
																$("#selDay")
																		.append(
																				"<option value='0"+i+"'>0"
																						+ i
																						+ "</option>");
															} else {
																$("#selDay")
																		.append(
																				"<option value='"+i+"'>"
																						+ i
																						+ "</option>");
															}
														}
													}

												}
											});

							$("#selMonth")
									.change(
											function() {
												var lastDay = $(
														"#selDay option:last")
														.val();
												var selYear1 = $('#selYear')
														.val();
												var n_selMonth = parseInt($(
														'#selMonth').val());
												var maxDay = monthArray[n_selMonth];

												if ($(this).val() == 02) {

													$(
															"#selDay option[value='31']")
															.remove();
													$(
															"#selDay option[value='30']")
															.remove();
													$(
															"#selDay option[value='29']")
															.remove();

													if ((selYear1 % 4 == 0 && selYear1 % 100 != 0)
															|| selYear1 % 400 == 0) {
														$("#selDay")
																.append(
																		"<option value='29'>29</option>");

													}
													;

												} else if ($(this).val() == 04
														|| $(this).val() == 06
														|| $(this).val() == 09
														|| $(this).val() == 11) {

													if (lastDay == 28) {
														$("#selDay")
																.append(
																		"<option value='29'>29</option>");
														$("#selDay")
																.append(
																		"<option value='30'>30</option>");
													} else if (lastDay == 29) {
														$("#selDay")
																.append(
																		"<option value='30'>30</option>");
													} else if (lastDay == 31) {
														$(
																"#selDay option[value='31']")
																.remove();
													}

												} else {

													if (lastDay == 28) {
														$("#selDay")
																.append(
																		"<option value='29'>29</option>");
														$("#selDay")
																.append(
																		"<option value='30'>30</option>");
														$("#selDay")
																.append(
																		"<option value='31'>31</option>");
													} else if (lastDay == 29) {
														$("#selDay")
																.append(
																		"<option value='30'>30</option>");
														$("#selDay")
																.append(
																		"<option value='31'>31</option>");
													} else if (lastDay == 30) {
														$("#selDay")
																.append(
																		"<option value='31'>31</option>");
													}
												}

												//만14세미만 가입X
												if (nowYear == selYear1
														&& nowMonth == $(
																'#selMonth')
																.val()) {

													for (var i = nowDay + 1; i <= $(
															"#selDay option:last")
															.val(); i++) {
														if (i < 10) {
															$(
																	"#selDay option[value='0"
																			+ i
																			+ "']")
																	.remove();
														} else {
															$(
																	"#selDay option[value='"
																			+ i
																			+ "']")
																	.remove();
														}
														if ($(
																"#selDay option:last")
																.val() < $(
																"#selDay")
																.val())
															$("#selDay")
																	.val('')
																	.prop(
																			"selected",
																			true);
													}
												} else {

													if ($("#selDay option:last")
															.val() < maxDay) {
														for (var i = parseInt($(
																"#selDay option:last")
																.val()) + 1; i <= maxDay; i++) {
															if (i < 10) {
																$("#selDay")
																		.append(
																				"<option value='0"+i+"'>0"
																						+ i
																						+ "</option>");
															} else {
																$("#selDay")
																		.append(
																				"<option value='"+i+"'>"
																						+ i
																						+ "</option>");
															}
														}
													}
												}
											});

							emailTypeDomainSelectController("#emailDomain",
									"#emailDomainSel");

							passwordValidationCheck('pw');
							passwordValidationCheck('pwc');

							$("#pw")
									.keypress(
											function(event) {

												if (capsLock(event)) {
													$("#pwcapsLockMsg")
															.text(
																	"<Caps Lock>이 켜져 있습니다.");
												} else {
													$("#pwcapsLockMsg")
															.text("");
												}
												if ($("#pw").val().length > 0)
													$("#pwMsg")
															.text(
																	"비밀번호는 8~15자리 이하로 영문/숫자/특수문자를 혼합해주세요");
											});

							$("#pw")
									.focus(
											function(event) {
												$("#pwMsg")
														.text(
																"비밀번호는 8~15자리 이하로 영문/숫자/특수문자를 혼합해주세요");
											});

							$("#pw")
									.blur(
											function() {
												if ($(this).val().length > 0) {
													var pwRegExp = /^(?=.*[a-zA-Z])(?=.*[\?\<\>\;\:\'\"\`\(\)\{\}\[\]\|\\\~\,\.!@#$%^*+=-])(?=.*[0-9]).{8,15}$/;
													if (!pwRegExp.test($(this)
															.val())) {
														$("#pwMsg")
																.text(
																		"비밀번호는 8~15자리 이하로 영문/숫자/특수문자를 혼합해주세요");
														$("#pwTypeChk").val("");
														return true;
													}
													$("#pwTypeChk").val("Y");
													$("#pwMsg").text("");
													$("#pwcMsg").text("");
													$("#pwConfirmChk").val("");
												}
											});

							$("#pwc")
									.keypress(
											function(event) {

												if (capsLock(event)) {
													$("#pwcCapsLockMsg")
															.text(
																	"<Caps Lock>이 켜져 있습니다.");
												} else {
													$("#pwcCapsLockMsg").text(
															"");
												}

												if ($("#pwc").val().length > 0)
													$("#pwcMsg")
															.text(
																	"비밀번호는 8~15자리 이하로 영문/숫자/특수문자를 혼합해주세요");

											});

							$("#pwc")
									.focus(
											function(event) {
												$("#pwcMsg")
														.text(
																"비밀번호는 8~15자리 이하로 영문/숫자/특수문자를 혼합해주세요");

											});

							$("#pwc").blur(function() {
								if ($("#pw").val() != $("#pwc").val()) {
									$("#pwcMsg").text("비밀번호가 일치하지 않습니다");
									$("#pwConfirmChk").val("");
									//$("#pwc").val("");
									return true;
								}
								if ($("#pw").val() != "") {
									$("#pwConfirmChk").val("Y");
									$("#pwcMsg").text("비밀번호가 확인되었습니다.");
								}
							});

							$('#emailDubChkBtn')
									.click(
											function() {
												var vc = new ValidationCheck();
												vc.checkIdList = [ 'email',
														'emailDomain' ];
												vc.msgFn = function(msg) {
													$("#emailMsg").text(msg);
												};
												if (vc.isValid()) {
													$
															.ajax({
																type : "GET",
																url : "/member/join/isduplemail?email="
																		+ $(
																				"#email")
																				.val()
																		+ "@"
																		+ $(
																				"#emailDomain")
																				.val(),
																success : function(
																		response) {
																	if (response == true) {
																		$(
																				"#emailMsg")
																				.text(
																						'이미 사용중인 이메일입니다.');
																	} else {
																		$(
																				"#emailMsg")
																				.text(
																						'사용 가능한 이메일입니다.');
																		$(
																				"#emailDuplChk")
																				.val(
																						'Y');

																	}
																},
																error : function(
																		e) {
																	console
																			.log(e);
																}
															});
												}
											});

							$("#email, #emailDomain, #emailDomainSel").change(
									function() {
										$("#emailMsg").text('');
										$("#emailDuplChk").val('');
										var email1 = "shingk0323@naver.com";
										var email2 = $("#email").val() + "@"
												+ $("#emailDomain").val();

										if (email1 != email2) {
											$("#ck1").prop('checked', false);
											$("#ck1").attr('checked', false);
										}
									});

							$("#cancleBtn").click(
									function() {
										var lc = new layerConfirm(
												'회원가입을 취소하시겠습니까?', '확인', '취소');
										lc.confirmAction = function() {
											location.href = "/";
										};
									});

							var joinCfBtnChk = 0;
							$("#joinBtn")
									.click(
											function() {

												var vc = new ValidationCheck();
												vc.checkIdList = [ 'id', 'pw',
														'pwc', 'name', 'phone',
														'selYear', 'selMonth',
														'selDay' ];

												if (!vc.isValid()) {
													return;
												}

												var pwTypeChk = $("#pwTypeChk")
														.val();
												var pwConfirmChk = $(
														"#pwConfirmChk").val();
												var emailDuplChk = $(
														"#emailDuplChk").val();

												if (pwTypeChk !== "Y") {
													layerAlert("비밀번호는 8~15자리 이하로 영문/숫자/특수문자를 혼합해주세요 ");
													return;
												}

												if (pwConfirmChk !== "Y") {
													layerAlert("비밀번호가 일치하지 않습니다 ");
													return;
												}
												var email = $("#email").val()
														+ "@"
														+ $("#emailDomain")
																.val();

												/* if ($("#email").val() != "") {
													if (emailDuplChk !== "Y") {
														layerAlert("E-mail 중복확인이 되지 않았습니다.");
														return;
													}

													var email = $("#email")
															.val()
															+ "@"
															+ $("#emailDomain")
																	.val();
													if (!validateEmail(email)) {
														layerAlert("잘못된 E-mail 형식입니다.");
														return;
													}

													if (email.length > 50) {
														layerAlert("E-mail은 최대 50자입니다.");
														return;
													}
												} else {
													if ($("#emailReceiveYn")
															.is(':checked')) {
														layerAlert("E-mail (정보수신용) 을 입력해 주세요.");
														return;
													}
												} */

												$("#cancleBtn").attr(
														"disabled", true);
												$("#joinBtn").attr("disabled",
														true);

												$("#collectionAgreementYN")
														.val("Y");
												$("#emailAddress")
														.val(
																$("#email")
																		.val()
																		+ "@"
																		+ $(
																				"#emailDomain")
																				.val());

												if ($("#email").val() == "") {
													$("#emailAddress").val("");
												}
												$("#sBirthday")
														.val(
																$("#selYear")
																		.val()
																		+ $(
																				"#selMonth")
																				.val()
																		+ $(
																				"#selDay")
																				.val());
												$("#memberJoinForm").attr(
														"action",
														"/member/joininfoform");
												$("#memberJoinForm").submit();
											});

							$("#email,#emailDomain").keypress(function(event) {
								if (event.which == 32) {
									return false;
								}
							});

							$('#ck1').click(
									function() {
										if ($(this).is(':checked')) {
											var email = "${sessionScope.uidEmail}";
											var emailArray = email.split("@");

											$("#email").val(emailArray[0]);
											$("#emailDomainSel").val(
													emailArray[1]);
											$("#emailDomain")
													.val(emailArray[1]);
											$("#emailDomainSel option:eq(0)")
													.prop("selected",
															"selected");
											$("#emailDomain").show();
										}
									});

							$(document).on(
									"keyup",
									"input:text[numberOnly]",
									function() {
										$(this).val(
												$(this).val().replace(
														/[^0-9]/gi, ""));
									});

							$('.email-prev-detail-btn').click(function(e) {
								e.preventDefault();
								$('.email-detail-pop').show();
								$('.btn_close').click(function(e) {
									e.preventDefault();
									$('.email-detail-pop').hide();
								});
							});
						});

		/*
		 * 비밀번호태그 Key 이벤트 [2017.01.11 - 이현승]
		 */
		var passwordValidationCheck = function(fid) {
			var t = this;

			this.msgFn = function(msg) {
				$('#' + fid).blur();
				layerAlert(msg)
			};

			this.notLockFn = function() {
				//default do nothing. but you can do something!
			};

			$('#' + fid).keyup(function(event) {
				passwordSamePassCheck(fid);
			});
		}

		/*
		 * 비밀번호 유효성 체크 [2017.01.11 - 이현승]
		 */
		var readonlyFlag = false;
		function passwordSamePassCheck(fid) {

			var SamePass_0 = 0; // 동일문자 카운트
			var SamePass_1 = 0; // 연속성(+) 카운드
			var SamePass_2 = 0; // 연속성(-) 카운드

			var inputdata = $('#' + fid).val();

			for (var i = 0; i < inputdata.length; i++) { // 4자리
				var chr_pass_0 = inputdata.charCodeAt(i - 2);//3);
				var chr_pass_1 = inputdata.charCodeAt(i - 1);//2);
				var chr_pass_2 = inputdata.charCodeAt(i);// - 1);

				if (i > 1) {
					// 동일문자 카운트
					if ((chr_pass_0 == chr_pass_1)
							&& (chr_pass_1 == chr_pass_2)) {
						SamePass_0++;
					} else {
						SamePass_0 = 0;
					}
					// 연속성(+) 카운드
					if (chr_pass_0 - chr_pass_1 == 1
							&& chr_pass_1 - chr_pass_2 == 1) {
						SamePass_1++;
					} else {
						SamePass_1 = 0;
					}
					// 연속성(-) 카운드
					if (chr_pass_0 - chr_pass_1 == -1
							&& chr_pass_1 - chr_pass_2 == -1) {
						SamePass_2++;
					} else {
						SamePass_2 = 0;
					}
				}

				if (!readonlyFlag) {
					if (SamePass_0 > 0) {
						readonlyFlag = true;
						$("input").attr("readonly", readonlyFlag);
						var la = new layerAlert("동일문자를 3번 이상 사용할 수 없습니다.");
						la.confirmAction = function() {
							readonlyFlag = false;
							$("input").attr("readonly", readonlyFlag);
							$('#' + fid).focus();
						};
					} else if (SamePass_1 > 0 || SamePass_2 > 0) {
						readonlyFlag = true;
						$("input").attr("readonly", readonlyFlag);
						var la = new layerAlert(
								"연속된 문자열(123 또는 321, abc, cba 등) 3자리이상 올 수 없습니다.");
						la.confirmAction = function() {
							readonlyFlag = false;
							$("input").attr("readonly", readonlyFlag);
							$('#' + fid).focus();
						};
					}
				}
			}
		}

		function validateEmail(email) {
			var re = /^((([^<>()[\]\\.,;:\s@\"~`!@#$%^&*+={}|'/?]+(\.[^<>()[\]\\.,;:\s@\"~`!@#$%^&*+={}|'/?]+)*))|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
			return re.test(email);
		}
		//]]>
	</script>

	<form id="memberJoinForm" action="/member/joininfoform" method="POST">
		<input type="hidden" name="emailDuplChk" id="emailDuplChk" value=""
			title="이메일 중복"> <input type="hidden" name="pwTypeChk"
			id="pwTypeChk" value="" title="비밀번호 형식"> <input type="hidden"
			name="pwConfirmChk" id="pwConfirmChk" value="" title="비밀번호 일치">
		<input type="hidden" id="uid" name="uid" value="shingk0323@naver.com">
		<input type="hidden" id="emailAddress" name="emailAddress" value="">
		<input type="hidden" id="sBirthday" name="sBirthday" value="">
		<input type="hidden" id="gender" name="gender" value=""> <input
			type="hidden" id="collectionAgreementYN" name="collectionAgreementYN"
			value="">


		<div id="bodyWrap">
			<!--title-->
			<h3 class="cnts_title">
				<span>회원가입</span>
			</h3>
			<!--//title-->
			<!--join step-->
			<div class="email_step">
				<ul class="clearfix">
					<li class="step01">step01 이메일인증</li>
					<li class="step02">step02 회원약관동의</li>
					<li class="step03 on">step03 회원정보 입력</li>
					<li class="step04">step04 가입완료</li>
				</ul>
			</div>
			<!--//join step-->
			<!--sub container-->
			<div class="sub_container">
				<div class="join_title">
					<p class="title">고객님의 회원정보를 입력해주세요.</p>
				</div>
				<fieldset>
					<legend>회원정보입력</legend>
					<div class="box_type_1">
						<div class="title_wrap clearfix">
							<h4 class="float_left">회원정보</h4>
							<p class="reqd_txt float_right">
								<strong class="reqd">*</strong> 표시는 필수항목입니다.
							</p>
						</div>
						<div class="tblwrap">
							<table class="tbl_wtype1">
								<caption>회원가입 입력항목</caption>
								<colgroup>
									<col style="width: 160px">
									<col>
								</colgroup>
								<tbody>
									<tr>
										<th scope="row"><strong class="reqd">*</strong><label
											for="pw">아이디</label></th>
										<td><input type="text" id="id" name="id"
											style="width: 150px" title="아이디" value="${uidEmail}" readonly></td>
									</tr>
									<tr>
										<th scope="row"><strong class="reqd">*</strong><label
											for="pw">비밀번호</label></th>
										<td><input type="password" id="pw" name="passwd"
											style="width: 150px" title="비밀번호"> <span
											class="guide_comment lh_30" id="pwMsg"></span> <span
											class="guide_comment lh_30" id="pwcapsLockMsg"></span></td>
									</tr>
									<tr>
										<th scope="row"><strong class="reqd">*</strong> <label
											for="pw2">비밀번호 확인</label></th>
										<td><input type="password" id="pwc" style="width: 150px"
											title="비밀번호 확인"> <span class="guide_comment"
											id="pwcMsg"></span> <span class="guide_comment"
											id="pwcCapsLockMsg"></span></td>
									</tr>
									<tr>
										<th scope="row"><strong class="reqd">*</strong><label for="email">E-mail (정보수신용)</label></th>
										<td><input type="text" style="width: 120px" title="이메일"
											id="email"> <span class="andmail">@</span> <select
											id="emailDomainSel" style="width: 120px" title="이메일">
												<option value="">직접입력</option>
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
										</select> <input type="text" id="emailDomain" style="width: 120px"
											value="" title="이메일 도메인"> <input type="button"
											class="btn add_s" id="emailDubChkBtn" value="중복확인"> <span
											class="guide_comment" id="emailMsg"></span>
											<div class="wtype_comment pt10">
												<input type="checkbox" id="ck1"><label for="ck1">이메일
													아이디 적용</label>
											</div>
											<div class="wtype_comment pt5">
												<input type="checkbox" id="emailReceiveYn"
													name="emailReceiveYn" value="Y"><label
													for="emailReceiveYn">이메일을 통한 상품 및 이벤트 정보 수신에 동의합니다.
													(선택)</label> <a href="javascript:void(0);"
													class="email-prev-detail-btn">자세히 보기</a>
											</div></td>
									</tr>
									<tr>
										<th scope="row"><strong class="reqd">*</strong><label
											for="name">이름</label></th>
										<td><input type="text" style="width: 120px" id="name"
											name="name"></td>
									</tr>
									<tr>
										<th scope="row"><strong class="reqd">*</strong><label
											for="phone">휴대폰 번호</label></th>
										<td><input type="text" style="width: 120px" id="phone"
											name="phone"></td>
									</tr>
									<tr>
										<th scope="row"><strong class="reqd">*</strong><label
											for="birth">생년월일</label></th>
										<td><select style="width: 80px" id="selYear" title="년도">
												<option value="">년</option>
												<option value="2008">2008</option>
												<option value="2007">2007</option>
												<option value="2006">2006</option>
												<option value="2005">2005</option>
												<option value="2004">2004</option>
												<option value="2003">2003</option>
												<option value="2002">2002</option>
												<option value="2001">2001</option>
												<option value="2000">2000</option>
												<option value="1999">1999</option>
												<option value="1998">1998</option>
												<option value="1997">1997</option>
												<option value="1996">1996</option>
												<option value="1995">1995</option>
												<option value="1994">1994</option>
												<option value="1993">1993</option>
												<option value="1992">1992</option>
												<option value="1991">1991</option>
												<option value="1990">1990</option>
												<option value="1989">1989</option>
												<option value="1988">1988</option>
												<option value="1987">1987</option>
												<option value="1986">1986</option>
												<option value="1985">1985</option>
												<option value="1984">1984</option>
												<option value="1983">1983</option>
												<option value="1982">1982</option>
												<option value="1981">1981</option>
												<option value="1980">1980</option>
												<option value="1979">1979</option>
												<option value="1978">1978</option>
												<option value="1977">1977</option>
												<option value="1976">1976</option>
												<option value="1975">1975</option>
												<option value="1974">1974</option>
												<option value="1973">1973</option>
												<option value="1972">1972</option>
												<option value="1971">1971</option>
												<option value="1970">1970</option>
												<option value="1969">1969</option>
												<option value="1968">1968</option>
												<option value="1967">1967</option>
												<option value="1966">1966</option>
												<option value="1965">1965</option>
												<option value="1964">1964</option>
												<option value="1963">1963</option>
												<option value="1962">1962</option>
												<option value="1961">1961</option>
												<option value="1960">1960</option>
												<option value="1959">1959</option>
												<option value="1958">1958</option>
												<option value="1957">1957</option>
												<option value="1956">1956</option>
												<option value="1955">1955</option>
												<option value="1954">1954</option>
												<option value="1953">1953</option>
												<option value="1952">1952</option>
												<option value="1951">1951</option>
												<option value="1950">1950</option>
												<option value="1949">1949</option>
												<option value="1948">1948</option>
												<option value="1947">1947</option>
												<option value="1946">1946</option>
												<option value="1945">1945</option>
												<option value="1944">1944</option>
												<option value="1943">1943</option>
												<option value="1942">1942</option>
												<option value="1941">1941</option>
												<option value="1940">1940</option>
												<option value="1939">1939</option>
												<option value="1938">1938</option>
												<option value="1937">1937</option>
												<option value="1936">1936</option>
												<option value="1935">1935</option>
												<option value="1934">1934</option>
												<option value="1933">1933</option>
												<option value="1932">1932</option>
												<option value="1931">1931</option>
												<option value="1930">1930</option>
												<option value="1929">1929</option>
												<option value="1928">1928</option>
												<option value="1927">1927</option>
												<option value="1926">1926</option>
												<option value="1925">1925</option>
												<option value="1924">1924</option>
												<option value="1923">1923</option>
												<option value="1922">1922</option>
												<option value="1921">1921</option>
												<option value="1920">1920</option>
												<option value="1919">1919</option>
												<option value="1918">1918</option>
												<option value="1917">1917</option>
												<option value="1916">1916</option>
												<option value="1915">1915</option>
												<option value="1914">1914</option>
												<option value="1913">1913</option>
												<option value="1912">1912</option>
												<option value="1911">1911</option>
												<option value="1910">1910</option>
												<option value="1909">1909</option>
												<option value="1908">1908</option>
												<option value="1907">1907</option>
												<option value="1906">1906</option>
												<option value="1905">1905</option>
												<option value="1904">1904</option>
												<option value="1903">1903</option>
												<option value="1902">1902</option>
												<option value="1901">1901</option>
												<option value="1900">1900</option>
										</select> <select style="width: 80px" id="selMonth" title="월">
												<option value="">월</option>
												<option value="01">01</option>
												<option value="02">02</option>
												<option value="03">03</option>
												<option value="04">04</option>
												<option value="05">05</option>
												<option value="06">06</option>
												<option value="07">07</option>
												<option value="08">08</option>
												<option value="09">09</option>
												<option value="10">10</option>
												<option value="11">11</option>
												<option value="12">12</option>
										</select> <select style="width: 80px" id="selDay" title="일">
												<option value="">일</option>
												<option value="01">01</option>
												<option value="02">02</option>
												<option value="03">03</option>
												<option value="04">04</option>
												<option value="05">05</option>
												<option value="06">06</option>
												<option value="07">07</option>
												<option value="08">08</option>
												<option value="09">09</option>
												<option value="10">10</option>
												<option value="11">11</option>
												<option value="12">12</option>
												<option value="13">13</option>
												<option value="14">14</option>
												<option value="15">15</option>
												<option value="16">16</option>
												<option value="17">17</option>
												<option value="18">18</option>
												<option value="19">19</option>
												<option value="20">20</option>
												<option value="21">21</option>
												<option value="22">22</option>
												<option value="23">23</option>
												<option value="24">24</option>
												<option value="25">25</option>
												<option value="26">26</option>
												<option value="27">27</option>
												<option value="28">28</option>
												<option value="29">29</option>
												<option value="30">30</option>
												<option value="31">31</option>
										</select></td>
									</tr>
								</tbody>
							</table>
						</div>


						<div class="btnwrap">
							<input type="button" value="취소" class="btn wt" id="cancleBtn">
							<input type="button" value="회원가입" class="btn gray mr0"
								id="joinBtn">
						</div>
					</div>
				</fieldset>
			</div>
			<!--//sub container-->
		</div>

		<div class="layerArea email-detail-pop" style="display: none;">
			<div class="layerBg"></div>
			<div class="popwrap w_type_11">
				<div class="terms_box box_type_2">
					■ 개인정보의 수집항목 및 이용<br> <br> 더한섬닷컴은 별도의 회원가입 절차 없이 대부분의
					컨텐츠에 자유롭게 접근할 수 있습니다. 더한섬닷컴의 서비스를 이용하시는 경우 다음의 정보를 고객의 동의를 받아 수집할 수
					있으며 선택항목을 입력하지 않아도 서비스 이용에 제한은 없습니다.<br> <br> <span
						style="color: #000; display: block; margin-bottom: 12px;">회원가입
						및 주문 등 필요시점에 수집하는 개인정보의 범위</span>
					<table class="tbl_ltype">
						<caption>회원가입 및 주문 등 필요시점에 수집하는 개인정보의 범위</caption>
						<colgroup>
							<col style="width: auto">
							<col style="width: 202px;">
							<col style="width: 103px;">
							<col style="width: 254px;">
							<col style="width: auto;">
						</colgroup>
						<thead>
							<tr>
								<th scope="col">수집 방법</th>
								<th scope="col">이용 목적</th>
								<th scope="col">수집 정보</th>
								<th scope="col">수집 항목</th>
								<th scope="col">보유 기간</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="frt">간편회원가입</td>
								<td><strong>신규서비스/상품안내</strong></td>
								<td>선택</td>
								<td>이메일</td>
								<td>회원 탈퇴 시 또는 동의 철회 시</td>
							</tr>
						</tbody>
					</table>
					<a href="javascript:void(0)" class="btn_close"><img
						src="/_ui/desktop/common/images/popup/ico_close.png" alt="닫기"></a>
				</div>
			</div>
		</div>
		<div>
			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />
		</div>
	</form>
	<%@ include file="/WEB-INF/views/common/footer.jsp"%>
</body>
</html>
