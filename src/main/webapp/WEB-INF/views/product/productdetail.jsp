<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file="/WEB-INF/views/common/header.jsp"%>

<link rel="stylesheet" type="text/css"
	href="/resources/css/contents.css" media="all" />
<link rel="stylesheet" type="text/css" href="/resources/css/product.css"
	media="all" />
<link rel="stylesheet" type="text/css"
	href="/resources/css/products.css" media="all" />

<div id="bodyWrap" class="item_detail">
	<div id="oneEventLayer"></div>

	<div class="adaptive_wrap">
		<div class="clearfix prd_detail1905" id="clearfix">
			<div class="clearfix image_view3">
				<a href="javascript:imageZoom()" id="btn_zoom" class="btn_zoom"
					)">크게보기</a>
				<!-- 버튼 클릭시 item_visual 에 zoom 클래스 추가 -->
				<!-- 2021.08.18 동영상 재생 수정, 상품 imageDivisionCode에 VOD가 있는 경우 동영상 url 세팅 -->
				<div class="image_view1" id="image_view1">
					<div class="item_visual" id="imageDiv" style="margin-top: 20px;">
						<ul>
							<li><img src="${pcimg1}" class="respon_image" alt=" "
								onerror="this.src='http://cdn.thehandsome.com/_ui/desktop/common/images/products/no_img1.jpg'">
							</li>

							<li><img src="${pcimg2}" class="respon_image" alt=" "
								onerror="this.src='http://cdn.thehandsome.com/_ui/desktop/common/images/products/no_img1.jpg'">
							</li>

							<li><img src="${pcimg3}" class="respon_image" alt=" "
								onerror="this.src='http://cdn.thehandsome.com/_ui/desktop/common/images/products/no_img1.jpg'">
							</li>
						</ul>
					</div>
				</div>
				<div class="item_visual" id="imageDivW" style="display: none">
					<ul>
						<li><img src="${pcimg1}" class="respon_image"
							alt="캐시미어 블렌드 재킷"
							onerror="this.src='http://cdn.thehandsome.com/_ui/desktop/common/images/products/no_img1.jpg'">
						</li>
						<li><img src="${pcimg2}" class="respon_image"
							alt="캐시미어 블렌드 재킷"
							onerror="this.src='http://cdn.thehandsome.com/_ui/desktop/common/images/products/no_img1.jpg'">
						</li>
						<li><img src="${pcimg3}" class="respon_image"
							alt="캐시미어 블렌드 재킷"
							onerror="this.src='http://cdn.thehandsome.com/_ui/desktop/common/images/products/no_img1.jpg'">
						</li>
					</ul>
				</div>
			</div>
			<script type="text/javascript" src="/_ui/desktop/common/js/wpay.js"></script>
			<!-- 품절상품포함 여부 -->
			<script type="text/javascript">
                //<![CDATA[
                var stockOnlineStockpile = {};
                var warehouseStockpile = {};

                $(document)
                    .ready(
                        function () {
                            cartQuantity = {};

                            $(".btn_star_score li a").on(
                                "click",
                                function () {
                                    $("#rating").val(
                                        $(this).attr('value'));
                                });

                            $('#customerReview').click(function () {
                                fn_popupCustomerReview();
                            });

                            $('#offlineQty').click(function () {
                                fn_stockconfirm();
                            });

                            var productCode = $("#productCode").val();
                            $
                                .ajax({
                                    url: '/ko/p/review',
                                    type: "GET",
                                    data: {
                                        "productCode": productCode
                                    },
                                    success: function (data) {
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
                                                    starWidth +
                                                    "%")
                                        }
                                    },
                                    error: function (xhr, Status,
                                        error) {
                                        var la = new layerAlert(
                                            error);
                                        la.confirmAction = function () {
                                            return;
                                        };
                                    }
                                });

                            stockOnlineStockpile["CM2CAKCD131W_GK_85"] = "13";
                            warehouseStockpile["CM2CAKCD131W_GK_85"] = "8";

                            stockOnlineStockpile["CM2CAKCD131W_GK_90"] = "4";
                            warehouseStockpile["CM2CAKCD131W_GK_90"] = "5";

                            $(".btn_close").on("click", function () {
                                hideProductLayer();
                                $(".popwrap").hide();
                            });

                            $('.toggle_type1>dt')
                                .click(
                                    function () {

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
                                                .is('dd')) &&
                                            (checkElement
                                                .is(':visible'))) {
                                            $(this)
                                                .removeClass(
                                                    'on');
                                            checkElement
                                                .slideUp(
                                                    'fast',
                                                    function () {
                                                        afterHeight = $(
                                                                ".toggle_type1")
                                                            .height();
                                                        // 	 					bodyScroll();
                                                    });

                                        }
                                        var fitGuide = false;
                                        if ((checkElement
                                                .is('dd')) &&
                                            (!checkElement
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
                                                    function () {
                                                        afterHeight = $(
                                                                ".toggle_type1")
                                                            .height();
                                                        // 					bodyScroll();
                                                    });
                                        }

                                        if (fitGuide) {
                                            fitGuide_Swiper_Slide(1);
                                        }

                                        var bodyScroll = function () {

                                            $('body,html')
                                                .animate({
                                                        scrollTop: parseFloat(scrolltop +
                                                            (beforeHeight - afterHeight))
                                                    },
                                                    function () {
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
                                function () {
                                    // // 		showExchangeRate();
                                    $("#restock_delch_box").css(
                                        "display", "block");
                                });

                            $("#restock_tlt").mouseout(
                                function () {
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
                            if ("BR08" == "BR06") {
                                var checkShow = false;
                                var checkCode = "CM2CAKCD131W";
                                var checkLanguage = "ko";
                                if (checkCode == "TH1H7WPC500M" ||
                                    checkCode == "TH1I3WPC505M" ||
                                    checkCode == "TH1H8WPC503M" ||
                                    checkCode == "TH1HAWPC505M" ||
                                    checkCode == "TH1HAWPC505MP1") {
                                    $(".timehomme_pants_fit").addClass(
                                        "slim");
                                    $(".timehomme_pants_fit")
                                        .removeClass("straight");
                                    $(".timehomme_pants_fit")
                                        .removeClass("comfort");
                                    checkShow = true;
                                } else if (checkCode == "TH1H8WPC510M" ||
                                    checkCode == "TH1H8WPC530M" ||
                                    checkCode == "TH1H8WPC540M" ||
                                    checkCode == "TH1HBWPC535M" ||
                                    checkCode == "TH1HAWPC545M" ||
                                    checkCode == "TH1HAWPC525M" ||
                                    checkCode == "TH1HAWPC525MP1") {
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
                                    function () {
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
                        slidesPerView: 3,
                        slidesPerGroup: 3,
                        spaceBetween: 10,
                        loop: true,
                        loopFillGroupWithBlank: true,
                        observer: true,
                        observeParents: true,
                        simulateTouch: false,
                        navigation: {
                            nextEl: '.swiper-button-next.sub-nav-right',
                            prevEl: '.swiper-button-prev.sub-nav-left',
                        },
                    };

                    // 룩북보기 sub 배너 슬라이드
                    var cdNlb_sub_swiper = new Swiper(
                        '.sub-slide-zone .swiper-container', subSlideOption);

                    for (var i = 0; i < smallSwiperLeng; i++) {
                        if (smallSlideArr[i] <= 2) {
                            if (cdNlb_sub_swiper.length !== undefined &&
                                cdNlb_sub_swiper.length > 0) {
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
                        slidesPerView: 1,
                        slidesPerGroup: 1,
                        spaceBetween: 0,
                        loop: true,
                        simulateTouch: false,
                        navigation: {
                            nextEl: '.swiper-button-next.tt-nav-right',
                            prevEl: '.swiper-button-prev.tt-nav-left',
                        },
                        pagination: {
                            el: '.swiper-pagination.tt-nav-page',
                            clickable: true,
                        },
                        on: {
                            slideChange: function () {
                                var $subSlide = $('.detail-pg-lookbook-aside-box .sub-slide-zone .slide-box');
                                var slideIndex = this.realIndex;

                                //console.log(slideIndex);

                                $subSlide.hide();
                                $($subSlide[slideIndex]).show();

                            },
                            slideChangeTransitionStart: function () {
                                // 202010623 auto height 기능 추가
                                var slide_Wrap = $(".title-slide-zone .swiper-wrapper");
                                var target_Height = $(this.$wrapperEl).find('.swiper-slide-active img')
                            .height();

                                slide_Wrap.height(target_Height);
                            },
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
                            if (cdNlb_tt_swiper.length !== undefined &&
                                cdNlb_tt_swiper.length > 0) {
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
                }

                var popupOneclick
                $(document).ready(function () {

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

                    if ($("#storePickupCheck").is(":checked") ||
                        $("#athomeCheck").is(":checked") ||
                        $("#quickCheck").is(":checked")) {
                        var la = new layerAlert(
                            '퀵배송/매장수령은 배송특화 서비스로</br>원클릭 결제가 불가능합니다.');
                        la.confirmAction = function () {
                            return;
                        };
                        oneClickProcess = true;
                        return;
                    }

                    var check4pmProcess = false;
                    var check4pmOver = false;
                    var vipDeliAvail = true;
                    if ($("#fourpmCheck").is(":checked")) {
                        vipDeliAvail = false;
                        $("#deliveryKind").val("4pm");
                        $
                            .ajax({
                                url: '/ko/shoppingbag/check4pm',
                                type: "GET",
                                data: $('form[name=addToCartForm]')
                                    .serialize(),
                                async: false,
                                success: function (data) {
                                    //data가 0 또는 4pm의 경우 담기
                                    if (data == "normal") {
                                        var scrollTop = $(document)
                                            .scrollTop();
                                        var la = new layerAlert(
                                            '쇼핑백에 {0}PM 상품이 아닌 일반배송 상품이 담겨 있습니다. 쇼핑백에서 일반배송 상품을&nbsp; 삭제 후 {0}PM 버튼을 클릭해 주세요.'
                                            );
                                        var top = $(".popwrap.w_type_1")
                                            .css("margin-top").replace(
                                                "px", "");
                                        $(document).scrollTop(scrollTop);
                                        $(".popwrap.w_type_1").css(
                                            "margin-top",
                                            Number(scrollTop) +
                                            Number(top) +
                                            "px");
                                        la.confirmAction = function () {
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
                                            '쇼핑백에 {0}PM 상품이 아닌 매장수령 상품이 담겨 있습니다. 쇼핑백에서 매장수령 상품을&nbsp; 삭제 후 {0}PM 버튼을 클릭해 주세요.'
                                            );
                                        var top = $(".popwrap.w_type_1")
                                            .css("margin-top").replace(
                                                "px", "");
                                        $(document).scrollTop(scrollTop);
                                        $(".popwrap.w_type_1").css(
                                            "margin-top",
                                            Number(scrollTop) +
                                            Number(top) +
                                            "px");
                                        la.confirmAction = function () {
                                            return;
                                        };
                                        check4pmProcess = true;
                                    } else if (data == "athome") {
                                        var scrollTop = $(document)
                                            .scrollTop();
                                        var la = new layerAlert(
                                            '쇼핑백에 {0}PM 상품이 아닌 앳홈 상품이 담겨 있습니다. 쇼핑백에서 앳홈 상품을&nbsp; 삭제 후 {0}PM 버튼을 클릭해 주세요.'
                                            );
                                        var top = $(".popwrap.w_type_1")
                                            .css("margin-top").replace(
                                                "px", "");
                                        $(document).scrollTop(scrollTop);
                                        $(".popwrap.w_type_1").css(
                                            "margin-top",
                                            Number(scrollTop) +
                                            Number(top) +
                                            "px");
                                        la.confirmAction = function () {
                                            return;
                                        };
                                        check4pmProcess = true;
                                    }
                                },
                                error: function (xhr, Status, error) {
                                    var la = new layerAlert(error);
                                    la.confirmAction = function () {
                                        return;
                                    };
                                }
                            });
                    }

                    if (check4pmProcess) {
                        $("#deliveryKind").val("");
                        oneClickProcess = true;
                        return false;
                    }

                    if (check4pmOver) {
                        var la = new layerAlert('오후{0}시 이후 주문시 일반배송으로 변경됩니다.');
                        la.confirmAction = function () {
                            return;
                        };
                    }

                    $('form[name=addToCartForm] input[name=qty]').val(qty);
                    $('form[name=addToCartForm] input[name=buyNowYn]').val(
                        false);

                    if ("false" == "true" && "ko" == "ko") {
                        NetFunnel_Action({
                            action_id: "buy_now"
                        }, function (ev, ret) {
                            oneclickLoadingStart(vipDeliAvail);
                        });
                    } else {
                        oneclickLoadingStart(vipDeliAvail);
                    }
                }

                function oneclickStart(vipDeliAvail) {
                    $("body")
                        .append(
                            '<div id="oneclickPopupLayer"><div></div></div>');

                    var loadingHtml = "";
                    loadingHtml +=
                        '<div class="layerLoading_bar" id="oneclickLoadingDiv" style="width: 100%;height: 100%;top:0; z-index: 102">';
                    loadingHtml += '    <div class="ly_oneclick">';
                    loadingHtml +=
                        '        <img src="http://cdn.thehandsome.com/pc/order/loading_spinner_007s_190827.gif" alt="loading">';
                    loadingHtml += '                <p class="ly_ld_main" >최대할인 혜택을 계산 중 입니다</p>';
                    loadingHtml += '                <p class="ly_ld_sub">최대할인 혜택을 원클릭결제에 자동 적용하여<br>';
                    loadingHtml += '                   편리한 결제가 가능합니다</p>';
                    loadingHtml += '    </div>';
                    loadingHtml += '</div>';

                    $("#oneclickPopupLayer").append(loadingHtml);

                    var products = "";
                    products += $("#productCode").val();
                    products += "," + $("input[name=qty]").val();
                    $.ajax({
                        url: '/checkout/oneclick?products=' + products +
                            '&vipDeliAvail=' + vipDeliAvail,
                        type: 'GET',
                        success: function (data) {
                            $('#oneclickPopupLayer').append(data);
                        },
                        error: function (err) {
                            console.log(err.responseText);
                        }
                    })
                    setEcommerceData("Checkout1(원클릭결제)");
                    oneClickProcess = true;
                }

                function loadingOff() {
                    //로딩바제거
                    if ($("#loadingBarDiv").length > 0) {
                        $(".layerLoading_bar").remove();
                    }

                    if ($(".layerArea:last").length > 0) {
                        $(".layerArea:last").remove();
                    }
                }

                function oneClickTargetBlankPopup(wpayData) { //원클릭결제 새창 팝업 2001
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
                    var sImg = "http://newmedia.thehandsome.com/CM/2C/FW/CM2CAKCD131W_GK_C01.jpg";
                    var sTxt = "[the CASHMERE] 캐시미어 크롭 가디건";

                    if (sImg.indexOf("_C01") > 0) {
                        sImg = sImg.replace("_C01", "_W01");
                    }

                    var href = "http://www.pinterest.com/pin/create/button/?url=" +
                        sUrl +
                        "&media=" +
                        sImg +
                        "&description=" +
                        encodeURIComponent(sTxt);
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
                            mode: "horizontal",
                            speed: 500,
                            pager: false,
                            moveSlides: 1,
                            slideWidth: widthLi,
                            minSlides: 3,
                            maxSlides: 3,
                            slideMargin: 10,
                            auto: false,
                            autoHover: false,
                            controls: false,
                            adaptiveHeight: true,
                            adaptiveHeightSpeed: 10
                        });
                    $("#referencesControls .prev").on("click", function () {
                        mySlider.goToPrevSlide();
                        return false;
                    });
                    $("#referencesControls .next").on("click", function () {
                        mySlider.goToNextSlide();
                        return false;
                    });
                    $(".rmd_pb .tlt").mouseenter(function () {
                        $("#productEctTab .rmd_pb_popup").show();
                    });
                    $(".rmd_pb .tlt").mouseleave(function () {
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

                /* 주문서간편결제 : 결제 인증 후 콜백
                 원클릭구매 : iframe 안에서 실행되기 때문에, target 을 _top으로 지정합니다
                 */
                var checkoutPaymentAuthCallback = function (resultCode,
                    resultMsg, result) {
                    console.log(document.cookie);
                    switch (resultCode) {
                        case "2406": // 쿠키정보가 없습니다.
                            //layerWpayCookieSettingView();
                            //WPAY.close();
                            //window.parent.postMessage({layerClose:'layerClose'},'*');
                            //window.parent.postMessage({inicisPopOpen:'inicisPopOpen'},'*');

                            console.log("쿠키 정보가 없음");
                            break;
                        case "0000":
                            $("body")
                                .append(
                             //       '<div class="layerArea" id="productLayer"><div></div></div>');

                            // $(".layerArea .layerBg").css('background', 'none');

                            // 토스트 팝업 추가
                            var toastPopup =
                                '<div class="pop_loading_oneclick200210" style="background:#444;width:290px;height:120px;position:fixed;top:30%;left:50%;margin-left:-145px;margin-top:-60px;z-index:9999;">';
                            toastPopup +=
                                '<img src="http://cdn.thehandsome.com/_ui/handsomemobile/images/common/Spinner_1s_105px.png" alt="loading" style="display:block;width:32px;height:32px;margin:30px auto 15px auto;">';
                            toastPopup += '<p style="color:#fff;text-align:center;">';
                            toastPopup +=
                                '<span style="background:url(\'http://cdn.thehandsome.com/pc/products/one_click_pay_w.png\') left 2px no-repeat;color:#fff;font-size:15px;padding-left:93px;">가 진행중입니다.</span>';
                            toastPopup += '</p>';
                            toastPopup += '</div>';

                            $("body").append(toastPopup);

                            //상품상세와 결제페이지 구분이 안되기 때문에 
                            //window.parent.postMessage({loadingShow:'loadingShow'},'*');

                            var $PAY_FORM = $("#PAY_FORM");
                            addHidden($PAY_FORM, 'wtid', result.wtid);

                            $PAY_FORM.attr({
                                'method': 'POST',
                                'action': '/ko/inicis/inipaywpay/sop/response',
                                'target': '_top'
                            });

                            $PAY_FORM.submit();
                            break;
                        default:
                            new layerAlert(resultMsg);
                            //WPAY.close();
                            //window.parent.postMessage({layerClose:'layerClose'},'*');
                            break;
                    }
                }

                function addWishListProdClick(productBaseCode) {

                    var lc = new layerConfirm("로그인이 필요합니다", "확인", "취소");
                    lc.cancleAction = function () { //취소 호출 펑션
                        $("." + productBaseCode + "Like").each(
                            function (index, ele) {
                                $(ele).removeClass("on");
                            })
                    };

                    lc.confirmAction = function () { //확인 호출 펑션
                        location.href = "/ko/member/login";
                    };

                    addWishListProd(productBaseCode);
                }

                function addWishListProd(productBaseCode) {
                    $.ajax({
                        url: "/ko/wishlist/add-product-action",
                        type: "GET",
                        data: {
                            productCode: productBaseCode,
                            type: 'toggle'
                        },
                        success: function (msg) {

                            if (msg !== 'erroor1') {
                                if (productBaseCode === 'CM2CAKCD131W_GK') {
                                    $('.wishlist1803').toggleClass('on');
                                }
                                $('.' + productBaseCode + 'LIKE').each(
                                    function (index, ele) {
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
                            url: '/ko/product/reloadCoordiSize',
                            type: 'GET',
                            datatype: 'json',
                            data: {
                                'productcode': targetProd
                            },
                            success: function (data) {
                                var product = data.product;
                                var images;

                                var txtHtml = '';
                                var lookbookTxtHtml = '';
                                /* 가격변경 */
                                var priceHtml = '';

                                priceHtml = product.price.formattedValue;

                                if (priceHtml != '') {
                                    $(
                                            '#prod_' + sourceProd +
                                            ' .info_wrap .price')
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
								<a href="javascript:fn_goCategori('br08')"
									onclick="GA_Detail('brand',$(this))">${product.bname}</a>
							</div>
							<span class="name ko_fir_spel"> ${product.pname}<input
								type="hidden" id="brandName" value="the CASHMERE"> <input
								type="hidden" id="productName" value="캐시미어 크롭 가디건"> <input
								type="hidden" id="productCode" value="CM2CAKCD131W_GK">
							</span>
						</h4>

						<div class="flag"></div>

						<p class="price">
							<span>₩ <fmt:formatNumber type="number" value="${pcprice}" /> 원
							</span> <input type="hidden" id="productPrice" value="2950000">
						</p>
						<!-- 상품추가설명 -->
						<!-- 20200914이후 추가 상품설명 (신) -->
						<div class="prod-detail-con-box">
							<strong class="number-code">상품품번 : <span>${pcid}</span></strong>
							<div class="round-style">
								<p>${product.pnote}</p>
							</div>
						</div>
					</div>

					<!-- 20200904 추가 (더보기) -->
					<div class="info_sect">
						<div class="prod-detail-con-more">
							<button type="button" class="more-btn">
								더보기<i></i>
							</button>
							<div class="more-con-box">
								<ul>
									<li>- 스코틀랜드 'Todd &amp; Duncan' 사의 수입 원사<br>- 100%
										캐시미어 소재<br>- 앞면의 버튼 클로징
									</li>
								</ul>
							</div>
						</div>
					</div>
					<script>
                        $(document)
                            .ready(
                                function () {
                                    $('.prod-detail-con-more')
                                        .on(
                                            'click',
                                            '.more-btn',
                                            function () {
                                                $(
                                                        '.more-con-box')
                                                    .slideToggle(
                                                        function () {
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
							<li><span class="title">한섬마일리지</span> <span class="txt">37,250&nbsp;M&nbsp;(5%)</span>
							</li>

							<li><span class="title">H.Point</span> <span class="txt">745&nbsp;P&nbsp;(0.1%)</span>
								<a href="javascript:fn_cardBenefit();" id="cardbenef"
								class="etc_info" onclick="GA_Event('상품_상세','카드사_혜택안내','클릭');">카드사
									혜택안내</a> <script type="text/javascript">
                                    $(document)
                                        .ready(
                                            function () {

                                                fn_tableMerge($(
                                                        "#noInterestTable")
                                                    .attr("id"));

                                                fn_tableMerge($(
                                                        "#partNoInterestTable")
                                                    .attr("id"));

                                                $('.card img')
                                                    .each(
                                                        function () {
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
                                                .indexOf(searchText) +
                                                searchText.length,
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
                                                function () {

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
										<input type="hidden" id="colorName" value="GREY KHAKI">
										<c:forEach var="color" items="${colors}">

											<li><a
												href="productdetail?pid=${product.pid}&pcid=${color.pcid}"
												class="beige"
												style="background-image: url(${color.pcchipimg})"> </a></li>
										</c:forEach>
									</ul>
								</div> <span class="cl_name" id="colorNameContent"></span></li>
							<li><span class="title">사이즈 <!-- 사이즈 --></span> <span
								class="txt"> <script type="text/javascript">
                                        $(document)
                                            .ready(
                                                function () {

                                                    var tab = $('#size_tab ul li');
                                                    var content = $('.size_tab_container > div');
                                                    $(
                                                            '.size_tab_container > div + div')
                                                        .css('display',
                                                            'none');
                                                    tab
                                                        .on(
                                                            'click',
                                                            function (
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
									</div> <!-- 사이즈 -->
									<ul class="size_chip clearfix sizeChipKo1901">
										<c:forEach var="size" items="${sizes}">
											<li><a href="javascript:void(0);"
												onclick="checkStock(${size.psize})">
													${size.psize}</a></li>
										</c:forEach>
									</ul>


							</span> <!-- 2021.08.10 화장품 상품인 경우 사이즈조견표 영역 미노출 --> <a
								href="javascript:fn_popupSizeQuickReference();" class="etc_info"
								onclick="GA_Event('상품_상세','사이즈_조건표','클릭')">사이즈 조견표</a> <!-- 재입고알림 툴팁 -->
								<!-- //재입고알림 툴팁 --></li>
							<li><span class="title">수량</span> <span class="txt">
							        <span class="qty_sel num"> <a href="javascript:void(0);" onclick="count('minus',${pcprice})" class="left">이전
							                버튼</a> <input type="text" id="txtqty" title="수량" value="1" class="mr0" readonly="readonly"> 
							                <a href="javascript:void(0);" onclick="count('plus',${pcprice})" class="right">다음 버튼</a>
							        </span>
							    </span> <span class="txt" id="popularProudct" style="display: none">
							        <span class="deliveryPlanDate"> 해당 상품은 전국 매장을 통해 수급하여 배송
							            될 예정입니다. <br> 불량 등의 이유로 수급이 어려울 경우, 취소될 수 있습니다. <br>(평일
							            기준 5일 이상 소요 예정)
							        </span>
							    </span> <input type="hidden" id="erpWorkOrderNumber"> <input type="hidden" id="reserveSalesStockpile"> <input
							        type="hidden" id="erpWorkOrderProdCode">
							</li>
							<li>
								<span class="title"> 남은 수량 </span> 
								<span class="txt" id ="stockCnt"> </span>
								
							</li>
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
							<span id="sumPrice">₩ <fmt:formatNumber type="number" value="${pcprice}" /> 원</span>
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
						style="position: absolute; width: 473px; margin-top: 0px; margin-bottom: 0px;">
						<input type="button" value=""
							class="btn wishlist1803 float_left ml0  "
							id = 'wish_${product.pid}';
							onclick="insertLike('${product.pid}','team5')"> <!-- 좋아요 버튼!!!!!!!!!!!!!!!!!!!!!!!!!! -->

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
							action="/ko/HANDSOME/WOMEN/OUTER/Cardigan-Vest/%EC%BA%90%EC%8B%9C%EB%AF%B8%EC%96%B4-%ED%81%AC%EB%A1%AD-%EA%B0%80%EB%94%94%EA%B1%B4/p/CM2CAKCD131W_GK?categoryCode=we05"
							method="post">
							<input type="hidden" maxlength="3" size="1" name="qty"
								class="qty"> <input type="hidden" name="productCodePost"
								value="CM2CAKCD131W_GK"> <input type="hidden"
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
									value="418c2329-3174-4d51-952c-2b3eb3333468">
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
											<td>없음</td>
											<td>조금 있음</td>
											<td class="bold">있음</td>
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
											<td class="bold">없음</td>
											<td>부분 안감</td>
											<td>전체 안감</td>
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
							<strong>상품품번 :</strong> CM2CAKCD131W<br> <strong>품목
								:</strong> 의류<br> <strong>소재 :</strong> 겉감 캐시미어 100%(GK,PK,WG)<br>
							<strong>색상 :</strong> PK(PINK), GK(GREY KHAKI), WG(WHITE GREY)<br>
							<strong>사이즈 :</strong> 85, 90<br> <strong>제조국 :</strong> 한국<br>
							<strong>제조사 :</strong> (주)한섬<br> <strong>제조연월 :</strong>
							202210<br> <strong>세탁방법 및 취급 시 주의사항</strong>
							<div class="howToWash renew1907" id="newHowToWash">
								<ul>
									<li><img
										src="http://cdn.thehandsome.com/pc/laundryMark/pc_ko1/005.png"
										onmouseover="this.src='http://cdn.thehandsome.com/pc/laundryMark/pc_ko2/005_.png'"
										onmouseout="this.src='http://cdn.thehandsome.com/pc/laundryMark/pc_ko1/005.png'"
										onerror="javascript:onErrorImg(this);" alt="005"> <span
										class="code_num">005</span></li>
									<li><img
										src="http://cdn.thehandsome.com/pc/laundryMark/pc_ko1/029.png"
										onmouseover="this.src='http://cdn.thehandsome.com/pc/laundryMark/pc_ko2/029_.png'"
										onmouseout="this.src='http://cdn.thehandsome.com/pc/laundryMark/pc_ko1/029.png'"
										onerror="javascript:onErrorImg(this);" alt="029"> <span
										class="code_num">029</span></li>
									<li><img
										src="http://cdn.thehandsome.com/pc/laundryMark/pc_ko1/003.png"
										onmouseover="this.src='http://cdn.thehandsome.com/pc/laundryMark/pc_ko2/003_.png'"
										onmouseout="this.src='http://cdn.thehandsome.com/pc/laundryMark/pc_ko1/003.png'"
										onerror="javascript:onErrorImg(this);" alt="003"> <span
										class="code_num">003</span></li>
									<li><img
										src="http://cdn.thehandsome.com/pc/laundryMark/pc_ko1/019.png"
										onmouseover="this.src='http://cdn.thehandsome.com/pc/laundryMark/pc_ko2/019_.png'"
										onmouseout="this.src='http://cdn.thehandsome.com/pc/laundryMark/pc_ko1/019.png'"
										onerror="javascript:onErrorImg(this);" alt="019"> <span
										class="code_num">019</span></li>
									<li><img
										src="http://cdn.thehandsome.com/pc/laundryMark/pc_ko1/049.png"
										onmouseover="this.src='http://cdn.thehandsome.com/pc/laundryMark/pc_ko2/049_.png'"
										onmouseout="this.src='http://cdn.thehandsome.com/pc/laundryMark/pc_ko1/049.png'"
										onerror="javascript:onErrorImg(this);" alt="049"> <span
										class="code_num">049</span></li>
								</ul>
								본 제품은 반드시 드라이크리닝 하십시오. 세탁 시 이염, 변색, 탈색될 수 있으니 유의하시기 바랍니다. 단추나
								악세서리는 세탁 시 손상될 수 있으므로 은박지로 싸거나 분리하여 주십시오. 특성상 마찰에 의해 올 뜯김 등 원단
								손상이 발생할 수 있으니 취급 시 주의하시기 바랍니다.<br> <br>
							</div>
							<br> <strong>품질보증기준</strong><br> 1. 본 제품은 정부 고시 소비자
							분쟁해결 기준에 의거 고객의 정당한 피해를 보상해드립니다. <br> - 원단 불량, 부자재 불량, 봉제
							불량, 사이즈 부정확, 부당 표시(미표시 및 부실표시) 및 소재 구성 부적합으로 인한 세탁 사고 : 구입일로부터 1년
							이내분은 무상수리, 교환, 구입가 환불함. (단, 봉제 불량은 1년 경과 후에도 무상 수선 가능) <br>
							- 사이즈가 맞지 않거나 디자인, 색상 불만 제품 : 구입 후 7일 이내로서 제품에 손상이 없는 경우 동일 가격,
							동일 제품으로 교환 가능. <br> - 상하의 한 벌(세트/일착)인 경우 한 쪽에만 이상이 있어도 한
							벌(세트/일착)로 처리함. 단, 소재 및 디자인이 다른 경우에는 해당 의류만 교환 가능. <br>2. 소비자
							부주의에 의한 제품 훼손, 세탁 잘못으로 인한 변형 및 품질 보증기간(1년)이 경과한 제품에 대해서는 보상의 책임을
							지지 않으며, 수선 가능시에는 실비로 수선해드립니다. <br>3. 제품에 이상이 있는 경우 바로 본사로
							연락주시면 수선/교환/환불이 가능하나, 타업체(일반 수선실 등)에서 수선했을 경우는 불가능합니다.<br> <br>
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
							<div class="ko realsize_img SZ05"></div>
							<p class="tit">가디건</p>
							<dl class="info_tbl">
								<dt>총길이 :</dt>
								<dd>52.8cm</dd>
								<dd></dd>
								<dt class="inline">가슴단면 :</dt>
								<dd>52cm</dd>
								<dd></dd>
								<dt class="inline">어깨너비 :</dt>
								<dd>35.3cm</dd>
								<dd></dd>
								<dt>소매길이 :</dt>
								<dd>57.8cm</dd>
								<dd></dd>
								<dt class="inline">소매부리 :</dt>
								<dd>7.9cm</dd>
								<dd></dd>
							</dl>
							<!-- info_tbl -->

							<!-- //info_tbl -->
							<!-- numlist -->
							<p class="info2">실측 사이즈 (85) 기준</p>
							<br>
							<!-- //numlist -->
							<font color="red"> <strong> 원단, 측정방법에 따라 약간의 오차
									가능성이 있습니다.</strong>
							</font>

							<div class="timehomme_pants_fit" style="display: none"></div>
						</dd>
						<dt>
							<a href="javascript:void(0);" id="DELI_RETURN_EVT">배송 및 교환/반품</a>
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
					</dl>
				</div>
				<!-- 코디상품 start -->
				<div class="related_evt">
					<div class="cd-n-lb-tab" id="codi_lookbook_tab" style="">
						<ul>
							<li class="on"><a href="#cd-n-lb-tab-01"
								onclick="GA_Event('상품_상세','함께 코디한 상품','함께 코디한 상품');">함께 코디한
									상품</a></li>
							<li class=""><a href="#cd-n-lb-tab-02"
								onclick="GA_Event('상품_상세','룩북 제안 스타일','룩북 제안 스타일');">룩북 제안
									스타일</a></li>
						</ul>
					</div>
					<!-- box1 -->
					<div class="cd-n-lb-content-box" id="cd-n-lb-tab-01"
						style="display: block;">
						<div class="matches_list together-codi-list"
							id="referencesListContent">
							<ul class="clearfix slides">
								<li id="prod_CM2CAASZ755WS_TG" style="margin-right: 10px;">
									<div class="together-codi-pic">
										<a href="javascript:goDetailPage('CM2CAASZ755WS_TG');"
											onclick="GA_Event('상품_상세','코디상품','[ESSEN THE LABEL] 램스 퍼 플랫 슈즈');"
											class="pic"> <img
											src="http://newmedia.thehandsome.com/CM/2C/FW/CM2CAASZ755WS_TG_S01.jpg"
											alt="코디상품" class="respon_image">
										</a> <a href="#;" id="CM2CAASZ755WS_TGLIKE"
											class="add_wishlist CM2CAASZ755WS_TGLIKE like "
											onclick="addWishListProdClick('CM2CAASZ755WS_TG');GA_Event('스타일', '코디상품 좋아요', '[ESSEN THE LABEL] 램스 퍼 플랫 슈즈');">위시리스트
											담기</a>
									</div> <span class="info_wrap item_info2"> <span
										class="brand BR08">the CASHMERE</span> <span class="title">[ESSEN
											THE LABEL] 램스 퍼 플랫 슈즈</span> <span class="price"> ₩375,000</span>
								</span> <!-- 컬러칩 추가(20210614) -->
									<div class="we-codi-colorchip">
										<ul class="color_chip clearfix">
											<li id="chipbtn_CM2CAASZ755WS_BK"><input type="hidden"
												class="colorNameVal" value="BLACK"> <a href="#;"
												onclick="chngColorChip(this, 'CM2CAASZ755WS_TG','CM2CAASZ755WS_BK');"
												class="beige"
												style="background: #000000 url('http://newmedia.thehandsome.com/CM/2C/FW/CM2CAASZ755WS_BK_C01.jpg/dims/resize/24x24')"
												onmouseover="setColorName('BLACK');"
												onmouseout="setColorName('');"></a></li>
											<li id="chipbtn_CM2CAASZ755WS_CA"><input type="hidden"
												class="colorNameVal" value="CAMEL"> <a href="#;"
												onclick="chngColorChip(this, 'CM2CAASZ755WS_TG','CM2CAASZ755WS_CA');"
												class="beige"
												style="background: #876c41 url('http://newmedia.thehandsome.com/CM/2C/FW/CM2CAASZ755WS_CA_C01.jpg/dims/resize/24x24')"
												onmouseover="setColorName('CAMEL');"
												onmouseout="setColorName('');"></a></li>
											<input type="hidden" id="colorName" value="Taupe Grey">
											<li id="chipbtn_CM2CAASZ755WS_TG"><input type="hidden"
												class="colorNameVal" value="Taupe Grey"> <a
												href="#;"
												onclick="chngColorChip(this, 'CM2CAASZ755WS_TG','CM2CAASZ755WS_TG');"
												class="no_color on"
												style="background: #9b9595 url('http://newmedia.thehandsome.com/CM/2C/FW/CM2CAASZ755WS_TG_C01.jpg/dims/resize/24x24')"></a>
											</li>
										</ul>
									</div> <!-- //컬러칩 추가(20210614) -->
								</li>
							</ul>
						</div>
					</div>
					<!-- //box1 -->
				</div>

				<!--코디상품 end -->
			</div>

			<form id="PAY_FORM" method="post" accept-charset="euc-kr"></form>
		</div>
		<div class="product-detail-img"></div>
		<div class="matches_items" id="productDetailEtc">
			<script type="text/javascript">
                //<![CDATA[

                $(document).ready(
                    function () {
                        var recommendtProductYn = false;

                        $('#recommendItemsListContent').css('display',
                            'block');
                        recommendtProductYn = true;

                        if (recommendtProductYn == false) {
                            $('#newItemsListContent').css('display',
                                'block');
                            $(".halatest_pb > a").addClass('on');
                        }
                        recommendtProductYn = true;

                        if (recommendtProductYn == false) {
                            $('#lookbookListContent').css('display',
                                'block');
                        }
                        recommendtProductYn = true;

                        if (recommendtProductYn == false) {
                            $("#productEctTab .halatest_pb").css('display',
                                'block');
                            $("#productEctTab .halatest_pb > a").addClass(
                                'on');
                        }
                    });

                function onMouseOverRecommend() {
                    $(".rmd_pb_popup").css('display', 'block');
                }

                function onMouseOutRecommend() {
                    $(".rmd_pb_popup").css('display', 'none');
                }

                //]]>
            </script>
		</div>
	</div>

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
        $(document).ready(function () {
            $("#inquiryMobileNo2").on("keyup", function () {
                $(this).val($(this).val().replace(/[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/g, ''));
                if ($("#inquiryMobileNo2").val().length > 0) {
                    var inputNumberchk = /^[0-9]+$/; // 숫자 체크
                    if (!inputNumberchk.test($("#inquiryMobileNo2").val())) {
                        $(this).val($(this).val().replace(/[^0-9]/gi, ""));
                        var la = new layerAlert("숫자만 입력 가능합니다.");
                        la.confirmAction = function () {
                            $("#inquiryMobileNo2").focus();
                        };
                    }
                }
            });

            $("#inquiryMobileNo3").on("keyup", function () {
                $(this).val($(this).val().replace(/[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/g, ''));
                if ($("#inquiryMobileNo3").val().length > 0) {
                    var inputNumberchk = /^[0-9]+$/; // 숫자 체크
                    if (!inputNumberchk.test($("#inquiryMobileNo3").val())) {
                        $(this).val($(this).val().replace(/[^0-9]/gi, ""));
                        var la = new layerAlert("숫자만 입력 가능합니다.");
                        la.confirmAction = function () {
                            $("#inquiryMobileNo3").focus();
                        };
                    }
                }
            });

            $("#inquiryEmailSel").change(function () {
                if ($("#inquiryEmailSel").val().trim() == "") {
                    $("#inquiryEmailDomain").val("");
                } else {
                    $("#inquiryEmailDomain").val($("#inquiryEmailSel").val());
                }
            });

            //파일 삭제
            $(document).on('click', '#delQnAFile', function () {
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
				action="/ko/HANDSOME/WOMEN/OUTER/Cardigan-Vest/%EC%BA%90%EC%8B%9C%EB%AF%B8%EC%96%B4-%ED%81%AC%EB%A1%AD-%EA%B0%80%EB%94%94%EA%B1%B4/p/CM2CAKCD131W_GK?categoryCode=we05"
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
						value="418c2329-3174-4d51-952c-2b3eb3333468">
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
	<div class="popwrap w_type_2" id="restockReminder"
		style="width: 450px; display: none;">
		<div class="pop_tltwrap mb20">
			<h3>재입고 알림 신청</h3>
		</div>
		<div class="pop_cnt pop_con_restock1904">
			<div class="item_box" id="rewareHousingDiv">
				<input type="hidden" id="popupHProduct" value="">
				<div class="pt_list_all">
					<img src="/_ui/desktop/common/images/popup/cart_set_img1.jpg"
						id="popupProductImageS01" alt="">
					<div class="tlt_wrap">
						<div class="basket_tlt">
							<span class="tlt" id="popupBrandName"></span> <span
								class="sb_tlt" id="popupProductName"></span>
						</div>
						<p class="color_op" id="popupProductColor"></p>
						<input type="hidden" id="popupProductSize">
						<p class="mt5" id="popupProductPrice"></p>
					</div>
				</div>
			</div>
			<div class="input_box1904">
				<p class="txt1904">재입고 알림을 받으실 이메일 정보를 확인해주세요.</p>
				<form action="#" method="post">
					<!-- email -->
					<input type="text" id="email_address" title="이메일 아이디"
						class="em_form" style="width: 198px;" value="" disabled="disabled">
					<span class="andmail">@</span> <input type="text" id="email_domain"
						title="이메일 도메인" class="em_form"
						style="width: 198px; margin-right: 0;" value=""
						disabled="disabled">
				</form>
				<ul class="bul_sty01_li mt15">
					<li>재입고 알림 예정이 있는 상품(컬러/사이즈)에 한해서 재입고 알림 신청이 가능합니다. <br>(제작상황에
						따라 변경될 수 있습니다.)
					</li>
					<li>신청 후 30일 내에 상품이 재입고 되면 '1회' 알림이 발송됩니다.</li>
					<li>소량 입고되거나 동시 구매가 이루어질 경우 등 알림 후에도 품절이 발생할 수 있습니다.</li>
					<li>회원정보에 등록된 이메일 정보로 안내 드리며, 이메일 정보 수정은<br>마이페이지 &gt;
						개인정보변경 페이지에서 가능합니다.
					</li>
					<li>알림 신청 시의 상품 옵션 및 가격 등의 상품정보가 재입고 시 변동될 수 있습니다.</li>
					<li>아울렛으로 판매 전환 되었을 경우, 알림이 발송되지 않습니다.</li>
				</ul>
			</div>
		</div>
		<div class="btnwrap">
			<input type="button" class="btn wt_s" id="rewareHousingCancel"
				value="취소"> <input type="button" class="btn gray_s mr0"
				id="rewareHousingApply" value="신청">
		</div>
		<!-- btn_close -->
		<a href="#" class="btn_close"><img
			src="/_ui/desktop/common/images/popup/ico_close.png" alt="닫기"></a>
		<!-- //btn_close -->
	</div>
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
	<!--//리얼핏 팝업 -->
	<script type="text/javascript">
        $(document).ready(function () {
            $("#stockconfirm .btnwrap .btn.wt_s").on("click", function () {
                $("#offlieQtyClose").trigger("click");
            });

            $("#stockconfirm .btnwrap .btn.gray_s").on("click", function () {
                $("#offlieQtyClose").trigger("click");
            });

            $("#offlieQtyClose").on("click", function () {
                $("#offlineQtyListPop").show();
                $("#offlineQtyInfoPop").hide();
                $(".more_stockbox").hide();
                if ($(".w_type_2_1").hasClass('stockList')) {
                    $(".w_type_2_1").removeClass("stockList");
                }

                $("#soldOutYn").prop("checked", false);
            });

            $("#soldOutYn").change(function () {
                getOfflineQty();
                $("#offlineQtyList").scrollTop(0);
            });
        });

        function setColorNamePop(color) {
            $("#colorNamepop").html(color);
        }

        function hideOfflineQtyInformation() {
            $(".w_type_2_1").addClass("stockList");
            $("#offlineQtyInfoPop").hide();
            $("#offlineQtyListPop").show();

            $("#offlineQtyList").scrollTop(0);
        }

        function showOfflineQtyInformation() {
            if ($(".color_size_qty.czq_pop .color_chip li a.on").length == 0) {
                var la = new layerAlert("색상을 선택해 주세요.");
                return;
            }
            if ($(".color_size_qty.czq_pop .size_chip li a.on").length == 0) {
                var la = new layerAlert("사이즈를 선택해 주세요.");
                return;
            }

            if ($(".w_type_2_1").hasClass('stockList')) {
                $(".w_type_2_1").removeClass("stockList");
            }

            $("#offlineQtyInfoPop").show();
            $("#offlineQtyListPop").hide();

            getOfflineQty();
        }

        function getOfflineQty() {
            var pCode, tmpCode = "CM2CAKCD131W_GK";
            var infoTxt;

            if (tmpCode.indexOf("_") > -1) {
                pCode = tmpCode.split("_")[0];
            } else {
                pCode = tmpCode;
            }

            var colorCd = $(".color_size_qty.czq_pop .color_chip li a.on")
                .attr("data-color-code");
            var colorNm = $(".color_size_qty.czq_pop .color_chip li a.on")
                .attr("data-color-name");
            var sizeCd = $(".color_size_qty.czq_pop .size_chip li a.on").attr(
                "data-size-code");
            var erpSizeCd = $(".color_size_qty.czq_pop .size_chip li a.on")
                .attr("data-erp-size");
            var krSizeCd = $(".color_size_qty.czq_pop .size_chip li a.on")
                .attr("data-kr-size");
            var size = sizeCd;
            var soldOut = $("#soldOutYn").is(":checked") ? "Y" : "N";

            if (krSizeCd != null && krSizeCd != "") {
                size += krSizeCd;
            }

            infoTxt = "선택하신 옵션(<em>" +
                colorNm +
                "/" +
                size +
                "</em>)의 오프라인 매장 재고 정보입니다.<span>※ 매장 재고 현황은 대략적이며, 자세한 정보는 매장에 문의해주세요.</span>";
            $(".stock_pop_txt").html(infoTxt);

            $
                .ajax({
                    url: '/ko/p/offlineShopQty',
                    type: 'GET',
                    datatype: 'json',
                    data: {
                        "productCode": pCode,
                        "styleCode": colorCd,
                        "sizeCode": erpSizeCd,
                        "soldOut": soldOut
                    },
                    success: function (data) {
                        var list;
                        if (data.length > 0) {
                            for (var i = 0; i < data.length; i++) {
                                if (i % 2 == 0) {
                                    list += "<tr>";
                                } else {
                                    list += "<tr class='colbg'>";
                                }
                                list += "	<td>";
                                list += "		<span>" + data[i].branchName;
                                list += "			<em class='redtxt_count'>" +
                                    data[i].offlineShopQty + "개</em>";
                                list += "		</span>";
                                list += "		<p>" + data[i].branchAddress +
                                    "</p>";
                                list += "	</td>";
                                list += "	<td>" + data[i].branchTelephone +
                                    "</td>";
                                list += "</tr>";
                            }
                        } else {
                            list =
                                "<td colspan='2' style='width:470px !important;height:280px;padding-left:25px;text-align:center;'>선택하신 옵션(" +
                                colorNm +
                                "/" +
                                size +
                                ")의 매장 재고를 찾을 수 없습니다.</td>";
                        }
                        $("#offlineQtyList").html(list);
                    },
                    error: function (xhr, Status, error) {
                        var la = new layerAlert("[Error] " + error);
                        return;
                    }
                });

            $(".more_stockbox").show();
        }
              
    </script>
    
    					<!-- 수량 변경과 재고 확인 자바스크립트  -->
			<script >
									
						const url = new URL(window.location.href);
						const urlParams = url.searchParams;
						
						function checkStock(psize) {
							$.ajax({
								url: "/product/getProductStock",
								data: {
									"pcid" : urlParams.get("pcid"),
									"psize" : psize
								}
							}).done(function (data) {
	/* 							let p_amount = Math.min($("#product-amount-input").val(), data.amount);
								$("#product-amount-input").val(p_amount);
								changeAmount(p_amount, product_price);
								$("#product-amount-input").attr("max", data.amount); */
								console.log(data.amount);
								$("#stockCnt").html(data.amount);
							});				
						}
						
						function count(type, pcprice) {
							console.log("count 버튼");
							//console.log($("#txtqty").val());
							//console.log($("#stockCnt").html());
							
 							var count1 = parseInt($("#txtqty").val());
							var stockCnt = parseInt($("#stockCnt").html());
							
							console.log(count1 + 1);						
							console.log(stockCnt + 1);
							
 						    if(type=='plus'){
 						    	if (isNaN(stockCnt)) {
 						    		console.log("nullllll");
 						    		alert("사이즈를 선택하세요");
 						    	} else {
 							    	console.log("더하시");
 							         if(count1 >= stockCnt) {
 							        	//console.log("재고 부족");
 							        	alert("재고 부족");
 							        } else {
 							        	//console.log("재고 있음");
 							        	//alert("재고 있음");
 							        	$("#txtqty").val(count1+1);
 							        	let tmp = pcprice * (count1 + 1);
 							        	
 							        	let tmp2 = tmp.toString().replace( /\B(?=(\d{3})+(?!\d))/g, ',');
 							        	console.log(tmp2);
 							        	$("#sumPrice").html("₩ " +tmp2 + "원"); 
 							        }
 						    	}	        
						    }else{
						    	if (isNaN(stockCnt)) {
 						    		console.log("nullllll");
 						    		alert("사이즈를 선택하세요");
 						    	} else {
 							    	console.log("빼");
						        	if(count1 > 0) {
						        	$("#txtqty").val(count1-1); 
						        	let tmp = pcprice * (count1 - 1);
						        	console.log(tmp);
						        	let tmp2 = tmp.toString().replace( /\B(?=(\d{3})+(?!\d))/g, ',');
						        	$("#sumPrice").html("₩ " +tmp2 + "원");					        
						        } 
 						    }
						 }	 
					}   
						
					
					</script>
					<script>
function insertLike(pid, mid) {
	
 	console.log(pid);
	console.log(mid); 
	
		
	$.ajax({
		url: "/product/insertLike",
		data: {
			"pid" : pid,
			"mid" : mid
		}
	}).done(function (data) {
		console.log("insert" + data.result);
		if (data.result === 1) {
			alert("위시리스트에 추가되었습니다.");
			let id = "wish_"+pid;
			console.log(id);
			console.log("+");
			let test = $('#'+ id).html();			
			console.log(test);
			$('#'+ id).addClass('on');
			let count = parseInt($("#wishlistCount").html());
			let countP = count + 1;
			console.log("위시 갯수: " + countP);
			$("#wishlistCount").html(countP);
			
		} else {
			deleteLike(pid, mid);
		}
	});	 			
}

function deleteLike(pid, mid) {
	
	console.log("삭제 수행");
 	console.log(pid);
	console.log(mid); 
		
	$.ajax({
		url: "/product/deleteLike",
		data: {
			"pid" : pid,
			"mid" : mid
		}
	}).done(function (data) {
		console.log("delete" +data.result);
		if (data.result === 1) {
			alert("위시리스트에서 삭제 되었습니다.");
			let id = "wish_"+pid;
			console.log(id);
			console.log("-");
			let test = $('#'+ id).html();			
			console.log(test);
			$('#'+ id).removeClass('on');
			let count = parseInt($("#wishlistCount").html());
			let countP = count - 1;
			console.log("위시 갯수: " + countP);
			$("#wishlistCount").html(countP);
		} else {
			alert("오류 발생.");
		}
	});	 			
}
</script>
</div>
<%@ include file="/WEB-INF/views/common/footer.jsp"%>