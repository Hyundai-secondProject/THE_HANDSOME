<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp"%>
<link rel="stylesheet" type="text/css"
	href="/resources/css/contents.css" media="all" />
<link rel="stylesheet" type="text/css" href="/resources/css/product.css"
	media="all" />
<link rel="stylesheet" type="text/css"
	href="/resources/css/products.css" media="all" />
<div id="bodyWrap">
	<h3 class="cnts_title">
		<span id="menuTitle">위시리스트</span>
	</h3>
	<div class="sub_container">
		<!-- lnb -->
		<div class="lnb_wrap">
			<h4>
				<a href="/ko/mypage">마이페이지 <!-- 마이페이지 --></a>
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
						<a href="/ko/mypage/voucher"
							onclick="GA_Event('마이페이지','LNB','나의 쿠폰');">나의 쿠폰 <!-- 쿠폰함 --></a>
					</dd>
				</dl>
				<dl>
					<dt>나의 상품관리</dt>
					<dd>
						<a href="/ko/mypage/myWish"
							onclick="GA_Event('마이페이지','LNB','위시리스트');">위시리스트 <!-- 위시리스트 --></a>
					</dd>
					<dd>
						<a href="/ko/mypage/rsalarm"
							onclick="GA_Event('마이페이지','LNB','재입고 알림');">재입고 알림 <!-- 재입고알림 --></a>
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


			<script type="text/javascript">
                    //<![CDATA[ 
                    var chooseDelFlag = false;
                    var cartQuantity = {};
                    var qtyLimitProductYnMap = {};
                    $(document).ready(function () {
                                //#2610 [주문] 가상계좌 결제수단 제외 및 중복 구매 제한 처리 요청 건 20220215 hyunbae

                                cartQuantity["TH2CAWJM336M_BK_100"] = 2;


                                $('.tblwrap').on('click', 'input:checkbox', function () {
                                    if ($(this).attr('name') == 'allcheck') { // 전체선택시
                                        var isChecked = $(this).is(":checked");
                                        if (isChecked) {
                                            GA_Event('위시리스트', '선택', '전체선택');
                                        } else {
                                            GA_Event('위시리스트', '선택', '전체해제');
                                        }
                                    } else if ($(this).attr('name') == 'checkpd') { // 개별 선택시
                                        var isChecked = $(this).is(":checked");
                                        var label = $(this).parent().next().find('.sb_tlt').text();
                                        var selYN = "";
                                        if (isChecked) {
                                            selYN = "선택_";
                                        } else {
                                            selYN = "해제_";
                                        }
                                        GA_Event('위시리스트', '선택', selYN + label);
                                    }
                                });

                                $('.paging').on('click', 'a', function () {
                                    var label;
                                    if ($(this).attr('pagenum')) {
                                        label = $(this).attr('pagenum');
                                    } else {
                                        label = $(this).attr('class').toUpperCase();
                                    }
                                    GA_Event('위시리스트', '페이지', label);
                                });

                                /* 글로벌 원화 단위 변경_20200325
                                   use exchangePrice(price)
                                */
                                // 국문일 때
                                function exchangePrice(productPrice) {
                                    return "￦" + addComma(productPrice);
                                }


                                function getUrlParameter() { // hash 가져오기
                                    var hash = document.location.hash.split("#")[1];
                                    if (typeof hash === "undefined") hash = 1;
                                    return hash;
                                };

                                function updateURL(pageNum) { // hash 변경
                                    var hashYn = "#";
                                    if (document.location.hash.indexOf("#") > -1) hashYn = "";
                                    document.location.hash = hashYn + pageNum;
                                }

                                $("#menuTitle").text("위시리스트");

                                var normalPoint = "";
                                var outletPoint = "";
                                var reservePoint = 3;
                                var isEasyMember = $('#isEasyMember').val();

                                if (normalPoint != null) {
                                    normalPoint = Math.floor($('#normalPoint').val());
                                }

                                if (outletPoint != null) {
                                    outletPoint = Math.floor($('#outletPoint').val());
                                }

                                var wishList = new BoardListController('wishListForm', '#listBody', '.paging', 20);

                                wishList.PARAMS.pageNum = getUrlParameter(); // 페이지 초기 로딩 시 hash 값을 page number로 세팅

                                wishList.setRowHtml = function (results) {

                                    updateURL(wishList.PARAMS.pageNum); // page number를 hash로 세팅
                                    var hash = getUrlParameter();
                                    wishList.PARAMS.pageNum = hash; // hash 값을 page number로 세팅


                                    var rows = "";

                                    if (results.length == 0) {
                                        var listTag = "<tr>";
                                        listTag += '<td colspan="5" class="no_data">';
                                        listTag += "위시리스트에 저장된 상품이 없습니다.";
                                        listTag += "</td>";
                                        listTag += "</tr>";

                                        rows += listTag;
                                    } else {
                                        window.sessionStorage.setItem('ecommerceDataList', JSON.stringify(results));
                                        $.each(results, function (index) {


                                                //#2610 [주문] 가상계좌 결제수단 제외 및 중복 구매 제한 처리 요청 건 20220215 hyunbae
                                                qtyLimitProductYnMap[this.productCode] = this.qtyLimitProductYn;


                                                var listTag = '<tr>';
                                                listTag +=
                                                    '	<td class="frt"><input type="checkbox" title="선택" value="' +
                                                    this.wishCode + '" name="checkpd" data-value="' + this
                                                    .productCode + '"/></td>';
                                                listTag += '	<td class="pt_list_wrap">';
                                                listTag += '		<div class="pt_list_all">';
                                                listTag += '           <a href="/ko/p/' + this.productCode +
                                                    '" onclick=\"javascript:setEcommerceData(\'' + index +
                                                    '\',\'Click\');GA_Event(\'위시리스트\', \'상품\', \'' + this
                                                    .productName.replace(/(<([^>]+)>)/ig, '') +
                                                    '\');" ><img src="' + this.productImage +
                                                    '" alt="상품 이미지" /></a>';
                                                listTag += '           <div class="tlt_wrap">';
                                                listTag += '               <a href="/ko/p/' + this.productCode +
                                                    '" class="basket_tlt" onclick=\"javascript:setEcommerceData(\'' +
                                                    index + '\',\'Click\');GA_Event(\'위시리스트\', \'상품\', \'' +
                                                    this.productName.replace(/(<([^>]+)>)/ig, '') + '\');">';

                                                if (this.brandName != null) {
                                                    listTag += '					<span class="tlt">' + this.brandName +
                                                        '</span>';
                                                } else {
                                                    listTag += '					<span class="tlt"></span>';
                                                }

                                                if (this.productName != null) {
                                                    listTag += '					<span class="sb_tlt">';
                                                    // 					if(this.reserveProdYn == true) listTag += '<span class="reserveProdNmParent"><strong>[예약판매]</strong> </span>';
                                                    listTag += this.productName;
                                                    listTag += '                   </span>';
                                                } else {
                                                    listTag += '					<span class="sb_tlt"></span>';
                                                }
                                                listTag += '				</a>';
                                                listTag += '			</div>';
                                                listTag += '		</div>';
                                                listTag += '	</td>';
                                                listTag += '	<td class="al_middle">';
                                                listTag += '		<div class="price_wrap">';

                                                if (this.carryingForward == 'NORMAL') {
                                                    if (this.productNormalPrice == this.productPrice) {
                                                        listTag += '			<span> ' + exchangePrice(this
                                                            .productPrice) + ' </span>';
                                                    } else {
                                                        listTag += '			<del> ' + exchangePrice(this
                                                            .productNormalPrice) + '</del>';
                                                        listTag += '			<span>  ' + exchangePrice(this
                                                            .productPrice) + ' </span>';
                                                    }
                                                } else {
                                                    var v_productCode = this.productCode;
                                                    var v_styleProductCode = this.styleProductCode;
                                                    var checkNewBrand = true; <
                                                    !--(오브제(5 W), 클럽모나코(MM, MF) 일때, 신품번만 세일가격 노출여부 판별(
                                                            3 번째 자리가 숫자) -- >
                                                        if (v_productCode.indexOf('5W') == 0 || v_productCode
                                                            .indexOf('MM') == 0 || v_productCode.indexOf(
                                                            'MF') == 0) {
                                                            if (v_productCode.indexOf('0') == 2 || v_productCode
                                                                .indexOf('1') == 2 || v_productCode.indexOf(
                                                                '2') == 2 || v_productCode.indexOf('3') == 2 ||
                                                                v_productCode.indexOf('4') == 2 || v_productCode
                                                                .indexOf('5') == 2 || v_productCode.indexOf(
                                                                '6') == 2 || v_productCode.indexOf('7') == 2 ||
                                                                v_productCode.indexOf('8') == 2 || v_productCode
                                                                .indexOf('9') == 2) {
                                                                checkNewBrand = true;
                                                            } else {
                                                                checkNewBrand = false;
                                                            }
                                                        } else {
                                                            checkNewBrand = true;
                                                        }

                                                        var checkViewDel = false;

                                                        if (checkNewBrand && v_styleProductCode.toLowerCase()
                                                            .indexOf('a_') == -1 &&
                                                            v_styleProductCode.toLowerCase().indexOf('a0_') == -
                                                            1 &&
                                                            v_styleProductCode.toLowerCase().indexOf('a1_') == -
                                                            1 &&
                                                            v_styleProductCode.toLowerCase().indexOf('a2_') == -
                                                            1 &&
                                                            v_styleProductCode.toLowerCase().indexOf('a3_') == -
                                                            1 &&
                                                            v_styleProductCode.toLowerCase().indexOf('a4_') == -
                                                            1 &&
                                                            v_styleProductCode.toLowerCase().indexOf('a5_') == -
                                                            1 &&
                                                            v_styleProductCode.toLowerCase().indexOf('a6_') == -
                                                            1 &&
                                                            v_styleProductCode.toLowerCase().indexOf('a7_') == -
                                                            1 &&
                                                            v_styleProductCode.toLowerCase().indexOf('a8_') == -
                                                            1 &&
                                                            v_styleProductCode.toLowerCase().indexOf('a9_') == -
                                                            1 &&
                                                            v_styleProductCode.toLowerCase().indexOf('b_') == -
                                                            1 &&
                                                            v_styleProductCode.toLowerCase().indexOf('b0_') == -
                                                            1 &&
                                                            v_styleProductCode.toLowerCase().indexOf('b1_') == -
                                                            1 &&
                                                            v_styleProductCode.toLowerCase().indexOf('b2_') == -
                                                            1 &&
                                                            v_styleProductCode.toLowerCase().indexOf('b3_') == -
                                                            1 &&
                                                            v_styleProductCode.toLowerCase().indexOf('b4_') == -
                                                            1 &&
                                                            v_styleProductCode.toLowerCase().indexOf('b5_') == -
                                                            1 &&
                                                            v_styleProductCode.toLowerCase().indexOf('b6_') == -
                                                            1 &&
                                                            v_styleProductCode.toLowerCase().indexOf('b7_') == -
                                                            1 &&
                                                            v_styleProductCode.toLowerCase().indexOf('b8_') == -
                                                            1 &&
                                                            v_styleProductCode.toLowerCase().indexOf('b9_') == -
                                                            1 &&
                                                            v_styleProductCode.toLowerCase().indexOf('c_') == -
                                                            1 &&
                                                            v_styleProductCode.toLowerCase().indexOf('c0_') == -
                                                            1 &&
                                                            v_styleProductCode.toLowerCase().indexOf('c1_') == -
                                                            1 &&
                                                            v_styleProductCode.toLowerCase().indexOf('c2_') == -
                                                            1 &&
                                                            v_styleProductCode.toLowerCase().indexOf('c3_') == -
                                                            1 &&
                                                            v_styleProductCode.toLowerCase().indexOf('c4_') == -
                                                            1 &&
                                                            v_styleProductCode.toLowerCase().indexOf('c5_') == -
                                                            1 &&
                                                            v_styleProductCode.toLowerCase().indexOf('c6_') == -
                                                            1 &&
                                                            v_styleProductCode.toLowerCase().indexOf('c7_') == -
                                                            1 &&
                                                            v_styleProductCode.toLowerCase().indexOf('c8_') == -
                                                            1 &&
                                                            v_styleProductCode.toLowerCase().indexOf('c9_') == -
                                                            1 &&
                                                            v_styleProductCode.toLowerCase().indexOf('d_') == -
                                                            1 &&
                                                            v_styleProductCode.toLowerCase().indexOf('d0_') == -
                                                            1 &&
                                                            v_styleProductCode.toLowerCase().indexOf('d1_') == -
                                                            1 &&
                                                            v_styleProductCode.toLowerCase().indexOf('d2_') == -
                                                            1 &&
                                                            v_styleProductCode.toLowerCase().indexOf('d3_') == -
                                                            1 &&
                                                            v_styleProductCode.toLowerCase().indexOf('d4_') == -
                                                            1 &&
                                                            v_styleProductCode.toLowerCase().indexOf('d5_') == -
                                                            1 &&
                                                            v_styleProductCode.toLowerCase().indexOf('d6_') == -
                                                            1 &&
                                                            v_styleProductCode.toLowerCase().indexOf('d7_') == -
                                                            1 &&
                                                            v_styleProductCode.toLowerCase().indexOf('d8_') == -
                                                            1 &&
                                                            v_styleProductCode.toLowerCase().indexOf('d9_') == -
                                                            1) {
                                                            if (this.productNormalPrice != undefined && this
                                                                .productNormalPrice > this.productPrice) {
                                                                listTag += '			<del> ' + exchangePrice(this
                                                                    .productNormalPrice) + '</del>';
                                                            }

                                                            checkViewDel = true;
                                                        }

                                                        if (!checkNewBrand && v_styleProductCode.toLowerCase()
                                                            .indexOf('5WM') == 0) {
                                                            if (this.productNormalPrice != undefined && this
                                                                .productNormalPrice > this.productPrice) {
                                                                listTag += '			<del> ' + exchangePrice(this
                                                                    .productNormalPrice) + '</del>';
                                                            }
                                                        }

                                                        if (v_styleProductCode.toLowerCase().indexOf('CM') ==
                                                            0 && v_styleProductCode.toLowerCase().indexOf(
                                                            'C_') > 0) {
                                                            if (this.productNormalPrice != undefined && this
                                                                .productNormalPrice > this.productPrice) {
                                                                listTag += '			<del> ' + exchangePrice(this
                                                                    .productNormalPrice) + '</del>';
                                                            }
                                                        }


                                                        // 수입브랜드는 재작업 없음 무조건 삭선 노출 (톰그레이하운드, MUE, 폼스튜디오, 폼맨즈라운지, 폼더스토어, 클럽모나코, 캐시미어띵즈FL)
                                                        if (!checkViewDel) {
                                                            if (this.brandCode == 'BR15' || this.brandCode ==
                                                                'BR16' || this.brandCode == 'BR30' ||
                                                                this.brandCode == 'BR32' || this.brandCode ==
                                                                'BR35' || this.brandCode == 'BR44' ||
                                                                v_styleProductCode.toLowerCase().indexOf(
                                                                'FL') == 0) {

                                                                if (this.productNormalPrice != undefined && this
                                                                    .productNormalPrice > this.productPrice) {
                                                                    listTag += '			<del> ' + exchangePrice(this
                                                                        .productNormalPrice) + '</del>';
                                                                }
                                                            }
                                                        }

                                                        listTag += '			<span>  ' + exchangePrice(this
                                                            .productPrice) + ' </span>';

                                                    }

                                                    listTag += '		</div>';
                                                    listTag += '	</td>';

                                                    if (true) {
                                                        listTag += '	<td class="al_middle">';
                                                        if (isEasyMember != "true" && isEasyMember !=
                                                            true) { //간편회원 아닐경우

                                                            if (this.carryingForward == 'NORMAL') {
                                                                if (this.reserveProdYn == true && "Y" == "Y") {
                                                                    listTag += '   <span class="earn">' + this
                                                                        .productData.accumulationRate +
                                                                        ' %</span>';
                                                                } else {
                                                                    listTag += '   <span class="earn">' + this
                                                                        .productData.accumulationRate +
                                                                        ' %</span>';
                                                                }
                                                            } else {
                                                                if (this.reserveProdYn == true && "Y" == "Y") {
                                                                    listTag += '   <span class="earn">' + this
                                                                        .productData.accumulationRate +
                                                                        ' %</span>';
                                                                } else {
                                                                    listTag += '   <span class="earn">' + this
                                                                        .productData.accumulationRate +
                                                                        ' %</span>';
                                                                }
                                                            }
                                                        } else {
                                                            listTag += '   <span class="earn">0 %</span>';
                                                        }


                                                        listTag += '	</td>';
                                                    }

                                                    listTag += '	<td class="al_middle">';
                                                    listTag += '		<div class="btn_wrap">';
                                                    listTag +=
                                                        '			<a href="javascript:void(0)" class="btn wt_ss add_bag parent_add_bag" product="' +
                                                        this.productPk + '" index="' + index +
                                                        '"productcode="' + this.productCode + '" ';
                                                    listTag +=
                                                        '               onclick=\'GA_Event(\"위시리스트\", \"쇼핑백담기\", \"' +
                                                        this.productName.replace(/(<([^>]+)>)/ig, '') +
                                                        '\");\' >쇼핑백담기<!-- 쇼핑백담기 --></a>';
                                                    listTag +=
                                                        '			<a href="javascript:void(0)" class="btn wt_ss wishDel" wishcode="' +
                                                        this.wishCode + '" ';
                                                    listTag +=
                                                        '               onclick=\'GA_Event(\"위시리스트\", \"삭제\", \"' +
                                                        this.productName.replace(/(<([^>]+)>)/ig, '') +
                                                        '\");\' data-value="' + this.productCode +
                                                        '" >삭제<!-- 삭제 --></a>';
                                                    listTag += '		</div>';
                                                    listTag += '	</td>';
                                                    listTag += '</tr>';

                                                    listTag += '<tr class="hid">';
                                                    listTag += '	<td colspan="5" class="basket_wrap">';
                                                    listTag += '		<div class="basket_info" id="cart' + index +
                                                        '">';
                                                    listTag += '		<span class="btn_arr">위치아이콘</span>';
                                                    listTag += '			<div class="info">';
                                                    listTag += '				<div class="pt_list" id="pt_list_' + index +
                                                        '">';
                                                    // 				listTag +=	'					<a href="javascript:void(0);"><img src="'+ this.productImage +'" alt="상품 이미지" /></a>';	
                                                    // 				listTag +=	'					<div class="tlt_wrap">';	
                                                    // 				listTag +=	'						<a href="javascript:void(0);" class="basket_tlt">';	
                                                    // 				listTag +=	'							<span class="tlt">' + this.brandName + '</span>';	
                                                    // 				listTag +=	'							<span class="sb_tlt"> ' + this.productName + ' </span>';	
                                                    // 				listTag +=	'						</a>';	
                                                    // 				listTag +=	'						<dl class="cs_wrap">';
                                                    // 				listTag +=	'						</dl>';	
                                                    // 				listTag +=	'					</div>';	
                                                    listTag += '				</div>';
                                                    listTag += '				<div class="btns">';
                                                    listTag +=
                                                        '					<a href="javascript:void(0)" class="btn wt_ss bag" id=addToCart_' +
                                                        index + '>쇼핑백담기<!-- 쇼핑백담기 --></a>';
                                                    listTag +=
                                                        '					<a href="javascript:void(0)" class="btn wt_ss mt10 bag" id=cancle_' +
                                                        index + '>취소<!-- 취소 --></a>';
                                                    listTag +=
                                                        '					<a href="javascript:void(0)" class="btn_close bag" id=close_' +
                                                        index + '>닫기<!-- 닫기 --></a>';
                                                    listTag += '				</div>';
                                                    listTag += '			</div>';
                                                    listTag += '		</div>';
                                                    listTag += '	</td>';
                                                    listTag += '</tr>';

                                                    rows += listTag;
                                                });
                                        }
                                        return rows;

                                    };



                                    wishList.afterSetAction = function () {

                                        $('.add_bag').on('click', function () {
                                            var idx = $(this).attr('index');
                                            var status = $('.basket_info').css("display");
                                            var reserveProdNm = $(this).parents("tr").find(
                                                ".reserveProdNmParent").html();

                                            $('#cart' + idx).show();

                                            var paramDatas = 'productCode=' + $(this).attr(
                                                'productCode') + '&index=' + $(this).attr('index');

                                            $.ajax({
                                                type: "get",
                                                url: "/ko/mypage/wishlistaddcart",
                                                data: paramDatas,
                                                dataType: "json",
                                                error: function (request, status, error) {

                                                    alert("error:" + error);
                                                },
                                                success: function (result) {

                                                    $('#pt_list_' + idx).html(result
                                                        .shoppingbagOptions);
                                                    addreservenm(reserveProdNm, idx);
                                                    var defaultSize;
                                                    var findClass;
                                                    var length = $('#pt_list_' + idx).find(
                                                        ".cl_select").find("a").length;
                                                    for (var i = 0; i <= length; i++) {
                                                        var defaultProduct = $(
                                                                '#addToCartForm' + idx)
                                                            .find(
                                                                'input[name=productCodePost]'
                                                                ).val();
                                                        defaultSize = $('#pt_list_' + idx)
                                                            .find('.sz_select').find(
                                                                'a:eq(' + i + ')').html();
                                                        findClass = $('#pt_list_' + idx)
                                                            .find('.sz_select').find(
                                                                'a:eq(' + i + ')').attr(
                                                                'class');

                                                        if (defaultSize != undefined &&
                                                            findClass != "not_stock") {
                                                            $('#addToCartForm' + idx).find(
                                                                'input[name=productCodePost]'
                                                                ).val(defaultProduct +
                                                                "_" + defaultSize);
                                                            $('#addToCartForm' + idx).find(
                                                                'input[name=productCodeType]'
                                                                ).val(
                                                                "ApparelSizeVariantProduct"
                                                                );
                                                            $('#pt_list_' + idx).find(
                                                                '.sz_select').find(
                                                                'a:eq(' + i + ')').attr(
                                                                'class', 'on');
                                                            wishlistProductStock($(
                                                                '#addToCartForm' +
                                                                idx).find(
                                                                'input[name=productCodePost]'
                                                                ).val(), idx);
                                                            return;
                                                        }
                                                    }
                                                }
                                            });

                                        });



                                        $('.chooseDel').on('click', function () {
                                            chooseDelFlag = true;
                                            var checkVal = $('input:checkbox[name="checkpd"]:checked')
                                                .val();

                                            if (checkVal == undefined) {
                                                layerAlert("선택된 상품이 없습니다. <br /> 삭제할 상품을 선택해 주세요.");
                                            } else {
                                                var array = [];
                                                $("input:checkbox[name='checkpd']").each(function () {
                                                    if (this.checked) {
                                                        array.push(this.value);
                                                    }

                                                });

                                                var lc = new layerConfirm("해당 상품을 위시리스트에서 삭제하시겠습니까?",
                                                    '확인', '취소'); // 확인, 취소

                                                lc.confirmAction = function () {
                                                    myWishDelete(array, "");
                                                };
                                            }

                                            GA_Event('위시리스트', '선택', '선택삭제');
                                        });

                                        $('.wishDel').on('click', function () {
                                            var wishcode = $(this).attr('wishcode');
                                            var prodCd = $(this).attr('data-value');
                                            var lc = new layerConfirm("해당 상품을 위시리스트에서 삭제하시겠습니까?", '확인',
                                                '취소');

                                            lc.confirmAction = function () {
                                                myWishDelete(wishcode, prodCd);
                                            };
                                        });

                                        $('.bag').on('click', function () {
                                            var prodid = $(this).attr('id').split("_");

                                            if (prodid[0] == 'close') {
                                                $('#cart' + prodid[1]).hide();
                                            }

                                            if (prodid[0] == 'cancle') {
                                                $('#cart' + prodid[1]).hide();
                                            }

                                            if (prodid[0] == 'addToCart') {
                                                addToCart(prodid[1]);
                                            }

                                        });

                                    };

                                    wishList.doWork();

                                    var myWishDelete = function (wishcode, prodCd) {

                                        $.ajax({
                                            type: "get",
                                            url: "/ko/mypage/deleteWish?wishcode=" + wishcode,
                                            dataType: "json",
                                            error: function (request, status, error) {

                                                alert("error:" + error);
                                            },
                                            success: function (result) {

                                                var itemCnt = ($("#listBody").children().length) /
                                                2; //현재 화면의 상품 갯수
                                                var pageNum = getUrlParameter();
                                                if (chooseDelFlag) { // 선택삭제
                                                    var checked = $('input[name="checkpd"]').filter(
                                                        ':checked').length; //체크한 상품 갯수
                                                    if (itemCnt == checked && Number(pageNum) > 1)
                                                        updateURL(pageNum -
                                                        1); // 삭제 시점에 2페이지 이상이고 노출 상품이 1개면 삭제 후 한 페이지 전의 목록 호출
                                                } else { // 단일삭제
                                                    if (itemCnt == 1 && Number(pageNum) > 1)
                                                        updateURL(pageNum -
                                                        1); // 삭제 시점에 2페이지 이상이고 노출 상품이 1개면 삭제 후 한 페이지 전의 목록 호출
                                                }


                                                if (result == "SUCCESS") {
                                                    var lc = new layerAlert("삭제가 완료 되었습니다.");
                                                    lc.confirmAction = function () {
                                                        location.reload();
                                                        //location.href="/ko/mypage/myWish#"+pageNum;
                                                    };
                                                } else {
                                                    layerAlert("삭제를 실패하였습니다.");
                                                }
                                            }
                                        });
                                    };

                                });

                            function setOptions(obj, index, productCode, type) {
                                $(obj).addClass("on");
                                $(obj).siblings("a").removeClass("on");
                                var reserveProdNm = $(obj).parents(".tlt_wrap").find(".basket_tlt").find(
                                    ".reserveProdNmChild").html();

                                $(obj).parents(".tlt_wrap").find(".sz_select").find('a').each(function () {
                                    if ($(this).hasClass("on")) {
                                        $('#addToCartForm' + index).find('input[name=productCodePost]').val($(
                                            this).attr("id"));
                                    }
                                });

                                var paramDatas = 'productCode=' + productCode + '&index=' + index + '&type=' + type;
                                if (type == "style") {
                                    $.ajax({
                                        type: "GET",
                                        url: "/ko/mypage/wishlistaddcart",
                                        dataType: "json",
                                        data: paramDatas,
                                        success: function (result) {
                                            $('#pt_list_' + index).html(result.shoppingbagOptions);
                                            addreservenm(reserveProdNm, index);

                                            $("#pt_list_" + index + " .sz_select a").each(function () {
                                                if ($(this).hasClass("on")) {
                                                    wishlistProductStock(productCode + "_" + $(this)
                                                        .html(), index);
                                                }
                                            });
                                        },
                                        error: function (xhr, Status, error) {
                                            alert('sendRequest error : ' + xhr.status + " ( " + error +
                                                " ) ");
                                        }
                                    });
                                } else {
                                    wishlistProductStock(productCode, index);
                                }
                            }

                            function wishlistProductStock(productCode, index) {
                                var paramDatas = 'productCode=' + productCode;

                                $.ajax({
                                    type: "GET",
                                    url: "/ko/mypage/wishlistProductStock",
                                    data: paramDatas,
                                    success: function (result) {
                                        if (result.reserve != "" && result.reserve != null) {
                                            var totalStock = 0;
                                            for (var i = 0; i < result.reserve.length; i++) {
                                                if (totalStock < Number(result.reserve[i]
                                                        .reserveSalesStockpile)) {
                                                    totalStock = Number(result.reserve[i]
                                                        .reserveSalesStockpile);
                                                }
                                            }
                                            $("#stockCnt" + index).val(totalStock);
                                        } else {
                                            try {
                                                var stock = result.stock;
                                                $("#stockCnt" + index).val(stock);
                                            } catch (e) {}

                                        }
                                    },
                                    error: function (xhr, Status, error) {
                                        alert('sendRequest error : ' + xhr.status + " ( " + error + " ) ");
                                    }
                                });
                            }

                            //예약상품 쇼핑백담기 버튼 선택 시 옵션의 상품명 앞에도 [예약상품] 노출
                            function addreservenm(reserveProdNm, idx) {
                                $('#pt_list_' + idx).find(".reserveProdNmChild").html(reserveProdNm);
                            }

                            function addToCart(index) {
                                var form = $('#addToCartForm' + index);
                                var qty = $("#quantity" + index).val();
                                form.find('input[name=qty]').val(qty);
                                var stock = $("#stockCnt" + index).val();

                                var productCode = form.find('input[name=productCodePost]').val();
                                var quantity = form.find('input[name=qty]').val();
                                var size = form.find('input[name=productCodeType]').val();

                                var chkPromotion = $("#promotionProduct" + index).val();

                                //--> 매장픽업전용상품은 상품상세페이지로 이동하라는 문구 출력.
                                var onlyStorePickup = form.find('input[name=onlyStorePickup]').val();
                                if (onlyStorePickup == "true" && 'ko' == 'ko') {
                                    layerAlert(
                                        '매장수령 전용 상품입니다. <br />리스트의 제품 사진을 클릭하여, 상품 상세화면으로 이동해주세요. 수령을 원하는 매장을 상품상세페이지에서 지정 후, 구매 가능합니다.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'
                                        );
                                    return;
                                }
                                //-->

                                if (size != 'ApparelSizeVariantProduct') {
                                    layerAlert('컬러 및 사이즈를 선택해 주세요.');
                                    return;
                                }

                                if (parseInt(quantity) < 1) {
                                    layerAlert('productdetail.basket.errormag.qty');
                                    return;
                                }

                                if (parseInt(stock) < 1) {
                                    layerAlert('해당사이즈는 품절입니다.');
                                    return;
                                }

                                //#2610 [주문] 가상계좌 결제수단 제외 및 중복 구매 제한 처리 요청 건 20220215 hyunbae
                                var cartQty = cartQuantity[productCode];
                                var isqtyLimitProduct = qtyLimitProductYnMap[productCode.split('_')[0]];
                                if (cartQty && isqtyLimitProduct) {
                                    if (parseInt(quantity) + parseInt(cartQty) > 2) {
                                        if (parseInt(cartQty) == 1 || parseInt(cartQty) > 2) {
                                            layerAlert('이미 쇼핑백에 ' + cartQty +
                                                '개가 담겨있습니다.<br/>수량을 다시 선택해주시기 바랍니다.<br/><p style="color:gray; font-size:14px; margin-top:8px;">(동일 상품은 최대 2개까지 구매 가능)</p>'
                                                );
                                            return;
                                        } else if (parseInt(cartQty) == 2) {
                                            layerAlert('구매 가능한 수량 ' + cartQty +
                                                '개가<br/>이미 쇼핑백에 담겨있습니다.<br/><p style="color:gray; font-size:14px; margin-top:8px;">(동일 상품은 최대 2개까지 구매 가능)</p>'
                                                );
                                            return;
                                        }
                                    }
                                }


                                //프로모션 상품 체크
                                if (chkPromotion == "true" || chkPromotion == true) {
                                    $.ajax({
                                        url: '/ko/mypage/checkCartProduct',
                                        type: "GET",
                                        data: {
                                            productCode: productCode
                                        },
                                        async: false,
                                        success: function (data) {
                                            if (data) { //기존 cart에 존재하면
                                                var la = new layerAlert(
                                                '동일 옵션(컬러/사이즈)으로 최대 1개 구매 가능합니다.'); //"이미 프로모션 상품이 담겨있습니다."
                                                return;
                                            } else {
                                                addtoCartProcessFunction(index); //기존로직
                                            }
                                        },
                                        error: function (xhr, Status, error) {
                                            //
                                        }
                                    });

                                } else {
                                    addtoCartProcessFunction(index); //기존로직
                                }
                            }

                            function addtoCartProcessFunction(index) {
                                var form = $('#addToCartForm' + index);
                                var qty = $("#quantity" + index).val();
                                form.find('input[name=qty]').val(qty);
                                var stock = $("#stockCnt" + index).val();

                                var productCode = form.find('input[name=productCodePost]').val();
                                var quantity = form.find('input[name=qty]').val();
                                var size = form.find('input[name=productCodeType]').val();


                                $.ajax({
                                    url: "/ko/shoppingbag/add?" + getCSRFToken(),
                                    type: "POST",
                                    data: form.serialize(),
                                    success: function (msg) {
                                        var errorMsg = msg;
                                        if (errorMsg == null || errorMsg == '') {
                                            setEcommerceData(index, "Add To Cart");
                                            var lc = new layerConfirm("쇼핑백에 담겼습니다.<br />확인하시겠습니까?",
                                                "쇼핑백 바로가기", "취소");

                                            lc.confirmAction = function () {
                                                $(".btn_close").trigger("click");
                                                window.location.href = "/ko/shoppingbag";
                                            };
                                            lc.cancelAction = function () {
                                                window.location.reload();
                                            }
                                        } else {
                                            var la = new layerAlert(errorMsg);
                                            la.confirmAction = function () {
                                                return;
                                            };
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

                            function leftClick(index) {
                                var qty = $('#quantity' + index);

                                if (qty.val() == 1) {
                                    return;
                                }
                                qty.val(Number(qty.val()) - 1);
                            };

                            function rightClick(index) {

                                var qty = $('#quantity' + index);
                                var productCode = $('#addToCartForm' + index).find('[name=productCodePost]')


                                if (parseInt(qty.val()) >= parseInt($("#stockCnt" + index).val())) {
                                    layerAlert('재고가 부족합니다.');
                                    return;
                                }

                                //#2610 [주문] 가상계좌 결제수단 제외 및 중복 구매 제한 처리 요청 건 20220215 hyunbae
                                var baseProductCode = productCode.val().split('_')[0];
                                var isQtyLimitProduct = qtyLimitProductYnMap[baseProductCode];
                                if (isQtyLimitProduct && parseInt(qty.val()) + 1 > 2) {
                                    layerAlert('동일 상품(사이즈/컬러)은<br/>최대 2개까지 선택 가능합니다.');
                                    return;
                                }

                                qty.val(Number(qty.val()) + 1);
                            };

                            function promotionProduct() {
                                var la = new layerAlert('동일 옵션(컬러/사이즈)으로 최대 1개 구매 가능합니다.');
                            }

                            function getCSRFToken() {
                                return "CSRFToken=" + $("#CSRFForm [name='CSRFToken']").first().val();
                            }

                            function setEcommerceData(idx, action) {
                                var prodList = JSON.parse(window.sessionStorage.getItem('ecommerceDataList'));

                                if (prodList != null) {
                                    if (prodList.length > 0) {
                                        var prodInfo = prodList[idx];

                                        /* 위시리스트에서 쇼핑백담기 한 상품코드 */
                                        var form = $('#addToCartForm' + idx);
                                        var productCode = form.find('input[name=productCodePost]').val();

                                        /* 상품 정상이월세일 */
                                        var dimension19_1 = "정상상품";
                                        var dimension19_2 = "정상가";

                                        if (prodInfo.carryingForward != 'NORMAL') {
                                            dimension19_1 = "이월상품";
                                        }

                                        if (prodInfo.productNormalPrice != prodInfo.productPrice) {
                                            dimension19_2 = "세일가";
                                        }

                                        /* 상품 카테고리url */
                                        var categoryUrl = prodInfo.productData.categories[0].url;
                                        var categories = categoryUrl.split("/").slice(2, 5);
                                        var category = "";
                                        if (categories.length > 0) {
                                            $.each(categories, function (i) {
                                                category += decodeURIComponent(categories[i]);
                                                if (i != categories.length - 1) {
                                                    category += "/";
                                                }
                                            });
                                        }

                                        if (action == "Add To Cart") {
                                            dataLayer.push({
                                                'event': 'ga_event',
                                                'layerCategory': 'Ecommerce',
                                                'layerAction': 'Add To Cart',
                                                'layerLabel': undefined,
                                                'ecommerce': {
                                                    'currencyCode': 'KRW', //통화
                                                    'add': {
                                                        'products': [{
                                                            "id": productCode.indexOf("_") > -1 ?
                                                                productCode.split("_")[0] :
                                                                productCode, //상품코드
                                                            "name": prodInfo.productName, //상품명
                                                            "brand": prodInfo.brandName, //상품 브랜드
                                                            "category": category, //decoded (상품 카테고리)
                                                            "dimension19": dimension19_1 + "_" +
                                                                dimension19_2 //상품 정상이월세일
                                                        }]
                                                    }
                                                }
                                            });

                                        } else if (action == "Click") {
                                            dataLayer.push({
                                                'event': 'ga_event',
                                                'layerCategory': 'Ecommerce',
                                                'layerAction': 'Click',
                                                'layerLabel': undefined,
                                                'ecommerce': {
                                                    'currencyCode': 'KRW', //통화
                                                    'click': {
                                                        'actionField': {
                                                            'list': '마이하트_찜리스트'
                                                        }, //상품 리스트명
                                                        'products': [{
                                                            "id": prodInfo.productCode.indexOf("_") > -
                                                                1 ? prodInfo.productCode.split("_")[0] :
                                                                prodInfo.productCode, //상품코드
                                                            "name": prodInfo.productName, //상품명
                                                            "brand": prodInfo.brandName, //상품 브랜드
                                                            "category": category, //상품 카테고리

                                                            "position": 8 //상품 위치

                                                        }]
                                                    }
                                                }
                                            });
                                        }
                                        /* Ecommerce data 초기화
                                        dataLayer에 남아 있는 경우에는 전자상거래 단계만을 위해 사용하는
                                        필드들이 세팅되어 있으므로 undefined를 통해 초기화합니다. */
                                        dataLayer.push({
                                            'layerCategory': undefined,
                                            'layerAction': undefined,
                                            'nonInteraction': false,
                                            'ecommerce': undefined
                                        });
                                    }
                                }
                            }


                            //]]>
                </script>

			<input type="hidden" id="isEasyMember" value="true" /> <input
				type="hidden" id="normalPoint" value="5.0" /> <input type="hidden"
				id="outletPoint" value="1.0" />
			<div class="title_wrap mt30">
				<h4 class="float_left">
					위시리스트
					<!-- 위시리스트 -->
				</h4>
				<p class="txt_line">
					위시리스트에는 상품이 최대 200개 까지 저장 됩니다.
					<!-- 위시리스트에는 상품이 최대 200개 까지 저장 됩니다. -->
				</p>
			</div>
			<form id="wishListForm" action="/ko/mypage/myWishList"></form>
			<!-- Table -->
			<div class="tblwrap">
				<table class="tbl_ltype">
					<caption>Backet</caption>
					<colgroup>
						<col style="width: 10px" />
						<col />
						<col style="width: 105px" />
						<col style="width: 120px" />
						<col style="width: 110px" />
					</colgroup>
					<thead>
						<tr>
							<th scope="col"><input type="checkbox" title="선택" value=""
								name="allcheck" /></th>
							<th scope="col">상품정보 <!-- 상품정보 -->
							</th>
							<th scope="col">판매가 <!-- 판매가 -->
							</th>
							<th scope="col">한섬마일리지<br>적립율
							</th>
							<th scope="col">선택 <!-- 선택 -->
							</th>
						</tr>
					</thead>
					<tbody id="listBody">
					<!-- 위시리스트 내역 들어가는 곳 -->
					
					</tbody>
				</table>
			</div>
			<!-- //Table -->

			<!--  <p class="mt10 ml10">* 세일/가격인하/아울렛 일부 할인 상품은 한섬마일리지 적립이 불가합니다. 정확한 적립율은 쇼핑백과 상품상세페이지에서 확인하세요.</p>-->
			<p class="mt10 ml10">* 정확한 적립율은 상품상세페이지에서 확인하세요.</p>
			<div class="btn_btwrap">
				<a href="javascript:void(0);" class="btn wt_ss chooseDel" id="deleteChoose">선택삭제 <!-- 선택삭제 --></a>
			</div>
			<!-- paging -->
			<div class="paging">
			<!-- paging 처리!!!!!!!!!!!!!!!! -->
			</div>
			<!-- //paging -->

		</div>
		<!-- //cnts -->
	</div>
</div>

<script type="text/javascript">
        var fileIdx = 1;
        var reviewRate_en = "";
        var reviewSymbol_en = "";
        var reviewRate_zh = "";
        var reviewSymbol_zh = "";
        var isCosmetic = false;
        var isPerfume = false;

        $(document).ready(function () {

            getReviewExchangeRate();

            if ("false") {

                //파일 체크
                $(document).on('change', 'input[type=file]', function () {
                    var file = null;
                    var fileName = "";
                    var fileSize = "";
                    var maxSize = 10 * 1024 * 1024;

                    if ($.browser.msie) {
                        if ($(this).val() == null || $(this).val() == "") {
                            $("input[name=fileText]").val("");
                            return;
                        }
                        fileSize = 10;
                        fileName = $(this).val().split(".");
                    } else {

                        file = $(this)[0].files[0];
                        if (file == null) {
                            $("input[name=fileText]").val("");
                            return;
                        }

                        fileName = $(this)[0].files[0].name.split(".");
                        fileSize = $(this)[0].files[0].size;
                    }

                    var fileExtension = fileName[parseInt(fileName.length - 1)].toUpperCase();

                    if (fileExtension == 'JPG' || fileExtension == 'JPEG' || fileExtension == 'GIF' ||
                        fileExtension == 'PNG') {

                    } else {
                        $(this).val('');
                        $("input[name=fileText]").val('');
                        var la = new layerAlert('파일 확장자를 확인해 주세요.');
                        return;
                    }

                    if (fileSize > maxSize) {
                        $(this).val('');
                        $("input[name=fileText]").val('');
                        var la = new layerAlert('10MB 미만의 jpg,gif,png 파일만 첨부하실 수 있습니다.');
                        return;
                    }


                    if ($(this).attr("id").indexOf("reviewFile") > -1) {
                        var liLen = $('form[name=reviewForm] .file_image_wrap2003 li').length;

                        if (liLen < 5) {
                            var fileLen = $('form[name=reviewForm] input[type=file]').length;
                            var html = '';

                            html += '<input type="file" name="reviewFile" id="reviewFile' + fileIdx +
                                '" class="btn add_s" title="파일찾기">';
                            html += '<label for="reviewFile' + fileIdx + '">';
                            html += '<span id="uploadFile1" class="img_upload">파일찾기</span>';
                            html += '</label>';

                            $('form[name=reviewForm] .upload_btn label').eq(fileLen - 1).hide();
                            $('form[name=reviewForm] .upload_btn input[type=file]').eq(fileLen - 1)
                                .hide();
                            $("form[name=reviewForm] .upload_btn").append(html);

                            var html = '';

                            html += '<li class="file_image">';
                            html += '<span>' + $(this)[0].files[0].name + '</span>';
                            html +=
                                '<a href="javascript:void(0);" class="file_del" onclick="deleteReviewFile($(this),' +
                                fileIdx + ');">파일삭제</a>';
                            html += '</li>';
                            $("form[name=reviewForm] .file_image_wrap2003").append(html);

                            fileIdx++;
                        } else {
                            $(this).val("");
                            layerAlert("사진 등록은 5개까지 가능합니다.");
                        }
                    } else {
                        $("input[name=fileText]").val($(this).val());
                    }

                    $("#thFile").css("color", "black");
                    $("#thFile").css("font-weight", "normal");
                });

            }
        });

        function hideProductLayer() {
            $('.layerArea').remove();
        }

        function viewPopup(v) {
            var obj = $("#" + v.split("#")[1]);
            var lp = ($(window).width() - 740) / 2;
            var tp = $(window).scrollTop();

            if (lp < 0) lp = 0;
            if (tp < 0) tp = 0;

            obj.css("top", tp).css("left", lp).css("position", "absolute").css("z-index", 101);
            obj.show();

            return false;
        }

        function showProductLayer() {
            $("#productLayer").show();
        }

        function starCnt() { //상품평 별점 선택
            $('.btn_star_score li a').on('click', function () {
                var idx = $(this).parent('li').index() + 1;
                for (var i = 1; i < 6; i++) {
                    $('.write_star_score1807 .cmt_star .cmt_per').removeClass('star' + i);
                }
                $('.write_star_score1807 .cmt_star .cmt_per').addClass('star' + idx);
            });
        }

        function checkCategoryType(code) {

            if (isCosmetic) {
                return "cosmetic";
            } else if (isPerfume) {
                return "perfume";
            }

            var rtnValue = "";
            var topType = "SZ01,SZ02,SZ03,SZ04,SZ05,SZ06,SZ07,SZ08".split(",");
            var bottomsType = "SZ09,SZ10,SZ11".split(",");
            var loop = true;

            for (var i = 0; i < topType.length; i++) {
                if (code == topType[i]) {
                    rtnValue = "top";
                    loop = false;
                    break;
                }
            }

            if (loop) {
                for (var i = 0; i < bottomsType.length; i++) {
                    if (code == bottomsType[i]) {
                        rtnValue = "bottoms";
                        loop = false;
                        break;
                    }
                }
            }

            return rtnValue;
        }

        function reviewReset() {
            //색상 초기화
            $("#customerReviewWriteDiv .color_chip li > a").each(function () {
                $(this).removeClass("on");
            });
            $("#customerReviewWriteDiv #colorNameContent").html("");

            //사이즈 초기화
            $("#customerReviewWriteDiv .size_chip li > a").each(function () {
                $(this).removeClass("on");
            });

            //연령
            $("#customerReviewWriteDiv input[name=age]").prop("checked", false);

            //체형
            $("#customerReviewWriteDiv input[name=bodyType]").prop("checked", false);

            //키
            $("#customerReviewWriteDiv #height").val("");

            //평소 사이즈
            $("#customerReviewWriteDiv #enjoySize").val("");

            //실착용
            $("#customerReviewWriteDiv input[name=realWearSize]").prop("checked", false);

            //실 제품 색상
            $("#customerReviewWriteDiv input[name=realProductColor]").prop("checked", false);

            //상품평
            $("#customerReviewWriteDiv #reviewHeadline").val("");

            //사진등록
            $("#customerReviewWriteDiv #textReviewFile").val("");

            //평점
            $("#customerReviewWriteDiv .btn_star_score li:eq(4) > a").click();

            //파일리스트 초기화
            var labelLeng = $('#customerReviewWriteDiv .upload_btn label').length - 1;
            $('#customerReviewWriteDiv .upload_btn label').each(function (i) {
                if (i != labelLeng) {
                    $('#customerReviewWriteDiv .upload_btn label').eq(0).remove();
                    $('#customerReviewWriteDiv .upload_btn input[type=file]').eq(0).remove();
                }
            });

            //올린파일
            $("#customerReviewWriteDiv #uploadedFiles").hide();
            $("#customerReviewWriteDiv .file_image_wrap2003 li").remove();

            //상품 매장 구매여부
            $("#packopt").prop("checked", false);

            $(".slct_opt").remove();

            $("#realWearSizeTR").empty();

            $("#realColorTR").empty();

            $("#thFile").css("color", "black");
            $("#thFile").css("font-weight", "normal");
        }

        function uploadFilesubmit(writeType, returnType) {
            var url = "";
            if (writeType == "write") {
                url = "/ko/mypage/reviewWrite";
            } else {
                url = "/ko/mypage/modifyCustomerReview";
            }

            if ($('#packopt').is(':checked')) {
                $("#purchaseProdYN").val("Y");
            } else {
                $("#purchaseProdYN").val("N");
            };

            $("#reviewHeadline").val(encodeText($("#reviewHeadline").val()));


            $('input[name="realWearSize"]').each(function (index) {
                if ($(this).is(':checked')) {
                    $("#realWearSize").val($(this).val());
                }
            });
            $('input[name="realProductColor"]').each(function (index) {
                if ($(this).is(':checked')) {
                    $("#realProductColor").val($(this).val());
                }
            });


            var liSize = $('form[name=reviewForm] .file_image_wrap2003 li').size();
            var fileSize = $('form[name=reviewForm] .upload_btn input[type=file]').size();
            //사진 전체 삭제여부 체크
            if (liSize == 0) {
                $("#fileDeleteYN").val("Y");
            }

            if (fileSize <= 1) {
                var param = $('form[name=reviewForm]').serialize();

                $.ajax({
                    url: url + '?CSRFToken=c8d6b9e8-78d2-4ad0-b447-31354e623e97',
                    type: 'POST',
                    dataType: 'json',
                    data: param,
                    success: function (data) {
                        if (data.rsltCd == "F") {
                            var la = new layerAlert(data.rsltMsg);
                            return;
                        } else {
                            var la;
                            if (data == "F_PHOTO") {
                                la = new layerAlert(
                                    "최초 포토상품평 작성으로 마일리지 지급이<br/>완료 된 상품평 입니다.<br /><br/>사진을 첨부해서 상품평을 수정해 주세요."
                                    );
                                la.confirmAction = function () {
                                    $("#thFile").css("color", "#ff0000");
                                    $("#thFile").css("font-weight", "normal");
                                    $("#textReviewFile").focus();
                                };
                                return;
                            } else if (data == "No Match") {
                                la = new layerAlert("잘못된 접근입니다.");
                                return;
                            } else if (data == "FAIL") {
                                la = new layerAlert("예상치 못한 오류가 발생하였습니다.</br>다시 시도해 주시기 바랍니다.");
                                return;
                            } else {
                                if (writeType == "write") {
                                    la = new layerAlert("상품평이 등록되었습니다.");
                                } else if (writeType == "modify") {
                                    la = new layerAlert("상품평이 수정되었습니다.");
                                }
                                la.confirmAction = function () {
                                    hideProductLayer();
                                    $(".popwrap").remove();
                                    if (returnType == "review") {
                                        location.href = '/ko/mypage/myreview?returnType=write';
                                    } else if (returnType == "order") {
                                        location.href = '/ko/mypage/order/myorders';
                                    } else if (returnType == "myMain") {
                                        location.href = '/ko/mypage';
                                    } else {
                                        location.href = '/ko/mypage/myreview?returnType=write';
                                    }
                                };
                            }
                        }
                    },
                    error: function (xhr, Status, error) {
                        alert(error);
                    }
                });
            } else {

                var labelLeng = $('form[name=reviewForm] .upload_btn label').length - 1;
                $('form[name=reviewForm] .upload_btn label').each(function (i) {
                    if (i != labelLeng) {
                        $('form[name=reviewForm] .upload_btn input[type=file]').eq(i).attr("name",
                            "reviewFile" + (i == 0 ? "" : i));
                    } else {
                        $('form[name=reviewForm] .upload_btn input[type=file]').eq(i).attr("disabled", true);
                    }
                });



                $('form[name=reviewForm]').ajaxSubmit({
                    url: url + '?CSRFToken=c8d6b9e8-78d2-4ad0-b447-31354e623e97',
                    type: 'POST',
                    async: false,
                    success: function (data) {
                        if (data.rsltCd == "F") {
                            var la = new layerAlert(data.rsltMsg);
                            return;
                        } else {
                            var la;
                            if (writeType == "write") {
                                la = new layerAlert("상품평이 등록되었습니다.");
                            } else if (writeType == "modify") {
                                la = new layerAlert("상품평이 수정되었습니다.");
                            }
                            la.confirmAction = function () {
                                hideProductLayer();
                                $(".popwrap").remove();
                                if (returnType == "review") {
                                    location.href = '/ko/mypage/myreview?returnType=write';
                                } else if (returnType == "order") {
                                    location.href = '/ko/mypage/order/myorders';
                                } else if (returnType == "myMain") {
                                    location.href = '/ko/mypage';
                                } else {
                                    location.href = '/ko/mypage/myreview?returnType=write';
                                }
                            };
                        }
                    },
                    error: function (xhr, Status, error) {
                        alert(error);
                    }
                });
            }
        }

        function openPopupReview(code, orderNumber, color, pPrice, imageUrl, bName, pName, categoryCode, returnType) {
            // 상품평 초기화
            reviewReset();

            $.ajax({
                url: '/ko/mypage/reviewWriteBeforeVerify',
                type: 'GET',
                datatype: 'json',
                data: {
                    "productCode": code,
                    "orderNumber": orderNumber
                },
                success: function (data) {
                    isCosmetic = data.isCosmetic;
                    isPerfume = data.isPerfume;
                    reviewWriteHtml(categoryCode, returnType);

                    $("#height").val(data.height);
                    $("#enjoySize").val(data.enjoySize);
                    if (data.bodyType != null && data.bodyType != "") {
                        $('input[name="bodyType"]').each(function (index) {
                            if (data.bodyType == $(this).val()) {
                                $(this).attr('checked', true);
                            } else {
                                $(this).attr('checked', false);
                            }
                        });
                    }

                    var codeArray = code.split('_');
                    var style = codeArray[1];
                    var size = codeArray[2];

                    $('#photoAccumulationRightYn').val(data.photoAccumulationRightYn);
                    if (data.orderProductReviewList.length > 0) {
                        $('.select_options_wrap').hide(); // 색상, 사이즈 박스
                        var productOptions = '';
                        $.each(data.orderProductReviewList, function (idx, productOption) {
                            if (orderNumber == productOption[1] && style == productOption[3] &&
                                size == productOption[5]) {
                                if (data.brandCode == "BR62") {
                                    productOptions += '<span class="slct_opt">더한섬닷컴  /  COLOR : ' +
                                        productOption[4] + '</span>';
                                } else {
                                    productOptions += '<span class="slct_opt">더한섬닷컴  /  COLOR : ' +
                                        productOption[4] + '  /  SIZE : ' + productOption[5] +
                                        '</span>';
                                }

                                $('#orderNumber').val(productOption[1]);
                                $('#purchaseColor').val(productOption[3]);
                                $('#purchaseColorName').val(productOption[4]);
                                $('#purchaseSize').val(productOption[5]);
                            }
                        });
                        $('.slct_opt').remove();
                        $("#productOption").after(productOptions);
                        $("#purchased_color_size").show();
                    } else {
                        $('#purchaseProdYN').val('Y');
                        $('#packopt').prop('checked', true);
                        $('#packopt').prop('readonly', true);
                        $('#packopt').on('click', function (e) {
                            e.preventDefault();
                            return;
                        });
                    }

                    $("#reviewFile").val("");
                    $("#textReviewFile").val("");
                    $("#reviewHeadline").val("");

                    var prodCode = code;
                    var prodSize = "";
                    if (prodCode.indexOf('_') > -1) {
                        var tmpPnt = prodCode.lastIndexOf('_');
                        prodSize = prodCode.substring(tmpPnt + 1, prodCode.length);
                        prodCode = prodCode.substring(0, tmpPnt);
                        if (prodCode.indexOf('_') > -1) {
                            $("#review_color_name").text(color);
                            $("#review_size").text(prodSize);
                            if ('' == 'review') { // 주문조회에서 왔을 경우 미표시
                                $(".options_change").css("display", "none");
                            }
                        } else {
                            $(".review_header_wrapper").css("margin-top", "16px");
                        }
                    }

                    var review_color_name = $("#colorName").val();
                    $("#review_color_name").text(review_color_name);

                    var price = getReviewExchangePrice(pPrice);

                    $("#productCode").val(code);
                    $("#categoryCode").val(categoryCode);
                    //$("#orderNumber").val(orderNumber);
                    $("#reviewWriteProductImg").attr('src', imageUrl);
                    $("#reviewWriteProductPrice").text(price);
                    $("#reviewWriteProductBrandName").text(unescape(bName));
                    $("#reviewWriteProductName").text(pName);
                    $('#closeWriteChk').val('Y');


                },
                error: function () {
                    var la = new layerAlert("[Error] " + error);
                    return;
                }
            });
        }

        function deleteReviewFile(li, idx) {

            li.parent().remove();

            idx -= 1

            if (idx == 0) {
                idx = "";
            }
            $('.upload_btn label[for=reviewFile' + idx + ']').remove();
            $('.upload_btn #reviewFile' + idx).remove();
            if ($('#productId').val() != '' && $('#productId').val() != null) {
                if (li.attr("id") != "" && li.attr("id") != null) {
                    $("#reviewFileCd" + (li.attr("id") == "0" ? "" : li.attr("id"))).val('');
                }
            }
        }

        function reviewWriteHtml(categoryCode, returnType) {
            var reqd = "";
            if (checkCategoryType(categoryCode) == "top" || checkCategoryType(categoryCode) == "bottoms" ||
                checkCategoryType(categoryCode) == "cosmetic" || checkCategoryType(categoryCode) == "perfume") {
                reqd = "<strong class='reqd'>*</strong>";
            }
            var reviewhtml = "";
            reviewhtml = '<div class="layerArea">';
            reviewhtml += '<div class="layerBg"></div> ';
            reviewhtml +=
                '<form id="reviewForm" style="width:780px;" method="post" commandName="reviewForm" name="reviewForm" enctype="multipart/form-data">';
            reviewhtml += "<div class='popwrap w_type_4' id='customerReviewWriteDiv'>";
            reviewhtml += "    <div class='pop_tltwrap2 customerreviewwritediv1807'>";
            reviewhtml += "        <h3>상품평 작성하기</h3>";
            reviewhtml += "        <p class='reqd_txt float_right'><strong class='reqd'>*</strong> 표시는 필수항목입니다.</p>";
            reviewhtml += "    </div>";
            reviewhtml += "    <div class='pop_cnt evaluation_write1905 options1811'>";
            reviewhtml += '        <input type="hidden" id="productId" name="productId">';
            reviewhtml += "        <input type='hidden' id='productCode' name='productCode'>";
            reviewhtml += "        <input type='hidden' id='productCodeType' name='productCodeType' value=''>";
            reviewhtml += "        <input type='hidden' id='orderNumber' name='orderNumber' value=''>";
            reviewhtml += "        <input type='hidden' id='purchaseColor' name='purchaseColor' value=''>";
            reviewhtml += "        <input type='hidden' id='purchaseColorName' name='purchaseColorName' value=''>";
            reviewhtml += "        <input type='hidden' id='purchaseSize' name='purchaseSize' value=''>";
            reviewhtml += "        <input type='hidden' id='purchaseProdYN' name='purchaseProdYN' value='N'>";
            reviewhtml += "        <input type='hidden' id='orderWriteChk' name='orderWriteChk' value='N'>";
            reviewhtml += "        <input type='hidden' id='selectSizeCode' name='selectSizeCode' value=''>";
            reviewhtml += "        <input type='hidden' id='categoryCode' name='categoryCode' value=''>";
            reviewhtml += "        <input type='hidden' id='shoulderWidth' name='shoulderWidth' value=''>";
            reviewhtml += "        <input type='hidden' id='chestSize' name='chestSize' value=''>";
            reviewhtml += "        <input type='hidden' id='waistSize' name='waistSize' value=''>";
            reviewhtml += "        <input type='hidden' id='buttSize' name='buttSize' value=''>";
            reviewhtml += "        <input type='hidden' id='totalSize' name='totalSize' value=''>";
            reviewhtml += "        <input type='hidden' id='realProductColor' name='realProductColor' value=''>";
            reviewhtml +=
                "        <input type='hidden' id='photoAccumulationRightYn' name='photoAccumulationRightYn' value=''>";
            reviewhtml += "        <input type='hidden' id='offlineOrdDt' name='offlineOrdDt' value=''>";
            reviewhtml += "        <input type='hidden' id='offlineShpCd' name='offlineShpCd' value=''>";
            reviewhtml += "        <input type='hidden' id='offlineShpNm' name='offlineShpNm' value=''>";
            reviewhtml += "            <fieldset>";
            reviewhtml += "                <legend>상품평쓰기</legend>";
            reviewhtml += "                <div class='tblwrap'>";
            reviewhtml += "                    <table class='tbl_wtype1'>";
            reviewhtml += "                        <caption>상품평쓰기 입력항목</caption>";
            reviewhtml += "                        <colgroup>";
            reviewhtml += "                            <col style='width:130px'>";
            if (checkCategoryType(categoryCode) == "cosmetic" || checkCategoryType(categoryCode) == "perfume") {
                reviewhtml += "                            <col style='width:30px''>";
            } else {
                reviewhtml += "                            <col>";
            }
            reviewhtml += "                            <col style='width:130px'>";
            reviewhtml += "                            <col>";
            reviewhtml += "                        </colgroup>";
            reviewhtml += "                        <tbody>";
            reviewhtml += "                            <tr>";
            reviewhtml += "                                <th scope='row' class='th_space'>상품명</th>";
            reviewhtml += "                                <td colspan='3' style='padding:15px;'>";
            reviewhtml += "                                    <div class='item_box' id='reviewProductDiv'>";
            reviewhtml += "                                        <div class='pt_list_all'>";
            reviewhtml +=
                "                                            <a href='#;'><img src='' id='reviewWriteProductImg' alt='product Image'></a>";
            reviewhtml += "                                            <div class='tlt_wrap review_header_wrapper'>";
            reviewhtml += "                                                <a href='#;' class='basket_tlt'>";
            reviewhtml +=
                "                                                    <span class='tlt' id='reviewWriteProductBrandName'></span>";
            reviewhtml +=
                "                                                    <span class='sb_tlt' id='reviewWriteProductName'></span> / <span id='reviewWriteProductPrice'></span>";
            reviewhtml += "                                                </a>";
            reviewhtml += "                                            </div>";
            reviewhtml +=
                "                                            <div class='select_group' id='productOption' style='display:none;'>";
            reviewhtml += "                                            </div>";
            reviewhtml +=
                "                                            <div class='check_stl shoppurchase_check_wrap' onclick=\"$('#packopt').click();\" style='display:none;'>";
            reviewhtml +=
                "                                                <input type='checkbox' id='packopt' name='packopt' value=''>";
            reviewhtml +=
                "                                                <label for='shoppurchase_check' class='shoppurchase_check'>매장에서 구매한 상품입니다.</label>";
            reviewhtml += "                                            </div>";
            reviewhtml += "                                        </div>";
            reviewhtml += "                                    </div>";
            reviewhtml += "                                </td>";
            reviewhtml += "                            </tr>";
            reviewhtml += "                            <tr class='tbl_blank1807'>";
            reviewhtml += "                                <td colspan='4'>&nbsp;</td>";
            reviewhtml += "                            </tr>";
            reviewhtml += "                            <tr class='radio_btn_1905 bk'>";
            reviewhtml += "                                <th scope='row' class='th_space'>연 령</th>";
            reviewhtml += "                                <td colspan='3'>";
            reviewhtml += "                                 <input id='ageG1' type='radio' name='age' value='18세 이하'>";
            reviewhtml += "                                 <label for='ageG1'>18세 이하</label>";
            reviewhtml += "                                 <input id='ageG2' type='radio' name='age' value='20대'>";
            reviewhtml += "                                 <label for='ageG2'>20대</label>";
            reviewhtml += "                                 <input id='ageG3' type='radio' name='age' value='30대'>";
            reviewhtml += "                                 <label for='ageG3'>30대</label>";
            reviewhtml += "                                 <input id='ageG4' type='radio' name='age' value='40대'>";
            reviewhtml += "                                 <label for='ageG4'>40대</label>";
            reviewhtml += "                                 <input id='ageG5' type='radio' name='age' value='50대'>";
            reviewhtml += "                                 <label for='ageG5'>50대</label>";
            reviewhtml += "                                 <input id='ageG6' type='radio' name='age' value='60대 이상'>";
            reviewhtml += "                                 <label for='ageG6'>60대 이상</label>";
            reviewhtml += "                                </td>";
            reviewhtml += "                         </tr>";
            if (checkCategoryType(categoryCode) == "top" || checkCategoryType(categoryCode) == "bottoms") {
                reviewhtml += "                         <tr class='input_txt_1905'>";
                reviewhtml += "                             <th scope='row' class='th_space' id='thHeight'>" + reqd +
                    "키</th>";
                reviewhtml +=
                    "                             <td><input type='text' name='height' id='height' style='width:75%amrgin-right:10px'>cm</td>";
                reviewhtml += "                             <th scope='row' class='th_space' id='thEnjoySize'>" + reqd +
                    "평소 사이즈</th>";
                reviewhtml +=
                    "                             <td><input type='text' name='enjoySize' id='enjoySize'></td>";
                reviewhtml += "                         </tr>";
                reviewhtml += "                         <tr class='radio_btn_1905'>";
                reviewhtml += "                             <th scope='row' class='th_space' id='thBodyType'>" + reqd +
                    "체 형</th>";
                reviewhtml += "                             <td colspan='3'>";
                reviewhtml +=
                    "                                 <input id='dark1' type='radio' name='bodyType' value='마른 체형'>";
                reviewhtml += "                                 <label for='dark1'>마른 체형</label>";
                reviewhtml +=
                    "                                 <input id='dark2' type='radio' name='bodyType' value='보통'>";
                reviewhtml += "                                 <label for='dark2'>보통</label>";
                reviewhtml +=
                    "                                 <input id='dark3' type='radio' name='bodyType' value='통통한 체형'>";
                reviewhtml += "                                 <label for='dark3'>통통한 체형</label>";
                reviewhtml += "                             </td>";
                reviewhtml += "                         </tr>";
            }
            if (checkCategoryType(categoryCode) == "cosmetic" || checkCategoryType(categoryCode) == "perfume") {
                reviewhtml += "                         <tr class='radio_btn_1905'>";
                reviewhtml += "                             <th scope='row' class='th_space' id='thSkinType'>" + reqd +
                    "피부 타입</th>";
                reviewhtml += "                             <td colspan='3'>";
                reviewhtml +=
                    "                                 <input id='skin1' type='radio' name='skinType' value='건성'>";
                reviewhtml += "                                 <label for='skin1'>건성</label>";
                reviewhtml +=
                    "                                 <input id='skin2' type='radio' name='skinType' value='지성'>";
                reviewhtml += "                                 <label for='skin2'>지성</label>";
                reviewhtml +=
                    "                                 <input id='skin3' type='radio' name='skinType' value='복합성'>";
                reviewhtml += "                                 <label for='skin3'>복합성</label>";
                reviewhtml +=
                    "                                 <input id='skin4' type='radio' name='skinType' value='민감성'>";
                reviewhtml += "                                 <label for='skin4'>민감성</label>";
                reviewhtml += "                             </td>";
                reviewhtml += "                         </tr>";
            }
            reviewhtml += "                         <tr class='tbl_blank1807'>";
            reviewhtml += "                             <td colspan='4'>&nbsp;</td>";
            reviewhtml += "                         </tr>";
            reviewhtml += "                         <tr class='write_star_wrap'>";
            reviewhtml += "                             <th colspan='4'>";
            reviewhtml += "                                 <div class='write_star_score1807'>";
            reviewhtml += "                                     <span class='cmt_star'>";
            reviewhtml += "                                         <span class='cmt_per star5'>별점</span>";
            reviewhtml += "                                     </span>";
            reviewhtml += "                                     <ul class='btn_star_score'>";
            reviewhtml += "                                         <li><a href='#;' value='1'>1점</a></li>";
            reviewhtml += "                                         <li><a href='#;' value='2'>2점</a></li>";
            reviewhtml += "                                         <li><a href='#;' value='3'>3점</a></li>";
            reviewhtml += "                                         <li><a href='#;' value='4'>4점</a></li>";
            reviewhtml += "                                         <li><a href='#;' value='5'>5점</a></li>";
            reviewhtml +=
                "                                         <input type='hidden' id='rating' name='rating' value='5'>";
            reviewhtml += "                                     </ul>";
            reviewhtml += "                                     <p>평점을 선택해 주세요.</p>";
            reviewhtml += "                                 </div>";
            reviewhtml += "                             </th>";
            reviewhtml += "                         </tr>";
            if (checkCategoryType(categoryCode) == "top" || checkCategoryType(categoryCode) == "bottoms") {
                reviewhtml += "                         <tr>";
                reviewhtml +=
                    "                             <th scope='row' class='th_space'><strong class='reqd'>*</strong>실 착용 사이즈</th>";
                reviewhtml += "                             <td colspan='3'>";
                if (checkCategoryType(categoryCode) == "top") {
                    reviewhtml += "                                 <!--20190529_상품평활성화-->";
                    reviewhtml += "                                 <div class='cont_detail'>";
                    reviewhtml += "                                     <p class='left_txt'>어깨너비 : </p>";
                    reviewhtml += "                                     <ul class='rd_box_radio_list'>";
                    reviewhtml += "                                         <li>";
                    reviewhtml +=
                        "                                             <input id='shoulderWidth_1' type='radio' name='shoulderWidth' value='1'>";
                    reviewhtml +=
                        "                                             <label for='shoulderWidth_1'>타이트함</label>";
                    reviewhtml += "                                         </li>";
                    reviewhtml += "                                         <li>";
                    reviewhtml +=
                        "                                             <input id='shoulderWidth_2' type='radio' name='shoulderWidth' value='2'>";
                    reviewhtml +=
                        "                                             <label for='shoulderWidth_2'>적당함</label>";
                    reviewhtml += "                                         </li>";
                    reviewhtml += "                                         <li>";
                    reviewhtml +=
                        "                                             <input id='shoulderWidth_3' type='radio' name='shoulderWidth' value='3'>";
                    reviewhtml +=
                        "                                             <label for='shoulderWidth_3'>여유있음</label>";
                    reviewhtml += "                                         </li>";
                    reviewhtml += "                                     </ul>";
                    reviewhtml += "                                 </div>";
                    reviewhtml += "                                 <div class='cont_detail'>";
                    reviewhtml += "                                     <p class='left_txt'>가슴둘레 : </p>";
                    reviewhtml += "                                     <ul class='rd_box_radio_list'>";
                    reviewhtml += "                                         <li>";
                    reviewhtml +=
                        "                                             <input id='chestSize_1' type='radio' name='chestSize' value='1'>";
                    reviewhtml += "                                             <label for='chestSize_1'>타이트함</label>";
                    reviewhtml += "                                         </li>";
                    reviewhtml += "                                         <li>";
                    reviewhtml +=
                        "                                            <input id='chestSize_2' type='radio' name='chestSize' value='2'>";
                    reviewhtml += "                                            <label for='chestSize_2'>적당함</label>";
                    reviewhtml += "                                         </li>";
                    reviewhtml += "                                         <li>";
                    reviewhtml +=
                        "                                             <input id='chestSize_3' type='radio' name='chestSize' value='3'>";
                    reviewhtml += "                                             <label for='chestSize_3'>여유있음</label>";
                    reviewhtml += "                                         </li>";
                    reviewhtml += "                                     </ul>";
                    reviewhtml += "                                 </div>";
                } else if (checkCategoryType(categoryCode) == "bottoms") {
                    reviewhtml += "                                 <div class='cont_detail'>";
                    reviewhtml += "                                     <p class='left_txt'>허리둘레 : </p>";
                    reviewhtml += "                                     <ul class='rd_box_radio_list'>";
                    reviewhtml += "                                         <li>";
                    reviewhtml +=
                        "                                             <input id='waistSize_1' type='radio' name='waistSize' value='1'>";
                    reviewhtml += "                                             <label for='waistSize_1'>타이트함</label>";
                    reviewhtml += "                                         </li>";
                    reviewhtml += "                                         <li>";
                    reviewhtml +=
                        "                                             <input id='waistSize_2' type='radio' name='waistSize' value='2'>";
                    reviewhtml += "                                             <label for='waistSize_2'>적당함</label>";
                    reviewhtml += "                                         </li>";
                    reviewhtml += "                                         <li>";
                    reviewhtml +=
                        "                                             <input id='waistSize_3' type='radio' name='waistSize' value='3'>";
                    reviewhtml += "                                             <label for='waistSize_3'>여유있음</label>";
                    reviewhtml += "                                         </li>";
                    reviewhtml += "                                     </ul>";
                    reviewhtml += "                                 </div>";
                    reviewhtml += "                                 <div class='cont_detail'>";
                    reviewhtml += "                                     <p class='left_txt'>엉덩이둘레 : </p>";
                    reviewhtml += "                                     <ul class='rd_box_radio_list'>";
                    reviewhtml += "                                         <li>";
                    reviewhtml +=
                        "                                             <input id='buttSize_1' type='radio' name='buttSize' value='1'>";
                    reviewhtml += "                                             <label for='buttSize_1'>타이트함</label>";
                    reviewhtml += "                                         </li>";
                    reviewhtml += "                                         <li>";
                    reviewhtml +=
                        "                                            <input id='buttSize_2' type='radio' name='buttSize' value='2'>";
                    reviewhtml += "                                            <label for='buttSize_2'>적당함</label>";
                    reviewhtml += "                                         </li>";
                    reviewhtml += "                                         <li>";
                    reviewhtml +=
                        "                                             <input id='buttSize_3' type='radio' name='buttSize' value='3'>";
                    reviewhtml += "                                             <label for='buttSize_3'>여유있음</label>";
                    reviewhtml += "                                         </li>";
                    reviewhtml += "                                     </ul>";
                    reviewhtml += "                                 </div>";
                }
                reviewhtml += "                                 <div class='cont_detail'>";
                reviewhtml += "                                     <p class='left_txt'>총길이 : </p>";
                reviewhtml += "                                     <ul class='rd_box_radio_list'>";
                reviewhtml += "                                         <li>";
                reviewhtml +=
                    "                                             <input id='totalSize_1' type='radio' name='totalSize' value='1'>";
                reviewhtml += "                                             <label for='totalSize_1'>타이트함</label>";
                reviewhtml += "                                        </li>";
                reviewhtml += "                                        <li> ";
                reviewhtml +=
                    "                                             <input id='totalSize_2' type='radio' name='totalSize' value='2'>";
                reviewhtml += "                                             <label for='totalSize_2'>적당함</label>";
                reviewhtml += "                                         </li>";
                reviewhtml += "                                         <li>";
                reviewhtml +=
                    "                                            <input id='totalSize_3' type='radio' name='totalSize' value='3'> ";
                reviewhtml += "                                            <label for='totalSize_3'>긴 편</label>";
                reviewhtml += "                                         </li>";
                reviewhtml += "                                     </ul>";
                reviewhtml += "                                 </div>";
                reviewhtml += "                                 <!--//20190529_상품평활성화-->";
                reviewhtml += "                             </td>";
                reviewhtml += "                         </tr>";
                reviewhtml += "                         <tr>";
                reviewhtml +=
                    "                             <th scope='row' class='th_space'><strong class='reqd'>*</strong>실 제품 색상</th>";
                reviewhtml += "                             <td colspan='3'>";
                reviewhtml +=
                    "                                 <input id='dark' type='radio' name='realProductColor' value='1'>";
                reviewhtml += "                                 <label for='dark'>어두워요</label>";
                reviewhtml +=
                    "                                 <input id='same' type='radio' name='realProductColor' class='ml20' value='2'>";
                reviewhtml += "                                 <label for='same'>화면과 같아요</label>";
                reviewhtml +=
                    "                                 <input id='light' type='radio' name='realProductColor' class='ml20' value='3'>";
                reviewhtml += "                                 <label for='light'>밝아요</label>";
                reviewhtml += "                             </td>";
                reviewhtml += "                         </tr>";
            } else if (checkCategoryType(categoryCode) == "cosmetic") {
                reviewhtml += "                         <tr>";
                reviewhtml +=
                    "                             <th colspan='2' scope='row' class='th_space'><strong class='reqd'>*</strong>보습력은 어떤가요?</th>";
                reviewhtml += "                             <td colspan='2'>";
                reviewhtml +=
                    "                                 <input id='moisturize1' type='radio' name='moisturize' value='1'>";
                reviewhtml += "                                 <label for='moisturize1'>조금 건조해요</label>";
                reviewhtml +=
                    "                                 <input id='moisturize2' type='radio' name='moisturize' class='ml20' value='2'>";
                reviewhtml += "                                 <label for='moisturize2'>보통이에요</label>";
                reviewhtml +=
                    "                                 <input id='moisturize3' type='radio' name='moisturize' class='ml20' value='3'>";
                reviewhtml += "                                 <label for='moisturize3'>촉촉해요</label>";
                reviewhtml += "                             </td>";
                reviewhtml += "                         </tr>";
                reviewhtml += "                         <tr>";
                reviewhtml +=
                    "                             <th colspan='2' scope='row' class='th_space'><strong class='reqd'>*</strong>발림성은 어떤가요?</th>";
                reviewhtml += "                             <td colspan='2'>";
                reviewhtml +=
                    "                                 <input id='spreadability1' type='radio' name='spreadability' value='1'>";
                reviewhtml += "                                 <label for='spreadability1'>조금 뻑뻑해요</label>";
                reviewhtml +=
                    "                                 <input id='spreadability2' type='radio' name='spreadability' class='ml20' value='2'>";
                reviewhtml += "                                 <label for='spreadability2'>보통이에요</label>";
                reviewhtml +=
                    "                                 <input id='spreadability3' type='radio' name='spreadability' class='ml20' value='3'>";
                reviewhtml += "                                 <label for='spreadability3'>부드러워요</label>";
                reviewhtml += "                             </td>";
                reviewhtml += "                         </tr>";
                reviewhtml += "                         <tr>";
                reviewhtml +=
                    "                             <th colspan='2' scope='row' class='th_space'><strong class='reqd'>*</strong>향은 어떤가요?</th>";
                reviewhtml += "                             <td colspan='2'>";
                reviewhtml +=
                "                                 <input id='scent1' type='radio' name='scent' value='1'>";
                reviewhtml += "                                 <label for='scent1'>조금 아쉬워요</label>";
                reviewhtml +=
                    "                                 <input id='scent2' type='radio' name='scent' class='ml20' value='2'>";
                reviewhtml += "                                 <label for='scent2'>보통이에요</label>";
                reviewhtml +=
                    "                                 <input id='scent3' type='radio' name='scent' class='ml20' value='3'>";
                reviewhtml += "                                 <label for='scent3'>좋아요</label>";
                reviewhtml += "                             </td>";
                reviewhtml += "                         </tr>";
            } else if (checkCategoryType(categoryCode) == "perfume") {
                reviewhtml += "                         <tr>";
                reviewhtml +=
                    "                             <th colspan='2' scope='row' class='th_space'><strong class='reqd'>*</strong>향은 어떤가요?</th>";
                reviewhtml += "                             <td colspan='2'>";
                reviewhtml +=
                "                                 <input id='scent1' type='radio' name='scent' value='1'>";
                reviewhtml += "                                 <label for='scent1'>조금 아쉬워요</label>";
                reviewhtml +=
                    "                                 <input id='scent2' type='radio' name='scent' class='ml20' value='2'>";
                reviewhtml += "                                 <label for='scent2'>보통이에요</label>";
                reviewhtml +=
                    "                                 <input id='scent3' type='radio' name='scent' class='ml20' value='3'>";
                reviewhtml += "                                 <label for='scent3'>좋아요</label>";
                reviewhtml += "                             </td>";
                reviewhtml += "                         </tr>";
                reviewhtml += "                         <tr>";
                reviewhtml +=
                    "                             <th colspan='2' scope='row' class='th_space'><strong class='reqd'>*</strong>지속성은 어떤가요?</th>";
                reviewhtml += "                             <td colspan='2'>";
                reviewhtml +=
                    "                                 <input id='persistence1' type='radio' name='persistence' value='1'>";
                reviewhtml += "                                 <label for='persistence1'>조금 짧아요</label>";
                reviewhtml +=
                    "                                 <input id='persistence2' type='radio' name='persistence' class='ml20' value='2'>";
                reviewhtml += "                                 <label for='persistence2'>보통이에요</label>";
                reviewhtml +=
                    "                                 <input id='persistence3' type='radio' name='persistence' class='ml20' value='3'>";
                reviewhtml += "                                 <label for='persistence3'>오래 유지돼요</label>";
                reviewhtml += "                             </td>";
                reviewhtml += "                         </tr>";
            }

            if ("ko" == "ko") {
                reviewhtml += "                         <tr>";
                reviewhtml += "                             <th scope='row'>";
                reviewhtml +=
                "                                 <strong class='reqd' style='margin-top:6px;'>*</strong>";
                reviewhtml +=
                    "                                 <label for='lb1' style='margin-top:11px;line-height:20px;'>";
                reviewhtml += "                                     상품평<br/>";
                reviewhtml += "                                     <span class='subtxt_1905'>";
                reviewhtml += "                                         (20자 이상<br/>&nbsp;200자 이하)";
                reviewhtml += "                                     </span>";
                reviewhtml += "                                 </label>";
                reviewhtml += "                             </th>";
                reviewhtml += "                             <td colspan='3'>";
                reviewhtml +=
                    "                                 <textarea id='reviewHeadline' name='headline' cols='30' rows='5' style='width:98%;height:78px' maxlength='200'></textarea>";
                reviewhtml += "                             </td>";
                reviewhtml += "                         </tr>";
            } else {
                reviewhtml += "                         <tr>";
                reviewhtml += "                             <th scope='row' class='th_space'>";

                reviewhtml +=
                    "                                 <label for='lb1' style='margin-top:8px;line-height:20px;'>";
                reviewhtml +=
                    "                                     <strong class='reqd'>*</strong><label for='lb1'>상품평<br />(200자 이하)</label><br/>";
                reviewhtml += "                                 </label>";

                reviewhtml += "                             </th>";
                reviewhtml += "                             <td colspan='3'>";
                reviewhtml +=
                    "                                 <textarea id='reviewHeadline' name='headline' cols='30' rows='5' style='width:98%;height:78px' maxlength='200'></textarea>";
                reviewhtml += "                             </td>";
                reviewhtml += "                         </tr>";
            }
            reviewhtml += "                         <tr>";
            reviewhtml +=
                "                             <th scope='row' class='th_space'><label for='file'>사진등록</label></th>";
            reviewhtml += "                             <td colspan='3'>";
            reviewhtml += "                                 <div class='file_upload hs_input_file_wrap2003'>";
            reviewhtml += "                                     <div class='upload_wrap2003'>";
            reviewhtml +=
                "                                         <input type='text' id='textReviewFile' class='text' readonly='readonly' name='fileText'>";
            reviewhtml += "                                         <div class='upload_btn'>";
            reviewhtml +=
                "                                             <input type='file' name='reviewFile' id='reviewFile' class='btn add_s' title='파일찾기'>";
            reviewhtml += "                                             <label for='reviewFile'>";
            //	reviewhtml += "	                                            <button type='button' id='uploadFile1' class='img_upload' title='파일찾기'>";
            reviewhtml +=
                "                                             <span id='uploadFile1' class='img_upload'>파일찾기</span>";
            //	reviewhtml += "                                             </button>";
            reviewhtml += "                                             </label>";
            reviewhtml += "                                          </div>";
            reviewhtml += "                                     </div>";
            reviewhtml += "                                     <ul class='file_image_wrap2003'>";
            reviewhtml += "                                     </ul>";
            reviewhtml += "                                 </div>";
            reviewhtml +=
                "                                 <p class='txt_guide'>10MB 미만의 jpg,gif,png 파일만 첨부하실 수 있습니다.</p>";
            reviewhtml += "                             </td>";
            reviewhtml += "                         </tr>";
            reviewhtml += "                     </tbody>";
            reviewhtml += "                 </table>";
            reviewhtml += "                 <p class='txt_guide'>";
            reviewhtml +=
                "                     <span style='color:#e46764; font-weight: bold;'>- 상품평과 무관한 내용이거나  상품 재판매, 광고, 동일 문자의 반복 및 기타 불법적인 내용은 통보 없이 삭제되며,<br/>&nbsp;&nbsp;해당 글 작성자 ID는 글쓰기 권한이 제한됩니다.</span><br/>- 반품, 취소 등의 CS관련 글은 고객센터>1:1문의로 이동될 수 있습니다.";

            reviewhtml += "                 </p>";
            reviewhtml += "             </div>";
            reviewhtml += "             <div class='btnwrap mt40'>";
            reviewhtml += "                 <input type='button' id='reviewCancel' value='취소하기' class='btn wt'>";
            reviewhtml +=
                "                 <input type='button' id='reviewWriteSend' value='등록하기' class='btn gray mr0'>";
            reviewhtml += "             </div>";
            reviewhtml += "         </fieldset>";
            reviewhtml += " </div>";
            reviewhtml +=
                "     <a href='javascript:void(0);' id='reviewCloseBtn' style='position: absolute; top: 20px; right: 20px; width: 20px; height: 20px;'><img src='/_ui/desktop/common/images/popup/ico_close.png' alt='닫기'></a>";
            reviewhtml += "</div>";
            reviewhtml += "</form>";
            reviewhtml += "</div>";
            $(reviewhtml).appendTo($('body'));
            starCnt();
            viewPopup("#reviewForm");

            $(".btn_close").on("click", function () {
                hideProductLayer();
                $("#customerReviewWriteDiv").remove();
            });

            $("#reviewCancel, #reviewCloseBtn").on('click', function () {
                var lc = new customLayerConfirm("취소하시겠습니까?", "확인", "취소");
                lc.confirmAction = function () {
                    $(".btn_close").trigger("click");
                };
            });

            $(document).on("keyup", "#height", function () {
                $("#thHeight").css("color", "black");
                $("#thHeight").css("font-weight", "normal");
                $(this).val($(this).val().replace(/[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/g, ''));
                if ($("#height").val().length > 0) {
                    var inputNumberchk = /^[0-9]+$/; // 숫자 체크
                    if (!inputNumberchk.test($("#height").val())) {
                        $(this).val($(this).val().replace(/[^0-9]/gi, ""));
                        var la = new layerAlert("숫자만 입력 가능합니다.");
                        la.confirmAction = function () {};
                    }
                }
            });

            $(document).on("keyup", "#enjoySize", function () {
                $("#thEnjoySize").css("color", "black");
                $("#thEnjoySize").css("font-weight", "normal");
                $(this).val($(this).val().replace(/[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/g, ''));
                if ($("#enjoySize").val().length > 0) {
                    var inputHangulchk = /[^ㄱ-ㅎ|ㅏ-ㅣ]+$/; // 초성(자음/모음) 체크
                    if (!inputHangulchk.test($("#enjoySize").val())) {
                        $(this).val($(this).val().replace(/[^a-z0-9]/gi, ""));
                        var la = new layerAlert("영문/숫자만 입력 가능합니다.");
                        la.confirmAction = function () {};
                    }
                }
            });

            $(".btn_star_score li a").on("click", function () {
                $("#rating").val($(this).attr('value'));
            });

            $(document).on("keyup", "#reviewHeadline", function () {
                $(".write_star_wrap").next().next().next().find("th").css("color", "black");
                $(".write_star_wrap").next().next().next().find("th").css("font-weight", "normal");
                if ($(this).val().length >= 200) {
                    $(this).blur();
                    var la = new layerAlert('상품평 내용은 20~200자 사이입니다.');
                    return false;
                }
            });

            $('#reviewWriteSend').click(function () {
                var inputNumberchk = /^[0-9]+$/; // 숫자 체크
                var inputHangulchk = /[^ㄱ-ㅎ|ㅏ-ㅣ]+$/; // 초성(자음/모음) 체크

                if ($('#orderWriteChk').val() == 'Y') { // 상품평쓰기 화면에서 색상이 보일때만 체크
                    if ($('.select_options_wrap .color_chip li a').hasClass('on') == false) {
                        var la = new layerAlert('색상을 선택해 주세요.');
                        //$('.select_options_wrap .color_chip li a').focus();
                        $('.select_colors p').css("color", "#ff0000");
                        $('.select_colors p').css("font-weight", "bold");
                        return false;
                    }
                }

                if ($('#orderWriteChk').val() == 'Y') { // 상품평쓰기 화면에서 사이즈가 보일때만 체크
                    var productType = $('form[name=reviewForm] input[name=productCodeType]').val();
                    if (productType != 'ApparelSizeVariantProduct') { //ApparelStyleVariantProduct
                        var la = new layerAlert('사이즈를 선택해 주세요.');
                        $('.select_options .select_size p').css("color", "#ff0000");
                        $('.select_options .select_size p').css("font-weight", "bold");

                        return false;
                    }
                }

                var checkCategory = checkCategoryType(categoryCode);

                if (checkCategory == "top" || checkCategory == "bottoms") {
                    if ($("#height").val() == null || $.trim($("#height").val()) == '') {
                        $("#thHeight").css("color", "#ff0000");
                        $("#thHeight").css("font-weight", "normal");
                        $("#height").focus();
                        var la = new layerAlert('키를 입력해주세요.');
                        return;
                    }

                    if ($("#enjoySize").val() == null || $.trim($("#enjoySize").val()) == '') {
                        $("#thEnjoySize").css("color", "#ff0000");
                        $("#thEnjoySize").css("font-weight", "normal");
                        $("#enjoySize").focus();
                        var la = new layerAlert('평소 사이즈를 입력해주세요.');
                        return;
                    }

                    if ($('input[name=bodyType]:checked').length < 1) {
                        $("#thBodyType").css("color", "#ff0000");
                        $("#thBodyType").css("font-weight", "normal");
                        $("#thBodyType").focus();
                        var la = new layerAlert('체형을 선택해주세요.');

                        $('input[name=bodyType]').on('click', function () {
                            $("#thBodyType").css("color", "black");
                            $("#thBodyType").css("font-weight", "normal");
                        });
                        return;
                    }

                    if (checkCategory == "top") {
                        if ($("input[name=shoulderWidth]:checked").length < 1) {
                            var la = new layerAlert('실착용 사이즈를 선택해주세요.');
                            $(".write_star_wrap").next().find("th").css("color", "#ff0000");
                            $(".write_star_wrap").next().find("th").css("font-weight", "bold");

                            $("input[name=shoulderWidth]").click(function () {
                                $(".write_star_wrap").next().find("th").css("color", "black");
                                $(".write_star_wrap").next().find("th").css("font-weight", "normal");
                            });
                            $('#shoulderWidth_1').focus();
                            return;
                        }
                        if ($("input[name=chestSize]:checked").length < 1) {
                            var la = new layerAlert('실착용 사이즈를 선택해주세요.');
                            $(".write_star_wrap").next().find("th").css("color", "#ff0000");
                            $(".write_star_wrap").next().find("th").css("font-weight", "bold");

                            $("input[name=chestSize]").click(function () {
                                $(".write_star_wrap").next().find("th").css("color", "black");
                                $(".write_star_wrap").next().find("th").css("font-weight", "normal");
                            });
                            $('#chestSize_1').focus();
                            return;
                        }
                    }

                    if (checkCategory == "bottoms") {
                        if ($("input[name=waistSize]:checked").length < 1) {
                            var la = new layerAlert('실착용 사이즈를 선택해주세요.');
                            $(".write_star_wrap").next().find("th").css("color", "#ff0000");
                            $(".write_star_wrap").next().find("th").css("font-weight", "bold");

                            $("input[name=waistSize]").click(function () {
                                $(".write_star_wrap").next().find("th").css("color", "black");
                                $(".write_star_wrap").next().find("th").css("font-weight", "normal");
                            });
                            $('#waistSize_1').focus();
                            return;
                        }
                        if ($("input[name=buttSize]:checked").length < 1) {
                            var la = new layerAlert('실착용 사이즈를 선택해주세요.');
                            $(".write_star_wrap").next().find("th").css("color", "#ff0000");
                            $(".write_star_wrap").next().find("th").css("font-weight", "bold");

                            $("input[name=buttSize]").click(function () {
                                $(".write_star_wrap").next().find("th").css("color", "black");
                                $(".write_star_wrap").next().find("th").css("font-weight", "normal");
                            });
                            $('#buttSize_1').focus();
                            return;
                        }
                    }

                    if ($("input[name=totalSize]:checked").length < 1) {
                        var la = new layerAlert('실착용 사이즈를 선택해주세요.');
                        $(".write_star_wrap").next().find("th").css("color", "#ff0000");
                        $(".write_star_wrap").next().find("th").css("font-weight", "bold");

                        $("input[name=totalSize]").click(function () {
                            $(".write_star_wrap").next().find("th").css("color", "black");
                            $(".write_star_wrap").next().find("th").css("font-weight", "normal");
                        });
                        $('#totalSize_1').focus();
                        return;
                    }

                    if ($("input:radio[name=realProductColor]:checked").length < 1) {
                        var la = new layerAlert('실제품 색상을 선택해주세요.');
                        $(".write_star_wrap").next().next().find("th").css("color", "#ff0000");
                        $(".write_star_wrap").next().next().find("th").css("font-weight", "bold");
                        la.confirmAction = function () {
                            $("#customerReviewWriteDiv").attr("tabindex", -1).focus();
                        };

                        $("input:radio[name=realProductColor]").click(function () {
                            $(".write_star_wrap").next().next().find("th").css("color", "black");
                            $(".write_star_wrap").next().next().find("th").css("font-weight", "normal");
                        });
                        return;
                    }
                }

                if (checkCategory == "cosmetic") {
                    if ($('input[name=skinType]:checked').length < 1) {
                        $("#thSkinType").css("color", "#ff0000");
                        $("#thSkinType").css("font-weight", "normal");
                        $("#thSkinType").focus();
                        var la = new layerAlert('피부 타입을 선택해주세요.');

                        $('input[name=skinType]').on('click', function () {
                            $("#thSkinType").css("color", "black");
                            $("#thSkinType").css("font-weight", "normal");
                        });
                        return;
                    }
                    if ($("input[name=moisturize]:checked").length < 1) {
                        var la = new layerAlert('보습력을 선택해주세요.');
                        $(".write_star_wrap").next().find("th").css("color", "#ff0000");
                        $(".write_star_wrap").next().find("th").css("font-weight", "bold");

                        $("input[name=moisturize]").click(function () {
                            $(".write_star_wrap").next().find("th").css("color", "black");
                            $(".write_star_wrap").next().find("th").css("font-weight", "normal");
                        });
                        $('#moisturize1').focus();
                        return;
                    }
                    if ($("input[name=spreadability]:checked").length < 1) {
                        var la = new layerAlert('발림성을 선택해주세요.');
                        $(".write_star_wrap").next().next().find("th").css("color", "#ff0000");
                        $(".write_star_wrap").next().next().find("th").css("font-weight", "bold");

                        $("input[name=spreadability]").click(function () {
                            $(".write_star_wrap").next().next().find("th").css("color", "black");
                            $(".write_star_wrap").next().next().find("th").css("font-weight", "normal");
                        });
                        $('#spreadability1').focus();
                        return;
                    }
                    if ($("input[name=scent]:checked").length < 1) {
                        var la = new layerAlert('향을 선택해주세요.');
                        $(".write_star_wrap").next().next().next().find("th").css("color", "#ff0000");
                        $(".write_star_wrap").next().next().next().find("th").css("font-weight", "bold");

                        $("input[name=scent]").click(function () {
                            $(".write_star_wrap").next().next().next().find("th").css("color", "black");
                            $(".write_star_wrap").next().next().next().find("th").css("font-weight",
                                "normal");
                        });
                        $('#scent1').focus();
                        return;
                    }


                    var headline = $("#reviewHeadline").val();

                    if (headline == null || headline.trim() == '') {
                        var la = new layerAlert('내용을 입력해 주세요.');
                        $(".write_star_wrap").next().next().next().next().find("th").css("color", "#ff0000");
                        $(".write_star_wrap").next().next().next().next().find("th").css("font-weight", "bold");
                        return false;
                    }

                    if (headline.trim().length < 20 || headline.trim().length > 200) {
                        var la = new layerAlert('상품평 내용은 20~200자 사이입니다.');
                        $(".write_star_wrap").next().next().next().next().find("th").css("color", "#ff0000");
                        $(".write_star_wrap").next().next().next().next().find("th").css("font-weight", "bold");
                        return false;
                    }

                } else if (checkCategory == "perfume") {
                    if ($('input[name=skinType]:checked').length < 1) {
                        $("#thSkinType").css("color", "#ff0000");
                        $("#thSkinType").css("font-weight", "normal");
                        $("#thSkinType").focus();
                        var la = new layerAlert('피부 타입을 선택해주세요.');

                        $('input[name=skinType]').on('click', function () {
                            $("#thSkinType").css("color", "black");
                            $("#thSkinType").css("font-weight", "normal");
                        });
                        return;
                    }

                    if ($("input[name=scent]:checked").length < 1) {
                        var la = new layerAlert('향을 선택해주세요.');
                        $(".write_star_wrap").next().find("th").css("color", "#ff0000");
                        $(".write_star_wrap").next().find("th").css("font-weight", "bold");

                        $("input[name=scent]").click(function () {
                            $(".write_star_wrap").next().find("th").css("color", "black");
                            $(".write_star_wrap").next().find("th").css("font-weight", "normal");
                        });
                        $('#scent1').focus();
                        return;
                    }

                    if ($("input[name=persistence]:checked").length < 1) {
                        var la = new layerAlert('지속성을 선택해주세요.');
                        $(".write_star_wrap").next().next().find("th").css("color", "#ff0000");
                        $(".write_star_wrap").next().next().find("th").css("font-weight", "bold");

                        $("input[name=persistence]").click(function () {
                            $(".write_star_wrap").next().next().find("th").css("color", "black");
                            $(".write_star_wrap").next().next().find("th").css("font-weight", "normal");
                        });
                        $('#persistence1').focus();
                        return;
                    }

                    var headline = $("#reviewHeadline").val();

                    if (headline == null || headline.trim() == '') {
                        var la = new layerAlert('내용을 입력해 주세요.');
                        $(".write_star_wrap").next().next().next().next().find("th").css("color", "#ff0000");
                        $(".write_star_wrap").next().next().next().next().find("th").css("font-weight", "bold");
                        return false;
                    }

                    if (headline.trim().length < 20 || headline.trim().length > 200) {
                        var la = new layerAlert('상품평 내용은 20~200자 사이입니다.');
                        $(".write_star_wrap").next().next().next().next().find("th").css("color", "#ff0000");
                        $(".write_star_wrap").next().next().next().next().find("th").css("font-weight", "bold");
                        return false;
                    }
                } else { // none cosmetic includes top, bottom and etc
                    var headline = $("#reviewHeadline").val();

                    if (headline == null || headline.trim() == '') {
                        var la = new layerAlert('내용을 입력해 주세요.');
                        $(".write_star_wrap").next().next().next().find("th").css("color", "#ff0000");
                        $(".write_star_wrap").next().next().next().find("th").css("font-weight", "bold");
                        return false;
                    }

                    if (headline.trim().length < 20 || headline.trim().length > 200) {
                        var la = new layerAlert('상품평 내용은 20~200자 사이입니다.');
                        $(".write_star_wrap").next().next().next().find("th").css("color", "#ff0000");
                        $(".write_star_wrap").next().next().next().find("th").css("font-weight", "bold");
                        return false;
                    }
                }


                var lc = new customLayerConfirm("상품평을 등록하시겠습니까?", "확인", "취소"); // 상품평을 등록하시겠습니까?, 확인, 취소
                lc.confirmAction = function () {
                    uploadFilesubmit('write', returnType);
                    $('.pop_cls').click();
                }
            });
        }

        function encodeText(s) {
            if (!s) {
                return "";
            }

            return s.replace(/['"<>&]/g, function (s) {
                switch (s) {
                    case "'":
                        return "&#039;";
                    case "\"":
                        return "&#034;"
                    case "\\(":
                        return "&#40;";
                    case "\\)":
                        return "&#41;";
                    case "<":
                        return "&lt;";
                    case ">":
                        return "&gt;";
                    case "&":
                        return "&amp;";
                }
            });
        }

        function getReviewExchangeRate() {
            $.ajax({
                type: "get",
                //url : "/ko/mypage/order/getExchageRate",
                url: "/ko/intro/getExchageRate",
                dataType: "json",
                async: true,
                success: function (result) {
                    if (result.length > 0) {
                        for (var i = 0; i < result.length; i++) {
                            if (result[i].currencyCode == "USD") {
                                reviewRate_en = result[i].exchangeRate;
                                reviewSymbol_en = result[i].symbol;
                            } else {
                                reviewRate_zh = result[i].exchangeRate;
                                reviewSymbol_zh = result[i].symbol;
                            }
                        }
                    }
                }
            });
        }

        function getReviewExchangePrice(price) {
            var exchangePrice = "";

            exchangePrice = "￦" + addComma(price);


            return exchangePrice;
        }
    </script>

<!-- footerWrap -->

<script type="text/javascript">
        //<![CDATA[ 

        $(document).ready(function () {
            var ua = navigator.userAgent.toLowerCase();
            // 익스플로러 브라우저 아닐 때만 인스타 링크버튼 노출
            if ((ua.indexOf('trident') == -1) && (ua.indexOf("msie") == -1)) {
                $("#f_insta").show();
            }
        });

        getNewsList("/ko/magazine");


        // 2022.03.29 푸터 공지사항 추가
        getFooterNotices("/ko/svcenter");


        function moveMobile() {
            // 	location.href = location.href.replace("?uiel=Desktop", "") + "?uiel=Mobile";
            location.href = "/ko/?uiel=Mobile";
        }


        function setLogout() {
            deletecookie("UID");
            deletecookie("criteoEmail");
            deletecookie("memberGb");
            location.href = "/ko/logout";
        }

        //]]>
    </script>
    
    <!-- 위시리스트 ajax처리 -->
    <script type="text/javascript">
    $(window).ready(function () {
    	console.log("11111111111");
		const url = new URL(window.location.href);
		const urlParams = url.searchParams;	
		showWish(1);
		let mid = "team5";
    	
    	function showWish(page) {
    		console.log("위시리스트 불러오기");
    		console.log("page: " + page);
			let wish_array;
			let totalCnt;
			
			let url2;
			url2 = "/mypage/getLikeList?page="+page;
			
/* 			if (!urlParams.get("page")) {
				url2 = "/mypage/getLikeList";
			} else {
				console.log("2실행");
				url2 = "/mypage/getLikeList?page="+page;
			}  */
			
 			 $.ajax({
				url: url2
			}).done(function(data) {
				console.log(data);
				wish_array = data.likes;
				totalCnt = data.totalCnt;
				console.log("1");
				console.log(data.likes);
				
				let mid = "team5";
				
				let html_tmp = "";
				for (let i = 0; i < wish_array.length; i++) {
					let like = wish_array.at(i);
					let product_color = like.colors;
					let product_size = like.sizes;
					
					let product_info = like.product;
					let tmp = "";
					tmp += "<tr>";
					tmp += "	<td class='frt'><input type='checkbox' title='선택' value='9613624279742' name='checkpd' data-id='"+product_info.pid+"'></td>";
					tmp += "	<td class='pt_list_wrap'>"
					tmp += "		<div class='pt_list_all'> <a href='${pageContext.request.contextPath}/product/productdetail?pid="+wish_array.at(i).product.pid + "&pcid=" + wish_array.at(i).colors.at(0).pcid 
									+ "'><img src='" + like.pcimg3 +"' alt='상품 이미지'></a>";
					tmp += "			<div class = 'tlt_wrap'>"
					
					tmp += "					<a href='${pageContext.request.contextPath}/product/productdetail?pid="+wish_array.at(i).product.pid + "&pcid=" + wish_array.at(i).colors.at(0).pcid 
												+ "' class='basket_tlt'>";
					tmp += "						<span class='tlt' style='display:block'>"+product_info.bname+"</span> <span class='sb_tl'>"+ product_info.pname +"</span> ";												
					tmp += "					</a>";
					
					tmp += "			</div>"	;
					tmp += "		</div>";
					tmp += "	</td>";
					tmp += "	<td class='al_middle'>";
					tmp += "		<div class='price_wrap'><sapn>￦ "+like.pcprice.toString().replace(/\B(?=(\d{3})+(?!\d))/g,',') +"</sapn></div>";						
					tmp += "	</td>";	
					tmp += "	<td class='al_middle'><span class='earn'>0 %</span> </td>";
					tmp += "	<td class='al_middle'>";
					tmp += "		<div class='btn_wrap'>";
					tmp += "			<a href='javascript:void(0)' class='btn wt_ss add_bag parent_add_bag' onclik= 'showCart(&#39;"+ product_info.pid+ "&#39;,&#39;" + product_color.at(0).pcid + "&#39;)'>쇼핑백 담기 </a>";
					tmp += "			<a class='btn wt_ss wishDel deleteOne' data-id='"+ product_info.pid+"'>삭제</a>";
					// onclick= 'deleteLike(&#39;"+ product_info.pid+ "&#39;,&#39;" + mid + "&#39;)'
					tmp += "		</div>";
					tmp += "	</td>";
					tmp += "</tr>";
					
					tmp += "<tr class = 'hid'>";					
					tmp += "	<td colspan='5' class='basket_wrap'>";					
					tmp += "		<div class='basket_info' style='display: none;' id = 'cart_"+product_info.pid+"'>";
					tmp += "			<span class='btn_arr'>위치아이콘</span>";
					tmp += "			<div class='info'>";
					tmp += "				<div class='pt_list'>";
					tmp += "					<a href='${pageContext.request.contextPath}/product/productdetail?pid="+wish_array.at(i).product.pid + "&pcid=" + wish_array.at(i).colors.at(0).pcid + "'>";
					tmp += "						<img src='" + like.pcimg3 +"' alt='상품 이미지'>";
					tmp += "					</a>";
					tmp += "					<div class='tlt_wrap wish'>";
					
					tmp += "					<a class = 'basket_tlt' href='${pageContext.request.contextPath}/product/productdetail?pid="+wish_array.at(i).product.pid + "&pcid=" + wish_array.at(i).colors.at(0).pcid + "'>";
					tmp += "					<span class='tlt'>"+product_info.bname+"</span>";
					tmp += "					<span class='sb_tlt'>";
					tmp += "						<span class='reserveProdNmChild'></span>"+product_info.pname+"</span>";
			//		tmp += "					</span>";
					tmp += "					</a>";
					tmp += "					<dl  class='cs_wrap'>";
					tmp += "						<dt>COLOR</dt>";
					tmp += "						<dd>";
					tmp += "							<div class='cl_select'>";
					for (let j = 0; j < product_color.length; j++) {
					if (j == 0) {
							// 클릭시 input - hidden tag에 pcid지정
							tmp += "<a href='javascript:void(0)' onclick = 'selectColor(&#39;"+ product_color.at(j).pcid+ "&#39;)' data-pcid='"+product_color.at(j).pcid+"' data-seq='"+i+"' class='beige on' style =' background-image : url(" + product_color.at(j).pcchipimg + ")'>"+product_color.at(j).pccolorcode+"</a>";
						} else {
							tmp += "<a href='javascript:void(0)' onclick = 'selectColor(&#39;"+ product_color.at(j).pcid+ "&#39;)' data-pcid='"+product_color.at(j).pcid+"' data-seq='"+i+"' class='beige' style =' background-image : url(" + product_color.at(j).pcchipimg + ")'>"+product_color.at(j).pccolorcode+"</a>";
						}					
					} 
					

					tmp += "							</div>";
					tmp += "						</dd>";
					tmp += "						<dt>SIZE</dt>";	
					tmp += "						<dd>";
					tmp += "							<div class='sz_select'>";
					for (let j = 0; j < product_size.length; j++) {
					if (j == 0) {
							// 클릭시 input - hidden tag에 pcid지정
							//tmp += "<a href='javascript:void(0)' onclick = 'selectSize(&#39;"+ pcid+ "&#39;,&#39;" + psize + "&#39;)' class='on')>"+product_size.at(j).psize+"</a>";
						tmp += "<a href='javascript:void(0)' data-psize='"+product_size.at(j).psize+"' data-seq='"+i+"')>"+product_size.at(j).psize+"</a>";
						} else {
							//tmp += "<a href='javascript:void(0)' onclick = 'selectSize(&#39;"+ pcid+ "&#39;,&#39;" + psize + "&#39;)')>"+product_size.at(j).psize+"</a>";
							tmp += "<a href='javascript:void(0)' data-psize='"+product_size.at(j).psize+"' data-seq='"+i+"')>"+product_size.at(j).psize+"</a>";
						}					
					} 

					tmp += "							</div>";
					tmp += "						</dd>";
					
					tmp += "						<dt>수량</dt>";
					tmp += "						<dd>";
					tmp += "							<div class='qty_sel num'>";
					
					tmp += "							<a data-type='m' class='left' data-seq='"+i+"' >이전 버튼</a>";
					tmp += "							<input id = 'qty_"+ i +"' type='text' title='수량' value='1' class='mr0' readonly='readonly'>";
					tmp += "							<a data-type='p' class='right' data-seq='"+i+"' >다음 버튼</a>";

					tmp += "							</div>";
					tmp += "						</dd>";
					tmp += "					</dl>";
					
												// form tag 여기다가 사이즈 + 색깔 선택 -> 장바구니로 넘기기
					tmp += "					<form id = 'cartFrom"+i+"' name='addToCartForm'>";
					// tmp += "						<input type='hidden' maxlength='3' size='1' name='qty' class='qty'>";
					tmp += "						<input id = 'cart_pcid_"+ i +"' type='hidden' name='pcid' value='"+ product_color.at(0).pcid+"'>";
					tmp += "						<input id = 'cart_psize_"+ i +"' type='hidden' name='psize' value='-1'>";
					tmp += "						<input id = 'cart_stockCnt_"+ i +"' type='hidden' name='stockCnt' id='stockCnt' value='-1'>"; // 재고 저장 -> 수정 필요!!!!!!!!!!!!!!!
					tmp += "						<input id = 'cart_count_"+ i +"' type='hidden' name='count' value='-1'>";					
					tmp += "					</form>";
					tmp += "				</div>";
					tmp += "			</div>";
					
					tmp += "			<div class='btns'>";
					tmp += "				<a href='javascript:void(0)' class='btn wt_ss bag' id='addToCart_0'>쇼핑백담기</a>";
				//	tmp += "				<a href='javascript:void(0)' class='btn wt_ss mt10 bag' id='cancle_0'>취소</a>";
					tmp += "				<a href='javascript:void(0)' class='btn_close bag' id='close_0'>닫기</a>";
					
					tmp += "			</div>";
					tmp += "		</div>";
					tmp += "	</td>";	
					tmp += "</tr>";
					html_tmp += tmp;
				}
				$("#listBody").html(html_tmp);
				 showProductPage(totalCnt);				
			});  
    	}; // showlist 종료
		
			var pageNum = 1;
			var pageNation = $(".paging");
		
			
		 	function showProductPage(totalCnt) {

    		console.log("totalCn" + totalCnt);
 			// 시작 페이지, 마지막 페이지, 이전페이지, 다음 페이지 구현
 			// 3은 화면에 표현해주는 페이지 네이션의 갯수
			var endNum = Math.ceil(pageNum / 3.0) * 3;
			console.log("endNum" + endNum);
			var startNum = endNum - 2;
			console.log("startNum" + startNum);
			var prev = startNum != 1;
			var next = false; // 기본 값은 false 
			// 현재 보이는 pagenation의 마지막 숫자의 *10은 현재 까지의 데이터 갯수인데
			// 이것보다 total 갯수가 더 적다면 -> 페이지 조정이 필요
			if (endNum * 2 >= totalCnt) { //마지막페이지계산// 이때 2는 한 페이지에 표현되는 갯수
				endNum = Math.ceil(totalCnt / 2.0);
			} //end if	      
			if (endNum * 2 < totalCnt) { //다음페이지 가능
				next = true;
			} //end if	 

			console.log("pageNum" + pageNum);
			console.log("endNum" + endNum);
			console.log("startNum" + startNum);
			
			// *************페이지 표시******************
			
			 // 페이지 네이션 표시
			 // "/mypage/getLikeList?page=" + urlParams.get("page")
			var str = "";
			str += "<a class='prev2' href='1'> 처음 페이지 </a>";
			if (pageNum <= 0) {
				str += "<a class='prev' href='1'> 이전 페이지 </a>";
			} else {
				str += "<a class='prev' href='" + (pageNum - 1)+ "'> 이전 페이지 </a>";
			}
			str += "<span class = 'num'>";
			for (var i = startNum; i <= endNum; i++) {
				// 현재 페이지 active
				var active = pageNum == i ? "on" : "";
				str += "<a href='" + i + "'class='pageBtn " + active + "'>" + i + "</a>";
			}
			str += "</span>";
			if (pageNum >= endNum) {
				str += "<a class='next' href='" + endNum + "'> 다음 페이지 </a>";
			} else {
				str += "<a class='next' href='" + (pageNum + 1)+ "'> 다음 페이지 </a>";
			}
			str += "<a class='next2' href='" + endNum + "'> 마지막 페이지 </a>";
			// console.log(str);
			pageNation.html(str); 
    	} // 페이징 화면 끝 
		 	
			//페이지 번호 클릭	
			//반드시 on함수 사용해야 한다. - js에 의해 새로 생긴 태그에는 이벤트가 주어지지 않기 때문에 찾아서 이벤트를 넣어줘야 한다.
			pageNation.on("click", "a", function(e) {
				// 링크 이동 행동 무시
				e.preventDefault(); //<a> 동작 중지
				console.log("page click");
				var targetPageNum = $(this).attr("href"); //페이지넘버 가져오기	       
				console.log("targetPageNum: " + targetPageNum);
				if (targetPageNum <= 0) {
					targetPageNum = 1;
				}
				console.log("targetPageNum: " + targetPageNum);
				// 전역 변수에 값 전달
				pageNum = targetPageNum; //값전달
				showWish(pageNum); //페이지 리스트 다시 출력
			}); //end replyPageFooter click 	
			
			
	       	//var deleteOneBtn = $(".deleteOne");
	        
	        $(document).on("click",".deleteOne", function (e) {
				
	        	console.log("삭제 수행");
				console.log($(this).data("id"));
				
				var pid = $(this).data("id");
				
				
	 				$.ajax({
					url: "/product/deleteLike",
					data: {
						"pid" : pid,
						"mid" : mid
					}
				}).done(function (data) {
					console.log("delete" +data.result);
					if (data.result === 1) {
						showWish(1);
						alert("위시리스트에서 삭제 되었습니다.");
						console.log("위시 갯수: " + data.wishCnt);
						$("#wishlistCount").html(data.wishCnt);
					} else {
						alert("오류 발생.");
					}
				});	 
	      	});  
	        
	     let deleteChoose = $("#deleteChoose");
	        
	   	 //선택삭제 수행
	   	 deleteChoose.on("click", function(e){	    	
	   	    	console.log("선택삭제 실행");
	   	    	if($("input:checkbox[name='checkpd']:checked").length == 0) {
	   	    		alert("선택된 상품이 없습니다.");
	   	    	} else {
		   	 		$("input[name='checkpd']").each(function(){
		   				if($(this).prop("checked") == true) {
		   					console.log($(this).data("id"));
		   					let pid = $(this).data("id");
		   					
			 				$.ajax({
								url: "/product/deleteLike",
								data: {
									"pid" : pid,
									"mid" : mid
								}
							}).done(function (data) {
								console.log("delete" +data.result);
								if (data.result === 1) {
									showWish(1);
									console.log("위시 갯수: " + data.wishCnt);
									$("#wishlistCount").html(data.wishCnt);
								} else {
									alert("오류 발생.");
								}
							});
			 				
		   				}
		   			});
		   	 		alert("선택 삭제가 수행되었습니다");
	   	    	}
	   	  });//end modalCloseBtn click

	     //let cl_select = $(".cl_select");

	     $(document).on("click", ".cl_select a", function(e) {
	         console.log("색깔 선택 버튼");
	         console.log("수정전 : " +$(this).data("pcid"));
	         console.log("위시 순서 : " +$(this).data("seq"));
	         let nowColor = $(this).data("pcid");
	         
	         let cart_cid = "cart_pcid_" + $(this).data("seq");
	         console.log(cart_cid);
	         
	         let cid = "#"+cart_cid;
	         
	         console.log("수정전 input 값 : " + $(cid).val());
	         $(cid).val($(this).data("pcid"));
	         console.log("수정후 : " + $(cid).val());
	         
	         let colors = $(".cl_select").children();
	         
	         colors.each(function(){
	        	 if ($(this).data("pcid") == nowColor) {
	        		 $(this).addClass('on');
	        	 } else {
	        		 $(this).removeClass('on');
	        	 }
	         });
	         
	     });
	     
	     //let sz_select = $(".sz_select");
	     
	     $(document).on("click", ".sz_select a", function(e) {
	         console.log("사이즈 선택 버튼");
	         console.log("수정전 : " +$(this).data("psize"));
	         console.log("위시 순서 : " +$(this).data("seq"));
	         let nowSize = $(this).data("psize");
	         let nowSeq = $(this).data("seq");
	         
	         let cart_sid = "cart_psize_" + $(this).data("seq");
	         console.log(cart_sid);
	         
	         let sid = "#"+cart_sid;
	         
	         console.log("수정전 input 값 : " + $(sid).val());
	         $(sid).val($(this).data("psize"));
	         console.log("수정휴 : " + $(sid).val());
	         
	         let sizes = $(".sz_select").children();
	         
	         sizes.each(function(){
	        	 if ($(this).data("psize") == nowSize && $(this).data("seq") == nowSeq) {
	        		 $(this).addClass('on');
	        	 } else {
	        		 $(this).removeClass('on');
	        	 }
	         });
	         
	         let pcid = $("#cart_pcid_"+nowSeq).val();
	         let psize = nowSize;
	         
	         console.log("val1"+ pcid);
	         console.log("val2"+psize);
	         
				$.ajax({
					url: "/product/getProductStock",
					data: {
						"pcid" : pcid,
						"psize" : psize
					}
				}).done(function (data) {
					console.log(data.amount);
					$("#cart_stockCnt_"+nowSeq).val(data.amount);
					console.log("변경후 재고 수량 : " + $("#cart_stockCnt_"+nowSeq).val());
				});	         
	     });
	     
	     //let qty_sel = $(".qty_sel");
	     
	     $(document).on("click", ".qty_sel a", function(e) {
	    	 console.log("수량선택 버튼");
	    	 let nowSeq = $(this).data("seq");
	    	 console.log("위시 순서: " + nowSeq);
	    	 
	    	 let stockCnt = parseInt ($("#cart_stockCnt_"+nowSeq).val());
	    	 console.log("재고수량: " + stockCnt);

	    	 let count = parseInt ($("#qty_"+ nowSeq).val());
	    	 console.log("현재 수량: " + count);
	    	 
	    	 if ($(this).data("type") == 'p') {
	    		 console.log("+");
	    		
	    		 if (stockCnt == -1) {
	    			 alert("사이즈를 선택하세요"); 
	    		 } else {
			         if(count >= stockCnt) {
				      //console.log("재고 부족");
				      alert("재고 부족");
	    		 	  } else {
	    		 		 $("#qty_"+ nowSeq).val(count+1);
	    		 		 $("#cart_count_"+nowSeq).val(count+1);
	    		 		 console.log($("#cart_count_"+nowSeq).val());
	    		 		 }
	    		 	  }
	    		 
	    	 } else {
	    		 console.log("-");
	    		 let nowSeq = $(this).data("seq");
	    		 if (stockCnt == -1) {
	    			 alert("사이즈를 선택하세요"); 
	    		 } else {
		        	if(count > 0) {
			        	$("#qty_"+ nowSeq).val(count-1);
			        	$("#cart_count_"+nowSeq).val(count+1);
			        	console.log($("#cart_count_"+nowSeq).val());
			        } 
	    		 }
	    	 }
	     });
    });//end ready
    
    </script>
  
<%@ include file="/WEB-INF/views/common/footer.jsp"%>
