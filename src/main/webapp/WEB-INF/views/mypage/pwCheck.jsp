<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html lang="ko">
<head>


<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=1, target-densitydpi=medium-dpi" />

<title>&#44060;&#51064;&#51221;&#48372; &#48320;&#44221;
	&#48708;&#48128;&#48264;&#54840; &#52404;&#53356; |
	&#45908;&#54620;&#49452;&#45815;&#52980;</title>

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
@IMPORT url("/resources/blueprint/print.css");
</style>

<script type="text/javascript" src="/resources/js/jquery-1.11.2.min.js"></script>
<script type="text/javascript" src="/resources/js/jquery.vticker.js"></script>
<!-- 200318 ì¶ê° -->


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

<script type="text/javascript" src="/resources/wisenut/js/jquery.min.js"></script>

<script type="text/javascript" src="/resources/js/netfunnel.js"
	charset="UTF-8"></script>
<script type="text/javascript" src="/resources/js/netfunnel_skin.js"
	charset="UTF-8"></script>

<script type="text/javascript" src="/resources/js/unorm.js"></script>


<script type="text/javascript"
	src="/resources/wisenut/ark/js/beta.fix.js"></script>
<script type="text/javascript" src="/resources/wisenut/ark/js/ark.js"></script>
<script type="text/javascript" src="/resources/wisenut/js/search.js"></script>
<script type="text/javascript">
	var setDimensionData = function() {
		//GA 설정 sessionStorage 페이지 이동시 초기화 
		window.sessionStorage.removeItem('ecommerceDataList');
		window.sessionStorage.removeItem('main_new_ecommerceDataList');
		window.sessionStorage.removeItem('main_best_ecommerceDataList');
		window.sessionStorage.removeItem('main_recommend_ecommerceDataList');
		window.sessionStorage.removeItem('normal_cate_ecommerceDataList');
		window.sessionStorage.removeItem('brand_main_new_brazeDataList1'); // 상단NEW
		window.sessionStorage.removeItem('brand_main_new_brazeDataList2'); // 하단NEW
		window.sessionStorage.removeItem('brand_main_sales_brazeDataList1'); // 상단BEST
		window.sessionStorage.removeItem('brand_main_sales_brazeDataList2'); // 하단BEST
		var cid = getCid();
		var device = "PC_WEB";
		var entrySite = "";

		entrySite = "KO";

		var oneDepthPage; // 없을 경우 undifined 그대로 넘겨야 하기 때문에 초기화 X
		var pageTitle = "";
		var tmp = getPageDepth();
		if (tmp != "") {
			oneDepthPage = tmp;
			pageTitle = getGAPageTitle(oneDepthPage);
			if (pageTitle == "") {
				oneDepthPage = undefined;
				pageTitle = document.title;
			}
		} else {
			pageTitle = document.title;
		}

		var pageviewObj = new Object();
		pageviewObj.dimension1 = cid; //고객_ClientID
		pageviewObj.dimension15 = device; //채널_채널유형
		pageviewObj.dimension16 = entrySite; //채널_언어 - #2846 삭제요청 hychung, #2846 복원요청 hychung
		pageviewObj.dimension18 = oneDepthPage; //페이지_1Depth (페이지depth 없는경우 undefined처리)
		pageviewObj.title = pageTitle; //페이지제목     (페이지제목 없는경우 document.title 입력)

		//로그인 했을경우만 추가 dimension 세팅

		pageviewObj.dimension2 = "40738179"; //고객_회원번호
		pageviewObj.dimension3 = "통합"; //고객_회원구분
		pageviewObj.dimension4 = ""; //고객_지역
		pageviewObj.dimension5 = "M"; //고객_성별
		pageviewObj.dimension6 = "20"; //고객_연령대
		pageviewObj.dimension7 = "GyICCR05ofcR7GTnDp/Y1A=="; //고객_생년 => 고객_통합멤버십번호 변경됨
		pageviewObj.dimension8 = "FRIEND"; //고객_온라인등급
		pageviewObj.dimension9 = ""; //고객_한섬통합등급
		pageviewObj.dimension10 = "0"; //고객_구매횟수
		pageviewObj.dimension11 = ""; //고객_구매금액대
		pageviewObj.dimension12 = ""; //고객_첫구매일자
		pageviewObj.dimension13 = ""; //고객_최종구매일자
		pageviewObj.dimension14 = "20220928"; //고객_회원가입일
		pageviewObj.userId = "40738179"; //사용자ID

		// 검색 결과 페이지 일 경우만 처리
		if (window.location.pathname.indexOf("/hssearch/searchCount") > -1) {
			pageviewObj.dimension17 = ""; //검색_검색어(검색결과페이지일때 사용)
		}

		return pageviewObj;
	};

	// 고객_ClientID
	function getCid() {
		var cookieData = document.cookie;
		var Cookies = cookieData.split(';')
		var clientId = "";
		for (var i = 0; i < Cookies.length; i++) {
			if (Cookies[i].split('=')[0] == '_ga'
					|| Cookies[i].split('=')[0] == ' _ga') {
				clientId = Cookies[i].split('=')[1];
			}
		}
		if (clientId != "") {
			clientId = clientId.substring(6);
		}
		if (clientId == "") {
			try {
				ga(function(tracker) {
					clientId = tracker.get('clientId');
				});
			} catch (e) {
				console.log(e);
			}
		}
		return clientId;
	}

	function getPageDepth() {
		var returnDepth = "";
		var target_url = document.location.href;
		if (target_url.substring(target_url.indexOf("/ko/") + 4) == "") {
			returnDepth = "메인";
		} else if (target_url.substring(target_url.indexOf("/ko") + 3) == "") {
			returnDepth = "메인";
		} else if (target_url.indexOf("/p/") > -1) {
			returnDepth = "상품상세";
		} else if (target_url.indexOf("/b/fourmMain") > -1) {
			returnDepth = "브랜드";
		} else if (target_url.indexOf("/b/storeInformation") > -1) {
			returnDepth = "매장안내";
		} else if (target_url.indexOf("/b/") > -1) {

			if (target_url.toLowerCase().substring(
					target_url.indexOf("/c/") + 3).indexOf("br") > -1) {
				returnDepth = "브랜드";
			} else {
				returnDepth = "";
			}

		} else if (target_url.indexOf("/c/ou_") > -1) {
			returnDepth = "아울렛";
		} else if (target_url.indexOf("/c/") > -1) {
			// if'/c/카테고리코드' : /가 한개면
			if (target_url.substring(target_url.indexOf("/c/") + 3)
					.indexOf("/") > -1) {
				if (target_url.toLowerCase().substring(
						target_url.indexOf("/c/") + 3).indexOf("br") > -1) {
					returnDepth = "브랜드";
				} else {
					returnDepth = "카테고리";
				}
			} else {
				returnDepth = "카테고리";
			}
		} else if (target_url.indexOf("/mypage") > -1) {
			returnDepth = "마이페이지";
		} else if (target_url.indexOf("/magazine/events") > -1) {
			returnDepth = "이벤트";
		} else if (target_url.indexOf("/magazine/") > -1) {
			returnDepth = "매거진";
		} else if (target_url.indexOf("/shoppingbag") > -1) {
			returnDepth = "쇼핑백";
		} else if (target_url.indexOf("/ou/") > -1) {
			returnDepth = "아울렛";
		} else if (target_url.indexOf("/checkout/") > -1) {
			returnDepth = "주문";
		} else if (target_url.indexOf("/member/") > -1) {
			returnDepth = "로그인";
		} else if (target_url.indexOf("/login/") > -1) {
			returnDepth = "로그인";
		} else if (target_url.indexOf("/sns/") > -1) {
			returnDepth = "SNS";
		} else if (target_url.indexOf("/prodqna/") > -1) {
			returnDepth = "상품Q&A";
		} else if (target_url.indexOf("/svcenter/") > -1) {
			returnDepth = "고객센터";
		} else if (target_url.indexOf("/item/") > -1) {
			returnDepth = "아이템";
		} else if (target_url.indexOf("/store-finder/") > -1) {
			returnDepth = "매장안내";
		} else if (target_url.indexOf("/footer/") > -1) {
			returnDepth = "FOOTER";
		} else if (target_url.indexOf("/appDownloadSMS/") > -1) {
			returnDepth = "APP 다운로드";
		} else if (target_url.indexOf("/intro/") > -1) {
			returnDepth = "당신만의 한섬";
		} else if (target_url.indexOf("/mobilecommon/mainIntro") > -1) {
			returnDepth = "공통";
		} else if (target_url.indexOf("/mobilecommon/search") > -1) {
			returnDepth = "공통";
		} else if (target_url.indexOf("/hssearch") > -1) {
			returnDepth = "검색";
		} else if (target_url.indexOf("/product/") > -1) {
			returnDepth = "상품";
		} else if (target_url.indexOf("/globalMain") > -1) {
			returnDepth = "메인";
		} else if (target_url.indexOf("/main") > -1) {
			returnDepth = "메인";
		} else {
			returnDepth = "";
		}
		return returnDepth;
	}

	function getGAPageTitle(oneDepthPage) {
		var returnTitle = "";
		var target_url = document.location.href;

		//if(target_url.substring(target_url.indexOf("/ko/")+4).indexOf("/") == -1){
		if (target_url.substring(target_url.indexOf("/ko/") + 4) == "") {
			returnTitle = oneDepthPage;
		} else if (target_url.substring(target_url.indexOf("/ko") + 3) == "") {
			returnTitle = oneDepthPage;
		} else if (target_url.indexOf("/p/") > -1) {
			returnTitle = oneDepthPage + ">";
		} else if (target_url.indexOf("/c//") > -1) {
			returnTitle = "브랜드>>전체보기";
		} else if (target_url.indexOf("/b/fourmMain") > -1) {
			returnTitle = oneDepthPage + ">FOURM 메인";
		} else if (target_url.indexOf("/b/storeInformation") > -1) {
			returnTitle = oneDepthPage;
		} else if (target_url.indexOf("/b//brand") > -1) {
			returnTitle = oneDepthPage + ">>소개";
		} else if (target_url.indexOf("/b//storeInformation") > -1) {
			returnTitle = oneDepthPage + ">>매장";
		} else if (target_url.indexOf("/b/lookBookDetail?") > -1) {
			returnTitle = oneDepthPage + ">룩북>상세>";
		} else if (target_url.indexOf("/b/lookBook") > -1) {
			returnTitle = oneDepthPage + ">룩북>리스트";
		} else if (target_url.indexOf("/b//lookBookDetail?lookBookCode=") > -1) {
			returnTitle = oneDepthPage + ">>룩북>";
		} else if (target_url.indexOf("/b//lookBook") > -1) {
			returnTitle = oneDepthPage + ">>룩북";
		} else if (target_url.indexOf("/b/") > -1) {
			returnTitle = oneDepthPage + ">>브랜드 메인";
		} else if (target_url.indexOf("/c//ou") > -1) {
			returnTitle = oneDepthPage;

			if ("false") {

			}
		} else if (target_url.indexOf("/c//") > -1) {
			returnTitle = oneDepthPage;

		} else if (target_url.indexOf("/c/") > -1) {
			returnTitle = oneDepthPage;

		} else if (target_url.indexOf("/mypage/order/myordersAthome") > -1) {
			returnTitle = oneDepthPage + ">앳홈신청 및 결제";
		} else if (target_url.indexOf("/mypage/order/myorders") > -1) {
			returnTitle = oneDepthPage + ">주문/배송조회";
		} else if (target_url.indexOf("/mypage/myGradeInfo") > -1) {
			returnTitle = oneDepthPage + ">나의 회원등급";
		} else if (target_url.indexOf("/mypage/voucher") > -1) {
			returnTitle = oneDepthPage + ">쿠폰";
		} else if (target_url.indexOf("/mypage/mypoint") > -1) {
			returnTitle = oneDepthPage + ">혜택관리>나의 한섬마일리지";
		} else if (target_url.indexOf("/mypage/myEGiftCard") > -1) {
			returnTitle = oneDepthPage + ">혜택관리>e-giftcard";
		} else if (target_url.indexOf("/mypage/myWish") > -1) {
			returnTitle = oneDepthPage + ">위시리스트";
		} else if (target_url.indexOf("/mypage/rsalarm") > -1) {
			returnTitle = oneDepthPage + ">재입고 알림";
		} else if (target_url.indexOf("/mypage/personInfomationChangePWCheck") > -1) {
			returnTitle = oneDepthPage + ">개인정보 변경/탈퇴";
		} else if (target_url.indexOf("/mypage/mydelivery") > -1) {
			returnTitle = oneDepthPage + ">배송지 관리";
		} else if (target_url.indexOf("/mypage/oneClick") > -1) {
			returnTitle = oneDepthPage + ">나의 정보관리>원클릭 결제 관리";
		} else if (target_url.indexOf("/mypage/myreview") > -1) {
			returnTitle = oneDepthPage + ">내 상품평";
		} else if (target_url.indexOf("/mypage/myqna") > -1) {
			returnTitle = oneDepthPage + ">상품 Q&A";
		} else if (target_url.indexOf("/mypage/mymantomaninquiry") > -1) {
			returnTitle = oneDepthPage + ">1:1 문의";
		} else if (target_url.indexOf("/mypage/mypageFloatingPopup") > -1) {
			returnTitle = oneDepthPage + ">메인";
		} else if (target_url.indexOf("/mypage/mypoint/mobile") > -1) {
			returnTitle = oneDepthPage + ">나의 혜택";
		} else if (target_url.indexOf("/mypage/event/myevents") > -1) {
			returnTitle = oneDepthPage + ">나의 이벤트";
		} else if (target_url.endsWith("/ko/mypage/", target_url.length)) {
			returnTitle = oneDepthPage + ">메인";
		} else if (target_url.endsWith("/ko/mypage", target_url.length)) {
			returnTitle = oneDepthPage + ">메인";
		} else if (target_url.indexOf("/magazine/events/") > -1) {
			returnTitle = oneDepthPage + ">상세>";
		} else if (target_url.indexOf("/magazine/events") > -1) {
			returnTitle = oneDepthPage + ">리스트";
		} else if (target_url.indexOf("/magazine/editorials/") > -1) {
			returnTitle = oneDepthPage + ">에디토리얼>상세>";
		} else if (target_url.indexOf("/magazine/editorials") > -1) {
			returnTitle = oneDepthPage + ">에디토리얼>리스트";
		} else if (target_url.indexOf("/magazine/exhibitions/") > -1) {
			returnTitle = oneDepthPage + ">기획전>상세>";
		} else if (target_url.indexOf("/magazine/exhibitions") > -1) {
			returnTitle = oneDepthPage + ">기획전>리스트";
		} else if (target_url.indexOf("/magazine/handpeople") > -1) {
			returnTitle = oneDepthPage + ">핸썸피플 리스트";
		} else if (target_url.indexOf("/magazine/instagram") > -1) {
			returnTitle = oneDepthPage + ">인스타그램";
		} else if (target_url.indexOf("/magazine/lookbookDetail/") > -1) {
			returnTitle = oneDepthPage + ">룩북>상세>";
		} else if (target_url.indexOf("/magazine/lookbook") > -1) {
			returnTitle = oneDepthPage + ">룩북>리스트";
		} else if (target_url.indexOf("/magazine/newsDetailtemplatetype") > -1) {
			returnTitle = oneDepthPage + ">뉴스>상세>";
		} else if (target_url.indexOf("/magazine/news") > -1) {
			returnTitle = oneDepthPage + ">뉴스>리스트";
		} else if (target_url.indexOf("/magazine/weeklypick") > -1) {
			returnTitle = oneDepthPage + ">위클리픽 리스트";
		} else if (target_url.indexOf("/magazine/submain") > -1) {
			returnTitle = oneDepthPage + ">THE매거진 메인";
		} else if (target_url.indexOf("/magazine/youtubeList") > -1) {
			returnTitle = oneDepthPage + ">비디오";
		} else if (target_url.indexOf("/shoppingbag") > -1) {
			returnTitle = oneDepthPage;
		} else if (target_url.indexOf("/ou/outletMain") > -1) {
			returnTitle = oneDepthPage + ">메인";
		} else if (target_url.indexOf("/c/ou_/ou") > -1) {
			returnTitle = oneDepthPage + ">";
		} else if (target_url.indexOf("/mobilecommon/search") > -1) {
			returnTitle = oneDepthPage + ">키워드";
		} else if (target_url.indexOf("/hssearch/") > -1) {
			returnTitle = oneDepthPage + ">검색결과";
		} else if (target_url.indexOf("/checkout/ordersheet") > -1) {
			returnTitle = oneDepthPage + ">주문서 작성";
		} else if (target_url.indexOf("/checkout/orderConfirmation") > -1) {
			returnTitle = oneDepthPage + ">주문 완료";
		} else if (target_url.indexOf("/member/login") > -1) {
			returnTitle = oneDepthPage;
		} else if (target_url.indexOf("/login/checkout") > -1) {
			returnTitle = oneDepthPage + ">미로그인시로그인유도";
		} else if (target_url.indexOf("/member/pwChange") > -1) {
			returnTitle = oneDepthPage + ">비밀번호 변경 대상";
		} else if (target_url.indexOf("/member/findIdPwPage") > -1) {
			returnTitle = oneDepthPage + ">한섬회원 아이디/비밀번호 찾기";
		} else if (target_url.indexOf("/member/globaljoincomplete") > -1) {
			returnTitle = oneDepthPage + ">가입완료";
		} else if (target_url.indexOf("/member/joincomplete") > -1) {
			returnTitle = oneDepthPage + ">가입완료";
		} else if (target_url.indexOf("/member/joinGuidePage") > -1) {
			returnTitle = oneDepthPage + ">회원가입안내";
		} else if (target_url.indexOf("/member/joininfoform") > -1) {
			returnTitle = oneDepthPage + ">간편회원 정보입력";
		} else if (target_url.indexOf("/member/joinstart") > -1) {
			returnTitle = oneDepthPage + ">간편회원 이메일";
		} else if (target_url.indexOf("/member/nonMemberLogin") > -1) {
			returnTitle = oneDepthPage + ">비회원 주문조회";
		} else if (target_url.indexOf("/sns/main") > -1) {
			returnTitle = oneDepthPage + ">메인";
		} else if (target_url.indexOf("/sns/detail?") > -1) {
			returnTitle = oneDepthPage + ">포스트상세보기";
		} else if (target_url.indexOf("/sns/myNotice") > -1) {
			returnTitle = oneDepthPage + ">나의알림";
		} else if (target_url.indexOf("/sns/collectionDetail?") > -1) {
			returnTitle = oneDepthPage + ">콜렉션상세";
		} else if (target_url.indexOf("/sns/followerList?") > -1) {
			returnTitle = oneDepthPage + ">팔로워리스트";
		} else if (target_url.indexOf("/sns/followingList?") > -1) {
			returnTitle = oneDepthPage + ">팔로윙리스트";
		} else if (target_url.indexOf("/sns/snsSearch?searchWord=") > -1) {
			returnTitle = oneDepthPage + ">태그검색";
		} else if (target_url.indexOf("/sns/message?") > -1) {
			returnTitle = oneDepthPage + ">메시지";
		} else if (target_url.indexOf("/sns/messageList") > -1) {
			returnTitle = oneDepthPage + ">메시지리스트";
		} else if (target_url.indexOf("/sns/myLevel") > -1) {
			returnTitle = oneDepthPage + ">나의레벨";
		} else if (target_url.indexOf("/sns/myProfile?") > -1) {
			returnTitle = oneDepthPage + ">나의프로필";
		} else if (target_url.indexOf("/sns/weeklyBest") > -1) {
			returnTitle = oneDepthPage + ">위클리베스트";
		} else if (target_url.indexOf("/sns/write") > -1) {
			returnTitle = oneDepthPage + ">포스팅작성";
		} else if (target_url.indexOf("/mobilecommon/mainIntro") > -1) {
			returnTitle = oneDepthPage + ">인트로";
		} else if (target_url.indexOf("/svcenter/submain") > -1) {
			returnTitle = oneDepthPage + ">서브메인";
		} else if (target_url.indexOf("/svcenter/notice") > -1) {
			returnTitle = oneDepthPage + ">공지사항";
		} else if (target_url.indexOf("/svcenter/mantomaninquiry") > -1) {
			returnTitle = oneDepthPage + ">1:1 문의";
		} else if (target_url.indexOf("/svcenter/faq") > -1) {
			returnTitle = oneDepthPage + ">FAQ";
		} else if (target_url.indexOf("/svcenter/mending") > -1) {
			returnTitle = oneDepthPage + ">수선진행조회";
		} else if (target_url.indexOf("/svcenter/memberjoinguide") > -1) {
			returnTitle = oneDepthPage + ">쇼핑가이드>회원가입";
		} else if (target_url.indexOf("/svcenter/theClubInfo") > -1) {
			returnTitle = oneDepthPage + ">쇼핑가이드>온라인 멤버십";
		} else if (target_url.indexOf("/svcenter/memberbenefitguide") > -1) {
			returnTitle = oneDepthPage + ">쇼핑가이드>한섬 VVIP 혜택";
		} else if (target_url.indexOf("/svcenter/pointguide") > -1) {
			returnTitle = oneDepthPage + ">쇼핑가이드>한섬마일리지 혜택";
		} else if (target_url.indexOf("/svcenter/couponguide") > -1) {
			returnTitle = oneDepthPage + ">쇼핑가이드>쿠폰";
		} else if (target_url.indexOf("/svcenter/asguide") > -1) {
			returnTitle = oneDepthPage + ">쇼핑가이드>배송/반품/AS";
		} else if (target_url.indexOf("/svcenter/paymentguide") > -1) {
			returnTitle = oneDepthPage + ">쇼핑가이드>주문/결제";
		} else if (target_url.indexOf("/svcenter/athomeInfo") > -1) {
			returnTitle = oneDepthPage + ">at HOME";
		} else if (target_url.indexOf("/svcenter/footerAthomeInfo") > -1) {
			returnTitle = oneDepthPage + ">딜리버리서비스";
		} else if (target_url.indexOf("/svcenter/mobilemain") > -1) {
			returnTitle = oneDepthPage + ">메인";
		} else if (target_url.indexOf("/svcenter/mobilenotice") > -1) {
			returnTitle = oneDepthPage + ">공지사항";
		} else if (target_url.indexOf("/svcenter/mobilefaq") > -1) {
			returnTitle = oneDepthPage + ">FAQ";
		} else if (target_url.indexOf("/svcenter/mobilemending") > -1) {
			returnTitle = oneDepthPage + ">수선진행조회";
		} else if (target_url.indexOf("/svcenter/serviceguide?targetSlide=0") > -1) {
			returnTitle = oneDepthPage + ">서비스소개>간편서비스";
		} else if (target_url.indexOf("/svcenter/serviceguide?targetSlide=1") > -1) {
			returnTitle = oneDepthPage + ">서비스소개>스마트쇼핑";
		} else if (target_url.indexOf("/svcenter/serviceguide?targetSlide=2") > -1) {
			returnTitle = oneDepthPage + ">서비스소개>유니크한섬";
		} else if (target_url.indexOf("/svcenter/serviceguide") > -1) {
			returnTitle = oneDepthPage + ">서비스소개";
		} else if (target_url.indexOf("/item/we") > -1) {
			returnTitle = oneDepthPage + ">WE";
		} else if (target_url.indexOf("/item/me") > -1) {
			returnTitle = oneDepthPage + ">ME";
		} else if (target_url.indexOf("/store-finder/") > -1) {
			returnTitle = oneDepthPage;
		} else if (target_url.indexOf("/footer/footerBrandintro") > -1) {
			returnTitle = oneDepthPage + ">브랜드소개";
		} else if (target_url.indexOf("/footer/footerCompanyIntro") > -1) {
			returnTitle = oneDepthPage + ">회사소개>한섬소개";
		} else if (target_url.indexOf("/footer/footerCEOGreetings") > -1) {
			returnTitle = oneDepthPage + ">회사소개>CEO 메시지";
		} else if (target_url.indexOf("/footer/footerBrandintro") > -1) {
			returnTitle = oneDepthPage + ">회사소개>브랜드소개";
		} else if (target_url.indexOf("/footer/footerGovernance") > -1) {
			returnTitle = oneDepthPage + ">투자정보>기업지배구조";
		} else if (target_url.indexOf("/footer/footerFinancialInfo") > -1) {
			returnTitle = oneDepthPage + ">투자정보>재무정보";
		} else if (target_url.indexOf("/footer/footerStockInfo") > -1) {
			returnTitle = oneDepthPage + ">투자정보>주가정보";
		} else if (target_url.indexOf("/footer/footerIR") > -1) {
			returnTitle = oneDepthPage + ">투자정보>IR";
		} else if (target_url.indexOf("/footer/footerCorporatePartnership") > -1) {
			returnTitle = oneDepthPage + ">동반성장>소개";
		} else if (target_url.indexOf("/footer/footerCoreFourPractices") > -1) {
			returnTitle = oneDepthPage + ">동반성장>4대 실천사항";
		} else if (target_url.indexOf("/footer/footerCooperatorSelection") > -1) {
			returnTitle = oneDepthPage + ">동반성장>협력업체 선정";
		} else if (target_url.indexOf("/footer/footerSupportProgram") > -1) {
			returnTitle = oneDepthPage + ">동반성장>지원제도";
		} else if (target_url.indexOf("/footer/footerContactUs") > -1) {
			returnTitle = oneDepthPage + ">동반성장>소통의 장";
		} else if (target_url.indexOf("/appDownloadSMS/") > -1) {
			returnTitle = oneDepthPage;
		} else if (target_url.indexOf("/intro/mainYours") > -1) {
			returnTitle = oneDepthPage;
		} else if (target_url.indexOf("/globalMain") > -1) {
			returnTitle = oneDepthPage;
		} else if (target_url.indexOf("/main") > -1) {
			returnTitle = oneDepthPage;
		}

		return returnTitle;
	}

	if (!String.prototype.endsWith) {
		String.prototype.endsWith = function(searchString, position) {
			var subjectString = this.toString();
			if (typeof position !== 'number' || !isFinite(position)
					|| Math.floor(position) !== position
					|| position > subjectString.length) {
				position = subjectString.length;
			}
			position -= searchString.length;
			var lastIndex = subjectString.indexOf(searchString, position);
			return lastIndex !== -1 && lastIndex === position;
		};
	}

	function GA_Event(Category, Action, Label) {

		Label = unescape(Label).replace(/\&#039;/gi, "'");

		var v_Label = Label;
		var v_Category = Category;
		var v_Action = Action;
		//공백처리을  _ 처리
		if (Category != null) {
			v_Category = Category.replace(/\s{2,}/gi, ' ').trim().replace(
					/\s/gi, '_');
		}
		if (Action != null) {
			v_Action = Action.replace(/\s{2,}/gi, ' ').trim().replace(/\s/gi,
					'_');
		}
		if (Label != null) {
			v_Label = Label.replace(/\s{2,}/gi, ' ').trim()
					.replace(/\s/gi, '_');
		}
		ga('gp.send', 'event', v_Category, v_Action, v_Label);
	}
</script>

<div id="bodyWrap">
	<h3 class="cnts_title">
		<span id="menuTitle"></span>
	</h3>
	<div class="sub_container">
		<!-- lnb -->
		<div class="lnb_wrap">
			<h4>
				<a href="/ko/mypage">마이페이지<!-- 마이페이지 --></a>
			</h4>
			<div class="lnb">
				<dl>
					<dt>주문조회</dt>
					<dd>
						<a href="/ko/mypage/order/myorders"
							onclick="GA_Event('마이페이지','LNB','주문/배송/반품/취소');">주문/배송/반품/취소</a>
					</dd>
				</dl>
				<dl>
					<dt>혜택관리</dt>
					<dd>
						<a href="/ko/mypage/myGradeInfo"
							onclick="GA_Event('마이페이지','LNB','나의 회원 등급');">나의 회원 등급</a>
					</dd>
					<dd>
						<a href="/ko/mypage/voucher"
							onclick="GA_Event('마이페이지','LNB','나의 쿠폰');">나의 쿠폰<!-- 쿠폰함 --></a>
					</dd>
					<dd>
						<a href="/ko/mypage/mypoint"
							onclick="GA_Event('마이페이지','LNB','나의 한섬마일리지');">나의 한섬마일리지</a>
					</dd>
					<dd>
						<a href="/ko/mypage/myEGiftCard"
							onclick="GA_Event('마이페이지','LNB','E-GIFT CARD');">e-Gift Card</a>
					</dd>
				</dl>
				<dl>
					<dt>나의 상품관리</dt>
					<dd>
						<a href="/ko/mypage/myWish"
							onclick="GA_Event('마이페이지','LNB','위시리스트');">위시리스트<!-- 위시리스트 --></a>
					</dd>
					<dd>
						<a href="/ko/mypage/rsalarm"
							onclick="GA_Event('마이페이지','LNB','재입고 알림');">재입고 알림<!-- 재입고알림 --></a>
					</dd>
				</dl>
				<dl>
					<dt>나의 정보관리</dt>
					<dd>
						<a href="/ko/mypage/personInfomationChangePWCheck"
							onclick="GA_Event('마이페이지','LNB','개인정보 변경/탈퇴');">개인정보 변경/탈퇴</a>
					</dd>
					<dd>
						<a href="/ko/mypage/shoppingAddressPWCheck"
							onclick="GA_Event('마이페이지','LNB','배송지 관리');">배송지 관리</a>
					</dd>
					<dd>
						<a href="/ko/mypage/oneClick"
							onclick="GA_Event('마이페이지','LNB','원클릭 결제 관리');">원클릭 결제 관리</a>
					</dd>
					<dd>
						<a href="/ko/mypage/mergeCustomerInfo"
							onclick="GA_Event('마이페이지','LNB','한섬 멤버십 통합');">한섬 멤버십 통합</a>
					</dd>
				</dl>
				<dl>
					<dt>나의 활동관리</dt>
					<!-- <dd><a href="#">회원등급</a></dd> -->
					<dd>
						<a href="/ko/mypage/myreview"
							onclick="GA_Event('마이페이지','LNB','내 상품평');">내 상품평</a>
					</dd>
					<dd>
						<a href="/ko/mypage/myqna"
							onclick="GA_Event('마이페이지','LNB','상품 Q&A');">상품 Q&A</a>
					</dd>
					<dd>
						<a href="/ko/mypage/mymantomaninquiry"
							onclick="GA_Event('마이페이지','LNB','1:1 문의');">1:1 문의</a>
					</dd>
					<!-- <dd><a href="#">이벤트 참여현황</a></dd> -->
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
		<!-- cnts -->
		<div class="sub_cnts">


			<script type="text/javascript"
				src="/resources/js/jquery-1.11.2.min.js"></script>

			<script type="text/javascript">
				var csrfHeaderName = "${_csrf.headerName}";
				var csrfTokenValue = "${_csrf.token}";
				$(document).ajaxSend(function(e, xhr, options) {
					xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
				});
				//<![CDATA[ 
				$(document)
						.ready(
								function() {

									$("#menuTitle").text("개인정보 변경 / 탈퇴");

									capsLockCheck('j_password');

									$("#login_btn")
											.click(
													function() {
														var vc = new ValidationCheck();
														vc.checkIdList = [
																'j_username',
																'j_password' ];
														if (vc.isValid()) {

															var pw = $(
																	"#j_password")
																	.val();
															pw = pw.replace(
																	/#/g,
																	"[({})]");
															pw = pw.replace(
																	/>/g,
																	"{[()]}");
															pw = pw.replace(
																	/</g,
																	"({[]})");

															$
																	.ajax({
																		type : "post",
																		url : "/mypage/passwordrecheck"
																				+ "?callPage=mypage",
																		data : {
																			"uid" : $(
																					"#j_username")
																					.val(),
																			"pw" : pw
																		},
																		success : function(
																				response) {

																			if (response == true) {
																				$(
																						"#personInfomationChangePage")
																						.attr(
																								"action",
																								"/mypage/memberInfomationChange");
																				$(
																						"#personInfomationChangePage")
																						.submit();
																			} else {
																				location.href = "/mypage/personInfomationChangePWCheck?error=true";
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

									$("#cancle_btn")
											.click(
													function() {
														location.href = "/mypage/order/myorders";
													});

									$("#j_password").keypress(function(event) {
										if (event.which == 13) {
											event.preventDefault();
											$("#login_btn").click();
											$(this).blur();
										}
									});

								});
				//]]>
			</script>
			<form id="personInfomationChangePage" name="manToManInquiryForm"
				action="/mypage/personInfomationChangePWCheck" method="Get">
				<%-- <input type="hidden" name="directInto" value="NO">
				<div>
					<input type="hidden" name="${_csrf.parameterName}"
						value="${_csrf.token}" />
				</div> --%>
			</form>
			<div class="title_wrap mt30">
				<h4 class="float_left">비밀번호 재확인</h4>
				<p class="txt_line">고객님의 정보보호를 위하여 비밀번호를 다시 한번 확인합니다.</p>
			</div>

			<!-- pw reaffirm -->
			<div class="pw_reaffirm">
				<form>
					<fieldset>
						<legend>입력항목</legend>
						<div class="login_section">

							<div>
								<div>
									<label for="j_username">아이디</label> <input type="text"
										id="j_username" name="j_username"
										value=<sec:authentication property="principal.Username"/>
										disabled="disabled" />
								</div>
								<div>
									<label for="j_password">비밀번호</label> <input type="password"
										id="j_password" name="j_password" title="비밀번호" />
								</div>

							</div>
							<p class="guide_comment ml50">
								<!-- 입력하신 아이디 혹은 비밀번호가 일치하지 않습니다. -->
							</p>
						</div>
					</fieldset>
				</form>
			</div>
			<!-- //pw reaffirm -->

			<!-- btn_btwrap -->
			<div class="btnwrap mypage2">
				<a href="javascript:void(0);" class="btn wt" id="cancle_btn">취소</a>
				<a href="javascript:void(0);" class="btn gray" id="login_btn">확인</a>
			</div>

		</div>
		<!-- //cnts -->
	</div>
</div>
</html>
