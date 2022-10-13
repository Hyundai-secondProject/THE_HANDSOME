<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp"%>

<link rel="stylesheet" type="text/css"
	href="/resources/css/font_443.css" media="all" />

<link rel="stylesheet" type="text/css"
	href="/resources/css/contents.css" media="all" />
	
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
							<a href="/ko/mypage/voucher"
								onclick="GA_Event('마이페이지','LNB','나의 쿠폰');">나의 쿠폰<!-- 쿠폰함 --></a>
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
					src="https://pgweb.uplus.co.kr/WEB_SERVER/js/receipt_link.js"></script>
				<script language="JavaScript"
					src="https://iniweb.inicis.com/js/auth.js"></script>

				<script type="text/javascript">
//<![CDATA[ 
$(document).ready(function(){
	
	$("#menuTitle").text("주문 상세 조회");	
	
	
	$(".shippingInfoBtn").click(function(){
		
		var paramDatas = 'ocode='+$(this).attr('ocode')+'&pcode='+$(this).attr('pcode');
		var orderCode = $(this).attr('ocode');
		$.ajax({
			type: "get",
			url :  "/ko/mypage/order/getdelno",
			data : paramDatas,			
			dataType : "json",
			error : function( request, status, error ){		
				alert(error);
				//console.log( "code:" + request.status+"\n" + "message:" + request.responseText+"\n" + "error:" + error );
			}, 
			success : function( result ){
				
			    
					if(result.companyName=="현대택배"){
						window.open('http://www.hydex.net/ehydex/jsp/home/distribution/tracking/tracingNView.jsp?param1='+result.trackingNumber,'배송조회', 'width=557, height=500')
					}else if(result.companyName=="DHL"){
						window.open('http://www.dhl.com/cgi-bin/tracking.pl?awb='+result.trackingNumber+'&LAN=KOR&TID=us_en&LINKS=NO'  ,'배송조회')
					}else if(result.companyName.indexOf("우체국") > -1){
                        window.open(result.epostUrl  ,'배송조회', 'width=700, height=713'); //배송조회
                    }else if(result.companyName.indexOf("QUICK") > -1){
					    $.ajax({
	                        type: "get",
	                        url :  "/ko/mypage/order/deliveryHistory",
	                        data : {"code":orderCode},          
	                        dataType : "json",
	                        async : false,
	                        error : function( request, status, error ){     
	                            alert(error);
	                        }, 
	                        success : function( result ){
	                            var html = "";
	                            for(var i=0;i<result.length;i++){
	                                html += '<tr>';
	                                html += '    <td class="date">'+result[i].date+'</td>';
	                                html += '    <td class="status">'+result[i].status+'</td>';
	                                html += '</tr>';
	                            }
	                            html += '<tr>';
	                            html += '    <td colspan="2" class="last">※ 퀵배송 주문 후, 고객사유로 미수령 시 반품처리 됩니다.</td>';
	                            html += '</tr>';
	                            
	                            $("#quickDeliveryInfoBody").html(html);
	                            layerPopup("quickDeliveryInfo");
	                        }
	                    });
					}else if(result.companyName=="CJ대한통운"){
					    window.open('https://cjlogistics.com/ko/tool/parcel/newTracking?gnbInvcNo='+result.trackingNumber,'배송조회', 'width=850, height=850')
					}else if(result.companyName.indexOf("굿투럭") > -1){
                        window.open(result.goodsToLuckUrl  ,'배송조회', 'width=850, height=850'); //배송조회
                    }else if(result.companyName.indexOf("로젠택배") > -1){//로젠택배 추가 hyunbae 20220603
                    	window.open(result.logenUrl ,'배송조회', 'width=850, height=850'); //배송조회
                    }else{
						layerAlert(result.companyName+"<br />"+result.trackingNumber);
					}
				

			}
		});
		
		
	});
	
	
	
	
	$('.addrModBtn').click(function(){
		
		
		
			$l = layerPopup('addrModPop');
			$l.attr('id', 'addrModPop_clone' );
			$l.find('#code').val($(this).attr('code'));
			$l.find('#zipCode').val($(this).attr('zip'));
			$l.find('#address1').val($(this).attr('addr1'));
			$l.find('#address2').val($(this).attr('addr2'));
			
			if(getByteLength($(this).attr('rcname')) > 40){
                $l.find('#name').val(subStringBytes($(this).attr('rcname'),40,3));
            }else{
                $l.find('#name').val($(this).attr('rcname'));
            }
			$l.find('#hp1').val($(this).attr('hp1'));
			$l.find('#hp2').val($(this).attr('hp2'));
			$l.find('#hp3').val($(this).attr('hp3'));
			$l.find('#ph1').val($(this).attr('ph1'));
			$l.find('#ph2').val($(this).attr('ph2'));
			$l.find('#ph3').val($(this).attr('ph3'));
			$l.find('#emailId').val($(this).attr('emailId'));
			$l.find('#emailDomain').val($(this).attr('emailDomain'));
			if($(this).attr('or')){
				$l.find('#orderr').val($(this).attr('or'));	
				if($(this).attr('or') != '배송 전 연락 바랍니다' && $(this).attr('or') != '부재 시 문 앞에 놓아주세요' 
														  && $(this).attr('or') != '부재 시 경비실에 맡겨주세요' 
														  && $(this).attr('or') != '빠른 배송 부탁드립니다'
													      && $(this).attr('or') != '부재 시 핸드폰으로 연락바랍니다'){
					$l.find('.enter-door211026').hide();
					}
            }
			if($(this).attr('frontDoorSelectMessage')){
				$l.find('.enter-door211026').show();
				$l.find('#enter_door').val($(this).attr('frontDoorSelectMessage'));
				if($(this).attr('frontDoorSelectMessage') === '자유 출입 가능'){
					$l.find('.enter_front').hide();
				}else{
					$l.find('.enter_front').show();
					if($(this).attr('frontDoorSelectMessage') === '기타'){
						$l.find('#frontDoorMessage').attr('placeholder','15자 이내로 입력하세요');
					}else{
						$l.find('#frontDoorMessage').attr('placeholder','예) #12341234# (최대 15자)');
					}
				}
				
			}
			if($(this).attr('frontDoorMessage')){
				$l.find('#frontDoorMessage').val($(this).attr('frontDoorMessage'));
			}
			
			emailTypeDomainSelectController("#addrModPop_clone #emailDomain","#addrModPop_clone #emailDomainSel");
			
			
			$l.find('#findAddrBtn').click(function(){
				searchAddressLayer('addrModPop_clone #address1', 'addrModPop_clone #address2', 'addrModPop_clone #zipCode');
			});
			
			$("body").unbind('click');
			
			// 211026 공동현관 출입방법 S
			$l.find('.input_sumtxt').click(function(e){
				$(this).find('~.delivery_comt').toggle(),
				e.stopPropagation();
			});
			
			// 211026 공동현관 출입방법 E
			$("body").click(function(){
				$('.delivery_comt').hide();
			});
			
			$l.find(".input_sumtxt input").keydown(function(){
				$(this).find('~.delivery_comt').hide();
			});
			
			$l.find('.deliveryMsg').click(function(){
				<!-- 211028 공동현관 출입방법 S -->
				if($(this).find('a').data('readonly') === 'readonly'){
					//배송 메세지 (default)
					$l.find('#orderr').val($(this).find('a').attr("deliveryRequestMessage"));
					$l.find('#orderr').prop('readonly', true);
					$l.find('.enter-door211026').show();
				}else if($(this).find('a').data('readonly') === 'write'){
					//배송 메세지 (직접입력)
					$l.find('#orderr').val("").focus();
					$l.find('#orderr').attr('placeholder', $(this).find('a').attr("deliveryRequestMessage"));
					$l.find('#orderr').prop('readonly', false);
					$l.find('.enter-door211026').hide();
				}else if($(this).find('a').data('inputDisplay') === 'block'){
					//공동현관 출입방법 (default)
					if($(this).find('a').data('recentryMessage')){
						$(this).parents(".input_sumtxt_box").find('input').val($(this).find('a').data('default'));
						$l.find('#frontDoorMessage').val($(this).find('a').data('recentryMessage'))
					}else{
						$(this).parents(".input_sumtxt_box").find('input').val($(this).find('a').text());
						$l.find('#frontDoorMessage').val('')
					}
					if($(this).find('a').data('default') === '기타'){
						$l.find('#frontDoorMessage').attr('placeholder','15자 이내로 입력하세요');
					}else{
						$l.find('#frontDoorMessage').attr('placeholder','예) #12341234# (최대 15자)');
					}
					$l.find('.enter_front').show();
				}else if($(this).find('a').data('inputDisplay') === 'none'){
					//공동현관 출입방법 (자유 출입 가능)
					if($(this).find('a').data('recentryMessage')){
						$(this).parents(".input_sumtxt_box").find('input').val($(this).find('a').data('default'));
						$l.find('#frontDoorMessage').val($(this).find('a').data('recentryMessage'))
					}else{
						$(this).parents(".input_sumtxt_box").find('input').val($(this).find('a').text());
						$l.find('#frontDoorMessage').val($(this).find('a').text());
					}
					$l.find('.enter_front').hide();
				}else{
					console.log('else');
				}
				<!-- 211028 공동현관 출입방법 E -->
			});

			chkInputCount($l.find('#orderr'), $l.find('#textCnt'), 20);
			chkInputCount($l.find('#frontDoorMessage'), $l.find('#frontDoorMessageLength'), 15);
			
			
			
			$l.find("[numberOnly=true]").keypress(function(event){
				if(!isNum(event.which)) return false;
			}).keydown(function(event){
				if(!isNum(event.which)) return false;
			});
			
			
			
			
			
			$l.find('#cancleBtn').click(function(){
				$l.find('.btn_close').click();
			});
			
			$l.find('#applyBtn').click(function(){
				
				var vc = new ValidationCheck('addrModPop_clone #addrModForm');
				vc.checkIdList = ['zipCode','address1','address2', 'name', 'hp1', 'hp2', 'hp3'];
				if(vc.isValid()){
					
					//공동현관출입 S hyunbae
                	//값 세팅
                	var enterDoor = $l.find('#enter_door').val();
                	if($.trim(enterDoor) === '자유 출입 가능'){
                		$l.find('#frontDoorMessage').val('자유출입가능');
                	}
                	//valid
                    if($.trim($l.find('#orderr').val()) === '부재 시 문 앞에 놓아주세요'){
                    	if(enterDoor === '공동현관 출입방법을 선택해주세요'){
                    		layerAlert('공동현관 출입방법을 선택해주세요.');
                			return;
                    	}else{
                    		if($.trim($l.find('#frontDoorMessage').val()) == ''){
                    			layerAlert('공동현관 출입방법을 입력해 주세요');
                    			return;
                    		}
                    	}
                    }else if($.trim($l.find('#orderr').val()) === '' && $l.find('#orderr').attr('placeholder') === '직접입력'){
                    	$l.find('#frontDoorMessage').val('');
                    }
                	
                    //# => 특수문자로 치환
                    if($l.find('#frontDoorMessage').val()){
                    	$l.find('#frontDoorMessage').val($l.find('#frontDoorMessage').val().replace(/#/gi,'＃'));
                    }
                    //공동현관출입 E hyunbae
					
					$l.find("#hp").val($l.find("#hp1").val()+"-"+$l.find("#hp2").val()+"-"+$l.find("#hp3").val());
					$l.find("#ph").val($l.find("#ph1").val()+"-"+$l.find("#ph2").val()+"-"+$l.find("#ph3").val());
					$l.find("#email").val($l.find("#emailId").val()+"@"+$l.find("#emailDomain").val());
					
					addrModFn();
					
					$l.find('.btn_close').click();	
					
				}
				
			});
		
		
		
		
		
	});
	
	
	
	$("#detailViewBtn").click(function(){
		
		layerPopup("cancelRefundAmountLayer");
		
	});
});
var addrModFn = function(){
	
	
	
	var paramDatas = $("#addrModPop_clone #addrModForm" ).serialize();
	
	
	$.ajax({
		type: "post",
		url :  "/ko/mypage/order/updateorderaddr",
		data : paramDatas,			
		dataType : "json",
		error : function( request, status, error ){		
			alert(error);
			//console.log( "code:" + request.status+"\n" + "message:" + request.responseText+"\n" + "error:" + error );
		}, 
		success : function( result ){
			
			if(result=="SUCCESS"){
				layerAlert("배송지 수정을 완료하였습니다.", true);	
				
			}else{
			    layerAlert("배송지 수정을 실패하였습니다.");	
			}
			
		}
	});
	
	
	
	
	
	
	
	
};


function receiptRequest(gbn) {

	var afterPay = "false";
	var lastPayId = (afterPay == "true") ? "" : "StdpayCARDhandsomep120221012094019721458";
	var lastPayAmount = (afterPay == "true") ? "" : "29500.0";
		showReceipt('https://iniweb.inicis.com/app/publication/apReceipt.jsp?noTid='+lastPayId, '1', '박서은', lastPayAmount);
	
	
}


var storePickupTicketSending = false;

function storePickupTicketSend(obj) {
    var sendcount = $(obj).data('sendcount') || 0;
    if (sendcount >= 3) return;
    if (storePickupTicketSending) return;
    storePickupTicketSending = true;
    $(obj).html("매장수령교환권 재발급중");
    $.ajax({
        type: "get",
        url : "/ko/mypage/order/pickupticketsend?code=221012P15336437",
        dataType : "json",
        success: function (result) {
            if (result == null) return;
            switch (result.resultCode) {
            case "SUCCESS": 
                $(obj).data('sendcount', result.pickupSmsSendTimes);
                layerAlert("매장수령 교환권이 발급되었습니다.");
                break;
            default:
                layerAlert("매장 수령 문자를 발송을 실패하였습니다.");
                break;
            }
        },
        error: function () {
            layerAlert("매장 수령 문자를 발송을 실패하였습니다.");
        }
    }).always(function () {
        storePickupTicketSending = false;
        $(obj).html("매장수령교환권 재발급 ("+$(obj).data('sendcount')+"/3회)");
    });
}

/**
 * 2020.01.22 hmk
 * 결품 여부 확인
 */
function getOnlineStock( code ) {
	$.ajax( {
		type: "get"
		, url :  "/ko/mypage/order/getOnlineStock?code=" + code
		, dataType : "json"
		, success : function( r ) {
			if( $.parseJSON( r )[code] ) {
				$( "p[name=__p_" + code + "]" ).show() ;
			}
		}
	} ) ;
}

/*
 * 
 * 20210402 hyunbaeKim
 * 반품 신청 취소 
 */
 var returnRequestCancel = function(count) {
	    var lc = new layerConfirm('반품 신청을 취소하시겠습니까?','확인', '취소');
	    lc.confirmAction = function(){
	    	var params = $('#returnRequestCancelForm'+count).serialize();
	    	$.ajax({
	    		type : 'POST',
	    		url : '/ko/mypage/order/updateStopReturnRequest',
	    		data : params,	
	    		success : function(result){
	    			if(result.result == true){
	    				var returnErpSendKeyList = result.returnErpSendKeyList;
	                	var order = result.order;
	                	$.ajax({
							type	: 'POST',
							url		: '/ko/mypage/order/updateAccumulationReviewPoint',
							data	: {'returnErpSendKeyList':returnErpSendKeyList,'order':order,CSRFToken:'c8d6b9e8-78d2-4ad0-b447-31354e623e97'},
							success	: function(result) {
								if (result.result == true) {
									location.reload();
								} else {
									layerAlert('반품신청 취소가 진행되지 않았습니다.<br/> 반품신청 취소에 대해 1:1문의나 CS센터<br/>(1800-5700)에 문의주세요.')
								}
							},
							error	: function(e) {
								layerAlert('반품신청 취소가 진행되지 않았습니다.<br/> 반품신청 취소에 대해 1:1문의나 CS센터<br/>(1800-5700)에 문의주세요.')
							}
						});
	    			}else{
	    				layerAlert('반품신청 취소가 진행되지 않았습니다.<br/> 반품신청 취소에 대해 1:1문의나 CS센터<br/>(1800-5700)에 문의주세요.')
	    			}
	    		},
	    		error : function(error){
	    			layerAlert('반품신청 취소가 진행되지 않았습니다.<br/> 반품신청 취소에 대해 1:1문의나 CS센터<br/>(1800-5700)에 문의주세요.')
	    		}
	    	})
	    };
	}

//]]>
</script>
				<div class="order_info clearfix">
					<div class="order_num">
						<strong>주문번호 : <span>221012P15336437</span></strong>
					</div>
					<div class="order_date">주문일시 : 2022.10.12. 09:40</div>
				</div>

				<div class="title_wrap mt50">
					<h4>주문상품</h4>
				</div>
				<!-- Table -->
				<div class="tblwrap lncl1812">
					<table class="tbl_ltype ">
						<caption>주문상품</caption>
						<colgroup>
							<col style="width: 340px;">
							<col style="width: 45px;">
							<col style="width: 96px">
							<col style="width: 96px">

							<col style="width: 121px">
							<col style="width: 110px">
						</colgroup>
						<thead>
							<tr>
								<th scope="col">상품정보</th>
								<th scope="col" style="word-break: keep-all;">수량</th>
								<th scope="col">판매가</th>
								<th scope="col" style="word-break: keep-all;">실결제금액</th>
								<th scope="col">적립 한섬마일리지</th>
								<th scope="col">주문상태</th>
							</tr>
						</thead>
						<tbody class="tbody_200618">
							<tr class="al_middle">
								<td class="frt">
									<!-- pt_list_all -->
									<div class="pt_list_all">

										<a href="/ko/p/YS2D1ACK001WHD_BK_FR"><img
											src="http://newmedia.thehandsome.com/YS/2D/SS/YS2D1ACK001WHD_BK_S01.jpg"
											alt="상품 이미지"></a>
										<div class="tlt_wrap">
											<a href="/ko/p/YS2D1ACK001WHD_BK_FR" class="basket_tlt">
												<span class="tlt">FOURM THE STORE</span> <span
												class="sb_tlt sb_tlt_wrap2006"> [HIDDEN FOREST
													MARKET] 캔디 포인트 양말</span>
											</a>
											<p class="color_op">
												color : BLACK<span class="and_line">/</span>size : FR
											</p>
											<p class="prd_mileage_txt2006">한섬마일리지 : 0.0% / H.Point :
												0.0%</p>
										</div>
									</div> <!-- 2020.01.23 hmk 결품 여부 확인 -->
									<p name="__p_YS2D1ACK001WHD_BK_FR" class="guide_comment2"
										style="display: none; text-align: left;">해당 상품은 전국 매장을 통해
										수급하여 배송 될 예정입니다. 불량 등의 이유로 수급이 어려울 경우, 취소될 수 있습니다. (평일 기준 5일
										이상 소요 예정)</p> <script type="text/javascript">getOnlineStock( 'YS2D1ACK001WHD_BK_FR' );</script>
									<!-- //pt_list_all -->
								</td>
								<td><del>1</del> 0</td>
								<td>
									<!-- price_wrap -->
									<div class="price_wrap">
										<span style="word-break: keep-all; white-space: nowrap;">

											₩ 0</span>
									</div> <!-- //price_wrap -->
								</td>
								<td>
									<!-- price_wrap -->
									<div class="price_wrap">
										<!-- 글로벌 관세 적용 상품금액 표시시 관세 제외금액으로 표시 20191118 남일희 -->
										<span> ₩ 0</span>
									</div> <!-- //price_wrap -->
								</td>
								<td rowspan="2">한섬마일리지<br>
									<p class="num">0M</p> <br> H.Point<br>
									<p class="num">0P</p>
								</td>
								<td>
									<p class="num">
										취소<span class="sum_date" style="margin: 0 auto;">(2022.10.12)</span>
									</p>
								</td>
							</tr>

							<tr class="al_middle">
								<td class="frt">
									<!-- pt_list_all -->
									<div class="pt_list_all">

										<a href="/ko/p/YN2C9ACK491W_BG_FR"><img
											src="http://newmedia.thehandsome.com/YN/2C/FW/YN2C9ACK491W_BG_S01.jpg"
											alt="상품 이미지"></a>
										<div class="tlt_wrap">
											<a href="/ko/p/YN2C9ACK491W_BG_FR" class="basket_tlt"> <span
												class="tlt">FOURM THE STORE</span> <span
												class="sb_tlt sb_tlt_wrap2006"> 울 블렌드 멜란지 양말</span>
											</a>
											<p class="color_op">
												color : BEIGE<span class="and_line">/</span>size : FR
											</p>
											<p class="prd_mileage_txt2006">한섬마일리지 : 0.0% / H.Point :
												0.0%</p>
										</div>
									</div> <!-- 2020.01.23 hmk 결품 여부 확인 -->
									<p name="__p_YN2C9ACK491W_BG_FR" class="guide_comment2"
										style="display: none; text-align: left;">해당 상품은 전국 매장을 통해
										수급하여 배송 될 예정입니다. 불량 등의 이유로 수급이 어려울 경우, 취소될 수 있습니다. (평일 기준 5일
										이상 소요 예정)</p> <script type="text/javascript">getOnlineStock( 'YN2C9ACK491W_BG_FR' );</script>
									<!-- //pt_list_all -->
								</td>
								<td><del>1</del> 0</td>
								<td>
									<!-- price_wrap -->
									<div class="price_wrap">
										<span style="word-break: keep-all; white-space: nowrap;">

											₩ 0</span>
									</div> <!-- //price_wrap -->
								</td>
								<td>
									<!-- price_wrap -->
									<div class="price_wrap">
										<!-- 글로벌 관세 적용 상품금액 표시시 관세 제외금액으로 표시 20191118 남일희 -->
										<span> ₩ 0</span>
									</div> <!-- //price_wrap -->
								</td>
								<td>
									<p class="num">
										취소<span class="sum_date" style="margin: 0 auto;">(2022.10.12)</span>
									</p>
								</td>
							</tr>

						</tbody>
					</table>
					<!-- //Table -->
				</div>

				<div class="title_wrap mt50 clearfix">
					<h4 class="float_left">결제정보</h4>
					<div class="btn_wrap">
						<a href="javascript:void(0);" id="detailViewBtn"
							class="btn add_ss mr0">&nbsp;&nbsp;상세보기&nbsp;&nbsp;</a> <a
							href="javascript:receiptRequest('1');" id="receiptBtn"
							class="btn add_ss mr0">영수증출력</a><br />
					</div>
				</div>
				<!-- Table -->
				<div class="tblwrap">

					<table class="tbl_ltype payment_info">
						<caption>결제정보 항목</caption>
						<colgroup>
							<col style="width: 25%">
							<col style="width: 25%">
							<col style="width: 25%">
							<col style="width: 25%">
						</colgroup>
						<thead>
							<tr>
								<th scope="col">판매가</th>
								<th scope="col">배송비</th>
								<th scope="col">총할인금액</th>
								<th scope="col">총결제금액</th>
							</tr>
						</thead>
						<tbody>
							<tr class="al_middle">
								<td class="frt">₩ 0</td>
								<td>₩ 0</td>
								<td><span><span class="minus">-</span>₩ 0</span></td>
								<td class="total">₩ 0</td>
							</tr>
							<tr>
								<td colspan="2" class="frt">&nbsp;</td>
								<td>
									<ul class="price_info">
										<li style="overflow: hidden"><em>쿠폰 할인</em> <span><span
												class="minus">-</span>₩ 0</span></li>
										<li style="overflow: hidden"><em>플러스포인트쿠폰 할인</em> <span><span
												class="minus">-</span>₩ 0</span></li>
										<li style="overflow: hidden"><em>한섬 VVIP 혜택 할인</em> <span><span
												class="minus">-</span>₩ 0</span></li>
										<!-- <li>
												<em>SET상품할인</em>
												<span>₩0</span>
											</li> -->
									</ul>
								</td>
								<td>
									<ul class="price_info">
										<li><em> 신용카드</em> <span>₩ 0</span></li>
										<li><em>한섬마일리지</em> <span>0M</span></li>
										<li><em>e-money</em> <span>0P</span></li>
										<li><em>H.Point</em> <span>0P</span></li>
										<li><em>기프트 카드</em> <span>₩ 0</span></li>
									</ul>
								</td>
							</tr>
						</tbody>
					</table>


					<table class="tbl_wtype1 none mt10 e-gift1812">
						<caption>결제정보 항목</caption>
						<colgroup>
							<col style="width: 18%">
							<col style="width: 82%">
						</colgroup>
						<tbody>
							<tr>
								<th scope="row">주 결제수단</th>
								<td>신한카드&nbsp;(5107-****-****-****)</td>
							</tr>
							<tr>
								<th scope="row">실 결제금액</th>
								<td>₩ 0</td>
							</tr>
							<tr>
								<th scope="row">할부 개월 수</th>
								<td>일시불</td>
							</tr>
						</tbody>
					</table>
				</div>
				<!-- //Table -->





				<div class="title_wrap mt50 clearfix">
					<h4 class="float_left">배송지 정보</h4>
				</div>

				<!-- Table -->
				<div class="tblwrap">
					<table class="tbl_wtype1 mt10">
						<caption>배송지 정보</caption>
						<colgroup>
							<col style="width: 18%">
							<col style="width: 82%">
						</colgroup>
						<tbody>
							<tr>
								<th scope="row">배송지 주소</th>
								<td>(05211) 서울특별시 강동구 아리수로91길 12(강일동)&nbsp;12동</td>
							</tr>
							<tr>
								<th scope="row">수령인</th>
								<td>박서은</td>
							</tr>
							<tr>
								<th scope="row">휴대폰</th>
								<td>010-2631-3279</td>
							</tr>
							<tr>
								<th scope="row">연락처</th>
								<td>--</td>
							</tr>
						</tbody>
					</table>
				</div>
				<!-- //Table -->

				<!-- Guide Table -->
				<div class="gd_list com pl0">
					<dl>
						<dt>증빙서류출력 안내</dt>
						<dd>
							<ul class="bul_sty01_li">
								<li>신용카드로 결제하신 경우에만 카드전표를 출력할 수 있습니다.</li>
								<li>실시간계좌이체 혹은 가상계좌를 통해 결제하신 경우 영수증 출력이 가능하나, 결제 시 현금 영수증
									미발행을 <br />선택하셨다면 영수증 출력이 불가능 합니다.
								</li>
								<li>한섬마일리지 및 기프트카드의 경우 일부 현금영수증 발행 대상 금액에서 제외되며, 결제금액과 상이할
									수 있습니다.</li>
								<li>부분취소 발생시 취소금액이 적용되어, 증빙 금액이 변경될 수 있습니다.</li>
							</ul>
						</dd>
					</dl>
				</div>
				<!-- //Guide Table -->
				<div class="btnwrap mt0 ">
					<a href="javascript:history.back();" class="btn wt">이전 페이지로</a>
				</div>

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

$(document).ready(function(){
	
	getReviewExchangeRate();	
	
	if("false"){
		
		//파일 체크
	    $(document).on('change', 'input[type=file]', function() {
	        var file = null;
	        var fileName = "";
	        var fileSize = "";
	        var maxSize = 10 * 1024 * 1024;
	
	        if ($.browser.msie) {
	            if($(this).val() == null || $(this).val() == ""){
	                $("input[name=fileText]").val("");
	                return;
	            }
	            fileSize = 10; 
	            fileName = $(this).val().split(".");
	        }else{
	            
	            file = $(this)[0].files[0];
	            if(file == null){   
	                $("input[name=fileText]").val("");
	                return;
	            }
	            
	            fileName = $(this)[0].files[0].name.split(".");
	            fileSize = $(this)[0].files[0].size;    
	        }
	        
	        var fileExtension = fileName[parseInt(fileName.length-1)].toUpperCase();
	        
	        if(fileExtension == 'JPG'|| fileExtension == 'JPEG' || fileExtension == 'GIF'|| fileExtension == 'PNG'){
	                
	        }else{
	            $(this).val('');
	            $("input[name=fileText]").val('');
	            var la = new layerAlert('파일 확장자를 확인해 주세요.');
	            return;
	        }
	        
	        if(fileSize > maxSize){
	            $(this).val('');
	            $("input[name=fileText]").val('');
	            var la = new layerAlert('10MB 미만의 jpg,gif,png 파일만 첨부하실 수 있습니다.');
	            return;
	        }
	        
	        
	        if($(this).attr("id").indexOf("reviewFile") > -1){
	        	var liLen = $('form[name=reviewForm] .file_image_wrap2003 li').length;
	        	
	        	if(liLen < 5){
	        		var fileLen = $('form[name=reviewForm] input[type=file]').length;
		        	var html = '';
		        	
			        	html += '<input type="file" name="reviewFile" id="reviewFile'+fileIdx+'" class="btn add_s" title="파일찾기">';
			        	html += '<label for="reviewFile'+fileIdx+'">';
			        	html += '<span id="uploadFile1" class="img_upload">파일찾기</span>';        	
			        	html += '</label>';
		        	
		        	$('form[name=reviewForm] .upload_btn label').eq(fileLen-1).hide();
		        	$('form[name=reviewForm] .upload_btn input[type=file]').eq(fileLen-1).hide();
		        	$("form[name=reviewForm] .upload_btn").append(html);
		        	
					var html = '';
					
						html += '<li class="file_image">';
			        	html += '<span>'+$(this)[0].files[0].name+'</span>';
			        	html += '<a href="javascript:void(0);" class="file_del" onclick="deleteReviewFile($(this),'+fileIdx+');">파일삭제</a>';
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
	        $("#thFile").css("font-weight","normal");
	    });
		
	}
});

function hideProductLayer() {
	$('.layerArea').remove();
}

function viewPopup(v){
	var obj=$("#"+v.split("#")[1]);
	var lp=($(window).width()-740)/2;
	var tp=$(window).scrollTop();
	
	if(lp < 0) lp=0;
	if(tp < 0) tp=0;
	
	obj.css("top", tp).css("left", lp).css("position", "absolute").css("z-index", 101);
	obj.show();
	
	return false;
}

function showProductLayer() {
	$("#productLayer").show();
}

function starCnt() {//상품평 별점 선택
	$('.btn_star_score li a').on('click',function() {
		var idx=$(this).parent('li').index()+1;
		for(var i=1;i<6;i++){
			$('.write_star_score1807 .cmt_star .cmt_per').removeClass('star'+i);
		}
		$('.write_star_score1807 .cmt_star .cmt_per').addClass('star'+idx);
	});
}

function checkCategoryType(code) {
    
    if(isCosmetic) {
        return "cosmetic";
    }else if(isPerfume) {
        return "perfume";
    }
    
	var rtnValue = "";
	var topType = "SZ01,SZ02,SZ03,SZ04,SZ05,SZ06,SZ07,SZ08".split(",");
	var bottomsType = "SZ09,SZ10,SZ11".split(",");
	var loop = true;
	
	for(var i=0; i < topType.length; i++) {
		if(code == topType[i]) {
			rtnValue = "top";
			loop = false;
			break;
		}
	}
	
	if(loop) {
		for(var i=0; i < bottomsType.length; i++) {
			if(code == bottomsType[i]) {
				rtnValue = "bottoms";
				loop = false;
				break;
			}
		}
	}
	
	return rtnValue;
}

function reviewReset(){
	//색상 초기화
	$("#customerReviewWriteDiv .color_chip li > a").each(function(){
	     $(this).removeClass("on");
	});
	$("#customerReviewWriteDiv #colorNameContent").html("");
	
	//사이즈 초기화
	$("#customerReviewWriteDiv .size_chip li > a").each(function(){
	     $(this).removeClass("on");
	});
	
	//연령
	$("#customerReviewWriteDiv input[name=age]").prop("checked",false);
	
	//체형
	$("#customerReviewWriteDiv input[name=bodyType]").prop("checked",false);
	
	//키
	$("#customerReviewWriteDiv #height").val("");
	
	//평소 사이즈
	$("#customerReviewWriteDiv #enjoySize").val("");
	
	//실착용
	$("#customerReviewWriteDiv input[name=realWearSize]").prop("checked",false);
	
	//실 제품 색상
	$("#customerReviewWriteDiv input[name=realProductColor]").prop("checked",false);
	
	//상품평
	$("#customerReviewWriteDiv #reviewHeadline").val("");
	
	//사진등록
	$("#customerReviewWriteDiv #textReviewFile").val("");
	
	//평점
	$("#customerReviewWriteDiv .btn_star_score li:eq(4) > a").click();
	
	//파일리스트 초기화
	var labelLeng = $('#customerReviewWriteDiv .upload_btn label').length-1;
    $('#customerReviewWriteDiv .upload_btn label').each(function(i){
    	if(i != labelLeng){
    		$('#customerReviewWriteDiv .upload_btn label').eq(0).remove();
    		$('#customerReviewWriteDiv .upload_btn input[type=file]').eq(0).remove();
    	}
    });
    
	//올린파일
	$("#customerReviewWriteDiv #uploadedFiles").hide();
	$("#customerReviewWriteDiv .file_image_wrap2003 li").remove();
	
	//상품 매장 구매여부
	$("#packopt").prop("checked",false);
	
	$(".slct_opt").remove();
	
	$("#realWearSizeTR").empty();
	
	$("#realColorTR").empty();
	
	$("#thFile").css("color", "black");
	$("#thFile").css("font-weight","normal");
}

function uploadFilesubmit(writeType, returnType) {
	var url = "";
	if(writeType == "write") {
		url = "/ko/mypage/reviewWriteNew";
	} else {
		url = "/ko/mypage/modifyCustomerReview";
	}
	
	if ($('#packopt').is(':checked')) {
		$("#purchaseProdYN").val("Y");
	}else {
		$("#purchaseProdYN").val("N");
	};
	
	$("#reviewHeadline").val(encodeText($("#reviewHeadline").val()));
	
	
	var checkCategory = checkCategoryType($("#categoryCode").val());
	if(checkCategory == "top" || checkCategory == "bottoms") {
		if(checkCategory == "top") {
			$('input[name="shoulderWidth"]').each(function(index){
				if ($(this).is(':checked')) {
					$("#shoulderWidth").val($(this).val());
				}
			});
			$('input[name="chestSize"]').each(function(index){
				if ($(this).is(':checked')) {
					$("#chestSize").val($(this).val());
				}
			});
		} else if(checkCategory == "bottoms") {
			$('input[name="waistSize"]').each(function(index){
				if ($(this).is(':checked')) {
					$("#waistSize").val($(this).val());
				}
			});
			$('input[name="buttSize"]').each(function(index){
				if ($(this).is(':checked')) {
					$("#buttSize").val($(this).val());
				}
			});
		}
		$('input[name="totalSize"]').each(function(index){
			if ($(this).is(':checked')) {
				$("#totalSize").val($(this).val());
			}
		});
		$('input[name="realProductColor"]').each(function(index){
			if ($(this).is(':checked')) {
				$("#realProductColor").val($(this).val());
			}
		});
	}
	// 분기 처리 대상
		
	
	var liSize = $('form[name=reviewForm] .file_image_wrap2003 li').size();
    var fileSize = $('form[name=reviewForm] .upload_btn input[type=file]').size();
    //사진 전체 삭제여부 체크
    if(liSize == 0){
		$("#fileDeleteYN").val("Y");
	}
	
	if ( fileSize <= 1 ) {
		var param = $('form[name=reviewForm]').serialize();
		
		$.ajax({
			url	 : url + '?CSRFToken=c8d6b9e8-78d2-4ad0-b447-31354e623e97',
			type	: 'POST',
			dataType: 'json',
			data	: param,
			success : function(data) {
				if(data.rsltCd == "F") {
					var la = new layerAlert(data.rsltMsg);
					return;
				} else {
					var la;
					if(data == "F_PHOTO") {
						la = new layerAlert("최초 포토상품평 작성으로 마일리지 지급이<br/>완료 된 상품평 입니다.<br /><br/>사진을 첨부해서 상품평을 수정해 주세요.");
						la.confirmAction = function() {
							$("#thFile").css("color", "#ff0000");
							$("#thFile").css("font-weight","normal");
							$("#textReviewFile").focus();
						};
						return;
					} else if(data == "No Match") {
						la = new layerAlert("잘못된 접근입니다.");
						return;
					} else if(data == "FAIL") {
						la = new layerAlert("예상치 못한 오류가 발생하였습니다.</br>다시 시도해 주시기 바랍니다.");
						return;
					} else {
						if(writeType == "write") {
							la = new layerAlert("상품평이 등록되었습니다.");
						} else if(writeType == "modify") {
							la = new layerAlert("상품평이 수정되었습니다.");
						}
						la.confirmAction = function() {
							hideProductLayer();
							$(".popwrap").remove();
							if(returnType == "review") {
								location.href = '/ko/mypage/myreview?returnType=write';
							} else if(returnType == "order") {
								location.href = '/ko/mypage/order/myorders';
							} else if(returnType == "myMain") {
								location.href = '/ko/mypage';
							} else {
								location.href = '/ko/mypage/myreview?returnType=write';
							}
						};
					}
				}
			},
			error   : function(xhr, Status, error) {
				alert(error);
			}
		});
	} else {
		
		var labelLeng = $('form[name=reviewForm] .upload_btn label').length - 1;
    	$('form[name=reviewForm] .upload_btn label').each(function(i){
    		if(i != labelLeng){
    	    	$('form[name=reviewForm] .upload_btn input[type=file]').eq(i).attr("name", "reviewFile"+(i==0?"":i));
    		} else {
    			$('form[name=reviewForm] .upload_btn input[type=file]').eq(i).attr("disabled",true);
    		}
        });
    	
		
		
		$('form[name=reviewForm]').ajaxSubmit({
			url	 : url + '?CSRFToken=c8d6b9e8-78d2-4ad0-b447-31354e623e97',
			type	: 'POST',
			async   : false,
			success : function(data) {
				if(data.rsltCd == "F") {
					var la = new layerAlert(data.rsltMsg);
					return;
				} else {
					var la;
					if(writeType == "write") {
						la = new layerAlert("상품평이 등록되었습니다.");
					} else if(writeType == "modify") {
						la = new layerAlert("상품평이 수정되었습니다.");
					}
					la.confirmAction = function() {
						hideProductLayer();
						$(".popwrap").remove();
						if(returnType == "review") {
							location.href = '/ko/mypage/myreview?returnType=write';
						} else if(returnType == "order") {
							location.href = '/ko/mypage/order/myorders';
						} else if(returnType == "myMain") {
							location.href = '/ko/mypage';
						} else {
							location.href = '/ko/mypage/myreview?returnType=write';
						}
					};
				}
			},
			error   : function(xhr, Status, error) {
				alert(error);
			}
		}); 
	}
}

function openPopupReview(code, orderNumber, color, pPrice, imageUrl, bName, pName, categoryCode, returnType) {
	// 상품평 초기화
	reviewReset();
	
	$.ajax({
		url     : '/ko/mypage/reviewWriteBeforeVerify',
		type    : 'GET',
		datatype: 'json',
		data : {
				"productCode" : code,
				"orderNumber" : orderNumber
		},
		success : function(data) {
		    isCosmetic = data.isCosmetic;
		    isPerfume = data.isPerfume;
			reviewWriteHtml(categoryCode, returnType);
			
			$("#height").val(data.height);
			$("#enjoySize").val(data.enjoySize);
			if(data.bodyType != null && data.bodyType != ""){
				$('input[name="bodyType"]').each(function(index){
					if(data.bodyType == $(this).val()){
						$(this).attr('checked', true);
					}else {
						$(this).attr('checked', false);
					}
				});
			}
			
			var codeArray = code.split('_');
			var style = codeArray[1];
			var size = codeArray[2];
			
			$('#photoAccumulationRightYn').val(data.photoAccumulationRightYn);
			if ( data.orderProductReviewList.length > 0 ) {
				$('.select_options_wrap').hide(); // 색상, 사이즈 박스
				var productOptions = '' ;
				$.each(data.orderProductReviewList, function(idx, productOption) {
					if(orderNumber == productOption[1] && style == productOption[3] && size == productOption[5]) {
					    if(data.brandCode == "BR62") {
					        productOptions += '<span class="slct_opt">더한섬닷컴  /  COLOR : ' + productOption[4] + '</span>';    
					    }else {
					        productOptions += '<span class="slct_opt">더한섬닷컴  /  COLOR : ' + productOption[4] + '  /  SIZE : ' + productOption[5] + '</span>';
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
				$('#packopt').on('click', function(e) {
					e.preventDefault();
					return;
				});
			}
			
			$("#reviewFile").val("");
			$("#textReviewFile").val("");
			$("#reviewHeadline").val("");
			
			var prodCode = code;
			var prodSize = "";
			if(prodCode.indexOf('_') > -1){
				var tmpPnt = prodCode.lastIndexOf('_');
				prodSize = prodCode.substring(tmpPnt+1,prodCode.length);
				prodCode = prodCode.substring(0,tmpPnt);
				if(prodCode.indexOf('_') > -1){
					$("#review_color_name").text(color);
					$("#review_size").text(prodSize);
					if('' == 'review'){ // 주문조회에서 왔을 경우 미표시
						$(".options_change").css("display", "none");    
					}
				} else {
					$(".review_header_wrapper").css("margin-top","16px");
				}
			}
			
			var review_color_name = $("#colorName").val();
			$("#review_color_name").text(review_color_name);
			
			var price = getReviewExchangePrice(pPrice);
			
			$("#productCode").val(code);
			$("#categoryCode").val(categoryCode);
			//$("#orderNumber").val(orderNumber);
			$("#reviewWriteProductImg").attr('src',imageUrl);
			$("#reviewWriteProductPrice").text(price);
			$("#reviewWriteProductBrandName").text(unescape(bName));
			$("#reviewWriteProductName").text(pName);
			$('#closeWriteChk').val('Y');
			
			
		},
		error   : function() {
			var la = new layerAlert("[Error] " + error);
			return;
		}
	});
}
function deleteReviewFile(li,idx){
   
	li.parent().remove();
	
    idx -= 1
    
    if(idx == 0) { idx = "";}
    $('.upload_btn label[for=reviewFile'+idx+']').remove();
	$('.upload_btn #reviewFile'+idx).remove();
	if ( $('#productId').val() != '' && $('#productId').val() != null ) {
		if(li.attr("id") != "" && li.attr("id") != null){	
			$("#reviewFileCd"+(li.attr("id")=="0"?"":li.attr("id"))).val('');
		}
	}
}

function reviewWriteHtml(categoryCode, returnType) {
	var reqd = "";
	if(checkCategoryType(categoryCode) == "top" || checkCategoryType(categoryCode) == "bottoms" || checkCategoryType(categoryCode) == "cosmetic" || checkCategoryType(categoryCode) == "perfume") {
		reqd = "<strong class='reqd'>*</strong>";
	}
	var reviewhtml="";
	reviewhtml = '<div class="layerArea">';
	reviewhtml +='<div class="layerBg"></div> ';
	reviewhtml +='<form id="reviewForm" style="width:780px;" method="post" commandName="reviewForm" name="reviewForm" enctype="multipart/form-data">';
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
	reviewhtml += "        <input type='hidden' id='photoAccumulationRightYn' name='photoAccumulationRightYn' value=''>";
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
	if(checkCategoryType(categoryCode) == "cosmetic" || checkCategoryType(categoryCode) == "perfume") {
	reviewhtml += "                            <col style='width:30px''>";  
	}else {
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
	reviewhtml += "                                            <a href='#;'><img src='' id='reviewWriteProductImg' alt='product Image'></a>";
	reviewhtml += "                                            <div class='tlt_wrap review_header_wrapper'>";
	reviewhtml += "                                                <a href='#;' class='basket_tlt'>";
	reviewhtml += "                                                    <span class='tlt' id='reviewWriteProductBrandName'></span>";
	reviewhtml += "                                                    <span class='sb_tlt' id='reviewWriteProductName'></span> / <span id='reviewWriteProductPrice'></span>";
	reviewhtml += "                                                </a>";
	reviewhtml += "                                            </div>";
	reviewhtml += "                                            <div class='select_group' id='productOption' style='display:none;'>";
	reviewhtml += "                                            </div>";
	reviewhtml += "                                            <div class='check_stl shoppurchase_check_wrap' onclick=\"$('#packopt').click();\" style='display:none;'>";
	reviewhtml += "                                                <input type='checkbox' id='packopt' name='packopt' value=''>";
	reviewhtml += "                                                <label for='shoppurchase_check' class='shoppurchase_check'>매장에서 구매한 상품입니다.</label>";
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
	if(checkCategoryType(categoryCode) == "top" || checkCategoryType(categoryCode) == "bottoms") {
	reviewhtml += "                         <tr class='input_txt_1905'>";
	reviewhtml += "                             <th scope='row' class='th_space' id='thHeight'>"+reqd+"키</th>";
	reviewhtml += "                             <td><input type='text' name='height' id='height' style='width:75%amrgin-right:10px'>cm</td>";
	reviewhtml += "                             <th scope='row' class='th_space' id='thEnjoySize'>"+reqd+"평소 사이즈</th>";
	reviewhtml += "                             <td><input type='text' name='enjoySize' id='enjoySize'></td>";
	reviewhtml += "                         </tr>";
	reviewhtml += "                         <tr class='radio_btn_1905'>";
	reviewhtml += "                             <th scope='row' class='th_space' id='thBodyType'>"+reqd+"체 형</th>";
	reviewhtml += "                             <td colspan='3'>";
	reviewhtml += "                                 <input id='dark1' type='radio' name='bodyType' value='마른 체형'>";
	reviewhtml += "                                 <label for='dark1'>마른 체형</label>";
	reviewhtml += "                                 <input id='dark2' type='radio' name='bodyType' value='보통'>";
	reviewhtml += "                                 <label for='dark2'>보통</label>";
	reviewhtml += "                                 <input id='dark3' type='radio' name='bodyType' value='통통한 체형'>";
	reviewhtml += "                                 <label for='dark3'>통통한 체형</label>";
	reviewhtml += "                             </td>";
	reviewhtml += "                         </tr>";
	}
	if(checkCategoryType(categoryCode) == "cosmetic" || checkCategoryType(categoryCode) == "perfume") {
	reviewhtml += "                         <tr class='radio_btn_1905'>";
	reviewhtml += "                             <th scope='row' class='th_space' id='thSkinType'>"+reqd+"피부 타입</th>";
	reviewhtml += "                             <td colspan='3'>";
	reviewhtml += "                                 <input id='skin1' type='radio' name='skinType' value='건성'>";
	reviewhtml += "                                 <label for='skin1'>건성</label>";
	reviewhtml += "                                 <input id='skin2' type='radio' name='skinType' value='지성'>";
	reviewhtml += "                                 <label for='skin2'>지성</label>";
	reviewhtml += "                                 <input id='skin3' type='radio' name='skinType' value='복합성'>";
	reviewhtml += "                                 <label for='skin3'>복합성</label>";
	reviewhtml += "                                 <input id='skin4' type='radio' name='skinType' value='민감성'>";
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
	reviewhtml += "                                         <input type='hidden' id='rating' name='rating' value='5'>";
	reviewhtml += "                                     </ul>";
	reviewhtml += "                                     <p>평점을 선택해 주세요.</p>";
	reviewhtml += "                                 </div>";
	reviewhtml += "                             </th>";
	reviewhtml += "                         </tr>";
	if(checkCategoryType(categoryCode) == "top" || checkCategoryType(categoryCode) == "bottoms") {
	reviewhtml += "                         <tr>";
	reviewhtml += "                             <th scope='row' class='th_space'><strong class='reqd'>*</strong>실 착용 사이즈</th>";
	reviewhtml += "                             <td colspan='3'>";
		if(checkCategoryType(categoryCode) == "top") {
	reviewhtml += "                                 <!--20190529_상품평활성화-->";
	reviewhtml += "                                 <div class='cont_detail'>";
	reviewhtml += "                                     <p class='left_txt'>어깨너비 : </p>";
	reviewhtml += "                                     <ul class='rd_box_radio_list'>";
	reviewhtml += "                                         <li>";
	reviewhtml += "                                             <input id='shoulderWidth_1' type='radio' name='shoulderWidth' value='1'>";
	reviewhtml += "                                             <label for='shoulderWidth_1'>타이트함</label>";
	reviewhtml += "                                         </li>";
	reviewhtml += "                                         <li>";
	reviewhtml += "                                             <input id='shoulderWidth_2' type='radio' name='shoulderWidth' value='2'>";
	reviewhtml += "                                             <label for='shoulderWidth_2'>적당함</label>";
	reviewhtml += "                                         </li>";
	reviewhtml += "                                         <li>";
	reviewhtml += "                                             <input id='shoulderWidth_3' type='radio' name='shoulderWidth' value='3'>";
	reviewhtml += "                                             <label for='shoulderWidth_3'>여유있음</label>";
	reviewhtml += "                                         </li>";
	reviewhtml += "                                     </ul>";
	reviewhtml += "                                 </div>";
	reviewhtml += "                                 <div class='cont_detail'>";
	reviewhtml += "                                     <p class='left_txt'>가슴둘레 : </p>";
	reviewhtml += "                                     <ul class='rd_box_radio_list'>";
	reviewhtml += "                                         <li>";
	reviewhtml += "                                             <input id='chestSize_1' type='radio' name='chestSize' value='1'>";
	reviewhtml += "                                             <label for='chestSize_1'>타이트함</label>";
	reviewhtml += "                                         </li>";
	reviewhtml += "                                         <li>";
	reviewhtml += "                                            <input id='chestSize_2' type='radio' name='chestSize' value='2'>";
	reviewhtml += "                                            <label for='chestSize_2'>적당함</label>";
	reviewhtml += "                                         </li>";
	reviewhtml += "                                         <li>";
	reviewhtml += "                                             <input id='chestSize_3' type='radio' name='chestSize' value='3'>";
	reviewhtml += "                                             <label for='chestSize_3'>여유있음</label>";
	reviewhtml += "                                         </li>";
	reviewhtml += "                                     </ul>";
	reviewhtml += "                                 </div>";
		} else if(checkCategoryType(categoryCode) == "bottoms") {
	reviewhtml += "                                 <div class='cont_detail'>";
	reviewhtml += "                                     <p class='left_txt'>허리둘레 : </p>";
	reviewhtml += "                                     <ul class='rd_box_radio_list'>";
	reviewhtml += "                                         <li>";
	reviewhtml += "                                             <input id='waistSize_1' type='radio' name='waistSize' value='1'>";
	reviewhtml += "                                             <label for='waistSize_1'>타이트함</label>";
	reviewhtml += "                                         </li>";
	reviewhtml += "                                         <li>";
	reviewhtml += "                                             <input id='waistSize_2' type='radio' name='waistSize' value='2'>";
	reviewhtml += "                                             <label for='waistSize_2'>적당함</label>";
	reviewhtml += "                                         </li>";
	reviewhtml += "                                         <li>";
	reviewhtml += "                                             <input id='waistSize_3' type='radio' name='waistSize' value='3'>";
	reviewhtml += "                                             <label for='waistSize_3'>여유있음</label>";
	reviewhtml += "                                         </li>";
	reviewhtml += "                                     </ul>";
	reviewhtml += "                                 </div>";
	reviewhtml += "                                 <div class='cont_detail'>";
	reviewhtml += "                                     <p class='left_txt'>엉덩이둘레 : </p>";
	reviewhtml += "                                     <ul class='rd_box_radio_list'>";
	reviewhtml += "                                         <li>";
	reviewhtml += "                                             <input id='buttSize_1' type='radio' name='buttSize' value='1'>";
	reviewhtml += "                                             <label for='buttSize_1'>타이트함</label>";
	reviewhtml += "                                         </li>";
	reviewhtml += "                                         <li>";
	reviewhtml += "                                            <input id='buttSize_2' type='radio' name='buttSize' value='2'>";
	reviewhtml += "                                            <label for='buttSize_2'>적당함</label>";
	reviewhtml += "                                         </li>";
	reviewhtml += "                                         <li>";
	reviewhtml += "                                             <input id='buttSize_3' type='radio' name='buttSize' value='3'>";
	reviewhtml += "                                             <label for='buttSize_3'>여유있음</label>";
	reviewhtml += "                                         </li>";
	reviewhtml += "                                     </ul>";
	reviewhtml += "                                 </div>";
		}
	reviewhtml += "                                 <div class='cont_detail'>";
	reviewhtml += "                                     <p class='left_txt'>총길이 : </p>";
	reviewhtml += "                                     <ul class='rd_box_radio_list'>";
	reviewhtml += "                                         <li>";
	reviewhtml += "                                             <input id='totalSize_1' type='radio' name='totalSize' value='1'>";
	reviewhtml += "                                             <label for='totalSize_1'>타이트함</label>";
	reviewhtml += "                                        </li>";
	reviewhtml += "                                        <li> ";
	reviewhtml += "                                             <input id='totalSize_2' type='radio' name='totalSize' value='2'>";
	reviewhtml += "                                             <label for='totalSize_2'>적당함</label>";
	reviewhtml += "                                         </li>";
	reviewhtml += "                                         <li>";
	reviewhtml += "                                            <input id='totalSize_3' type='radio' name='totalSize' value='3'> ";
	reviewhtml += "                                            <label for='totalSize_3'>긴 편</label>";
	reviewhtml += "                                         </li>";
	reviewhtml += "                                     </ul>";
	reviewhtml += "                                 </div>";
	reviewhtml += "                                 <!--//20190529_상품평활성화-->";
	reviewhtml += "                             </td>";
	reviewhtml += "                         </tr>";
	reviewhtml += "                         <tr>";
	reviewhtml += "                             <th scope='row' class='th_space'><strong class='reqd'>*</strong>실 제품 색상</th>";
	reviewhtml += "                             <td colspan='3'>";
	reviewhtml += "                                 <input id='dark' type='radio' name='realProductColor' value='1'>";
	reviewhtml += "                                 <label for='dark'>어두워요</label>";
	reviewhtml += "                                 <input id='same' type='radio' name='realProductColor' class='ml20' value='2'>";
	reviewhtml += "                                 <label for='same'>화면과 같아요</label>";
	reviewhtml += "                                 <input id='light' type='radio' name='realProductColor' class='ml20' value='3'>";
	reviewhtml += "                                 <label for='light'>밝아요</label>";
	reviewhtml += "                             </td>";
	reviewhtml += "                         </tr>";
	} else if (checkCategoryType(categoryCode) == "cosmetic") {
    reviewhtml += "                         <tr>";
	reviewhtml += "                             <th colspan='2' scope='row' class='th_space'><strong class='reqd'>*</strong>보습력은 어떤가요?</th>";
	reviewhtml += "                             <td colspan='2'>";
	reviewhtml += "                                 <input id='moisturize1' type='radio' name='moisturize' value='1'>";
	reviewhtml += "                                 <label for='moisturize1'>조금 건조해요</label>";
	reviewhtml += "                                 <input id='moisturize2' type='radio' name='moisturize' class='ml20' value='2'>";
	reviewhtml += "                                 <label for='moisturize2'>보통이에요</label>";
	reviewhtml += "                                 <input id='moisturize3' type='radio' name='moisturize' class='ml20' value='3'>";
	reviewhtml += "                                 <label for='moisturize3'>촉촉해요</label>";
	reviewhtml += "                             </td>";
	reviewhtml += "                         </tr>";
	reviewhtml += "                         <tr>";
	reviewhtml += "                             <th colspan='2' scope='row' class='th_space'><strong class='reqd'>*</strong>발림성은 어떤가요?</th>";
	reviewhtml += "                             <td colspan='2'>";
	reviewhtml += "                                 <input id='spreadability1' type='radio' name='spreadability' value='1'>";
	reviewhtml += "                                 <label for='spreadability1'>조금 뻑뻑해요</label>";
	reviewhtml += "                                 <input id='spreadability2' type='radio' name='spreadability' class='ml20' value='2'>";
	reviewhtml += "                                 <label for='spreadability2'>보통이에요</label>";
	reviewhtml += "                                 <input id='spreadability3' type='radio' name='spreadability' class='ml20' value='3'>";
	reviewhtml += "                                 <label for='spreadability3'>부드러워요</label>";
	reviewhtml += "                             </td>";
	reviewhtml += "                         </tr>";
	reviewhtml += "                         <tr>";
	reviewhtml += "                             <th colspan='2' scope='row' class='th_space'><strong class='reqd'>*</strong>향은 어떤가요?</th>";
	reviewhtml += "                             <td colspan='2'>";
	reviewhtml += "                                 <input id='scent1' type='radio' name='scent' value='1'>";
	reviewhtml += "                                 <label for='scent1'>조금 아쉬워요</label>";
	reviewhtml += "                                 <input id='scent2' type='radio' name='scent' class='ml20' value='2'>";
	reviewhtml += "                                 <label for='scent2'>보통이에요</label>";
	reviewhtml += "                                 <input id='scent3' type='radio' name='scent' class='ml20' value='3'>";
	reviewhtml += "                                 <label for='scent3'>좋아요</label>";
	reviewhtml += "                             </td>";
	reviewhtml += "                         </tr>";
	}else if (checkCategoryType(categoryCode) == "perfume") {
    reviewhtml += "                         <tr>";
    reviewhtml += "                             <th colspan='2' scope='row' class='th_space'><strong class='reqd'>*</strong>향은 어떤가요?</th>";
    reviewhtml += "                             <td colspan='2'>";
    reviewhtml += "                                 <input id='scent1' type='radio' name='scent' value='1'>";
    reviewhtml += "                                 <label for='scent1'>조금 아쉬워요</label>";
    reviewhtml += "                                 <input id='scent2' type='radio' name='scent' class='ml20' value='2'>";
    reviewhtml += "                                 <label for='scent2'>보통이에요</label>";
    reviewhtml += "                                 <input id='scent3' type='radio' name='scent' class='ml20' value='3'>";
    reviewhtml += "                                 <label for='scent3'>좋아요</label>";
    reviewhtml += "                             </td>";
    reviewhtml += "                         </tr>";
    reviewhtml += "                         <tr>";
    reviewhtml += "                             <th colspan='2' scope='row' class='th_space'><strong class='reqd'>*</strong>지속성은 어떤가요?</th>";
    reviewhtml += "                             <td colspan='2'>";
    reviewhtml += "                                 <input id='persistence1' type='radio' name='persistence' value='1'>";
    reviewhtml += "                                 <label for='persistence1'>조금 짧아요</label>";
    reviewhtml += "                                 <input id='persistence2' type='radio' name='persistence' class='ml20' value='2'>";
    reviewhtml += "                                 <label for='persistence2'>보통이에요</label>";
    reviewhtml += "                                 <input id='persistence3' type='radio' name='persistence' class='ml20' value='3'>";
    reviewhtml += "                                 <label for='persistence3'>오래 유지돼요</label>";
    reviewhtml += "                             </td>";
    reviewhtml += "                         </tr>";
    }
	
	if("ko" == "ko") {
	reviewhtml += "                         <tr>";
	reviewhtml += "                             <th scope='row'>";
	reviewhtml += "                                 <strong class='reqd' style='margin-top:6px;'>*</strong>";
	reviewhtml += "                                 <label for='lb1' style='margin-top:11px;line-height:20px;'>";
	reviewhtml += "                                     상품평<br/>";
	reviewhtml += "                                     <span class='subtxt_1905'>";
	reviewhtml += "                                         (20자 이상<br/>&nbsp;200자 이하)";
	reviewhtml += "                                     </span>";
	reviewhtml += "                                 </label>";
	reviewhtml += "                             </th>";
	reviewhtml += "                             <td colspan='3'>";
	reviewhtml += "                                 <textarea id='reviewHeadline' name='headline' cols='30' rows='5' style='width:98%;height:78px' maxlength='200'></textarea>";
	reviewhtml += "                             </td>";
	reviewhtml += "                         </tr>";
	} else {
	reviewhtml += "                         <tr>";
	reviewhtml += "                             <th scope='row' class='th_space'>";
										
	reviewhtml += "                                 <strong class='reqd' style='margin-top:1px;'>*</strong>";
	reviewhtml += "                                 상품평<br/>";
	reviewhtml += "                                 <label for='lb1'>";
	reviewhtml += "                                     <span class='subtxt_1905'>";
	reviewhtml += "                                         (20자 이상<br/>&nbsp;200자 이하)";
	reviewhtml += "                                     </span>";
	reviewhtml += "                                 </label>";
											
	reviewhtml += "                             </th>";
	reviewhtml += "                             <td colspan='3'>";
	reviewhtml += "                                 <textarea id='reviewHeadline' name='headline' cols='30' rows='5' style='width:98%;height:78px' maxlength='200'></textarea>";
	reviewhtml += "                             </td>";
	reviewhtml += "                         </tr>";
	}
	reviewhtml += "                         <tr>";
	reviewhtml += "                             <th scope='row' class='th_space'><label for='file'>사진등록</label></th>";
	reviewhtml += "                             <td colspan='3'>";
	reviewhtml += "                                 <div class='file_upload hs_input_file_wrap2003'>";
	reviewhtml += "                                     <div class='upload_wrap2003'>";
	reviewhtml += "                                         <input type='text' id='textReviewFile' class='text' readonly='readonly' name='fileText'>";
	reviewhtml += "                                         <div class='upload_btn'>";
	reviewhtml += "                                             <input type='file' name='reviewFile' id='reviewFile' class='btn add_s' title='파일찾기'>";
	reviewhtml += "                                             <label for='reviewFile'>";
//	reviewhtml += "	                                            <button type='button' id='uploadFile1' class='img_upload' title='파일찾기'>";
	reviewhtml += "                                             <span id='uploadFile1' class='img_upload'>파일찾기</span>";
//	reviewhtml += "                                             </button>";
	reviewhtml += "                                             </label>";
	reviewhtml += "                                          </div>";
	reviewhtml += "                                     </div>";
	reviewhtml += "                                     <ul class='file_image_wrap2003'>";
	reviewhtml += "                                     </ul>";
	reviewhtml += "                                 </div>";
	reviewhtml += "                                 <p class='txt_guide'>10MB 미만의 jpg,gif,png 파일만 첨부하실 수 있습니다.</p>";
	reviewhtml += "                             </td>";
	reviewhtml += "                         </tr>";
	reviewhtml += "                     </tbody>";
	reviewhtml += "                 </table>";
	reviewhtml += "                 <p class='txt_guide'>";
	reviewhtml += "                     <span style='color:#e46764; font-weight: bold;'>- 상품평과 무관한 내용이거나  상품 재판매, 광고, 동일 문자의 반복 및 기타 불법적인 내용은 통보 없이 삭제되며,<br/>&nbsp;&nbsp;해당 글 작성자 ID는 글쓰기 권한이 제한됩니다.</span><br/>- 반품, 취소 등의 CS관련 글은 고객센터>1:1문의로 이동될 수 있습니다.";
		
	reviewhtml += "                     <br/>";
			
	reviewhtml += "                     - 마일리지 지급에 대한 상세 내용은 마이페이지>내 상품평 페이지에서 확인 부탁드립니다.<br/>";
	reviewhtml += "                     &nbsp;&nbsp;(마일리지 적립은 오프라인 구매 및 간편회원 제외)";
		
	reviewhtml += "                 </p>";
	reviewhtml += "             </div>";
	reviewhtml += "             <div class='btnwrap mt40'>";
	reviewhtml += "                 <input type='button' id='reviewCancel' value='취소하기' class='btn wt'>";
	reviewhtml += "                 <input type='button' id='reviewWriteSend' value='등록하기' class='btn gray mr0'>";
	reviewhtml += "             </div>";
	reviewhtml += "         </fieldset>";
	reviewhtml += " </div>";
	reviewhtml += "     <a href='javascript:void(0);' id='reviewCloseBtn' style='position: absolute; top: 20px; right: 20px; width: 20px; height: 20px;'><img src='/_ui/desktop/common/images/popup/ico_close.png' alt='닫기'></a>";
	reviewhtml += "</div>";
	reviewhtml += "</form>";
	reviewhtml += "</div>";
	$(reviewhtml).appendTo($('body'));
	starCnt();
	viewPopup("#reviewForm");
	
	$(".btn_close").on("click", function(){
		hideProductLayer();
		$("#customerReviewWriteDiv").remove();
	});
	
	$("#reviewCancel, #reviewCloseBtn").on('click', function(){
		var lc = new customLayerConfirm("취소하시겠습니까?", "확인", "취소");
		lc.confirmAction = function(){
			$(".btn_close").trigger("click");
		};
	});
	
	$(document).on("keyup","#height",function(){
		$("#thHeight").css("color", "black");
		$("#thHeight").css("font-weight","normal");
		$(this).val( $(this).val().replace( /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/g, '' ) );
		if($("#height").val().length > 0) {
			var inputNumberchk = /^[0-9]+$/; // 숫자 체크
			if (!inputNumberchk.test($("#height").val())){
				$(this).val($(this).val().replace(/[^0-9]/gi,""));
				var la = new layerAlert("숫자만 입력 가능합니다.");
				la.confirmAction = function(){};
			}
		}
	});
	
	$(document).on("keyup","#enjoySize",function(){
		$("#thEnjoySize").css("color", "black");
		$("#thEnjoySize").css("font-weight","normal");
		$(this).val( $(this).val().replace( /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/g, '' ) );
		if ($("#enjoySize").val().length > 0) {
			var inputHangulchk = /[^ㄱ-ㅎ|ㅏ-ㅣ]+$/; // 초성(자음/모음) 체크
			if (!inputHangulchk.test($("#enjoySize").val())){
				$(this).val($(this).val().replace(/[^a-z0-9]/gi,""));
				var la = new layerAlert("영문/숫자만 입력 가능합니다.");
				la.confirmAction = function(){};
			}
		}
	});
	
	$(".btn_star_score li a").on("click", function(){
		$("#rating").val($(this).attr('value'));
	});
	
	$(document).on("keyup", "#reviewHeadline", function() {
		$(".write_star_wrap").next().next().next().find("th").css("color", "black");
		$(".write_star_wrap").next().next().next().find("th").css("font-weight","normal");
		if($(this).val().length >= 200) {
			$(this).blur();
			var la = new layerAlert('상품평 내용은 20~200자 사이입니다.');
			return false;
		}
	});
	
	$('#reviewWriteSend').click(function(){
		var inputNumberchk = /^[0-9]+$/; // 숫자 체크
		var inputHangulchk = /[^ㄱ-ㅎ|ㅏ-ㅣ]+$/; // 초성(자음/모음) 체크
		
		if($('#orderWriteChk').val() == 'Y'){ // 상품평쓰기 화면에서 색상이 보일때만 체크
			if($('.select_options_wrap .color_chip li a').hasClass('on') == false){
				var la = new layerAlert('색상을 선택해 주세요.');
				//$('.select_options_wrap .color_chip li a').focus();
				$('.select_colors p').css("color", "#ff0000");
				$('.select_colors p').css("font-weight","bold");
				return false;
			}
		}
		
		if($('#orderWriteChk').val() == 'Y'){ // 상품평쓰기 화면에서 사이즈가 보일때만 체크
			var productType = $('form[name=reviewForm] input[name=productCodeType]').val();
			if(productType != 'ApparelSizeVariantProduct'){ //ApparelStyleVariantProduct
				var la = new layerAlert('사이즈를 선택해 주세요.');
				$('.select_options .select_size p').css("color", "#ff0000");
				$('.select_options .select_size p').css("font-weight","bold");
				
				return false;
			}
		}
		
		var checkCategory = checkCategoryType(categoryCode);
		
		if(checkCategory == "top" || checkCategory == "bottoms") {
			if ($("#height").val() == null || $.trim($("#height").val()) == '') {
				$("#thHeight").css("color", "#ff0000");
				$("#thHeight").css("font-weight","normal");
				$("#height").focus();
				var la = new layerAlert('키를 입력해주세요.');
				return;
			}
			
			if ($("#enjoySize").val() == null || $.trim($("#enjoySize").val()) == '') {
				$("#thEnjoySize").css("color", "#ff0000");
				$("#thEnjoySize").css("font-weight","normal");
				$("#enjoySize").focus();
				var la = new layerAlert('평소 사이즈를 입력해주세요.');
				return;
			}
			
			if ( $('input[name=bodyType]:checked').length < 1 ) {
				$("#thBodyType").css("color", "#ff0000");
				$("#thBodyType").css("font-weight","normal");
				$("#thBodyType").focus();
				var la = new layerAlert('체형을 선택해주세요.');
				
				$('input[name=bodyType]').on('click', function() {
					$("#thBodyType").css("color", "black");
					$("#thBodyType").css("font-weight","normal");
				});
				return;
			}
			
			if(checkCategory == "top") {
				if( $("input[name=shoulderWidth]:checked").length < 1 ) {
					var la = new layerAlert('실착용 사이즈를 선택해주세요.');
					$(".write_star_wrap").next().find("th").css("color", "#ff0000");
					$(".write_star_wrap").next().find("th").css("font-weight","bold");
					
					$("input[name=shoulderWidth]").click(function() {
						$(".write_star_wrap").next().find("th").css("color", "black");
						$(".write_star_wrap").next().find("th").css("font-weight","normal");
					});
					$('#shoulderWidth_1').focus();
					return;
				}
				if( $("input[name=chestSize]:checked").length < 1 ) {
					var la = new layerAlert('실착용 사이즈를 선택해주세요.');
					$(".write_star_wrap").next().find("th").css("color", "#ff0000");
					$(".write_star_wrap").next().find("th").css("font-weight","bold");
					
					$("input[name=chestSize]").click(function() {
						$(".write_star_wrap").next().find("th").css("color", "black");
						$(".write_star_wrap").next().find("th").css("font-weight","normal");
					});
					$('#chestSize_1').focus();
					return;
				}
			}
			
			if(checkCategory == "bottoms") {
				if( $("input[name=waistSize]:checked").length < 1 ) {
					var la = new layerAlert('실착용 사이즈를 선택해주세요.');
					$(".write_star_wrap").next().find("th").css("color", "#ff0000");
					$(".write_star_wrap").next().find("th").css("font-weight","bold");
					
					$("input[name=waistSize]").click(function() {
						$(".write_star_wrap").next().find("th").css("color", "black");
						$(".write_star_wrap").next().find("th").css("font-weight","normal");
					});
					$('#waistSize_1').focus();
					return;
				}
				if( $("input[name=buttSize]:checked").length < 1 ) {
					var la = new layerAlert('실착용 사이즈를 선택해주세요.');
					$(".write_star_wrap").next().find("th").css("color", "#ff0000");
					$(".write_star_wrap").next().find("th").css("font-weight","bold");
					
					$("input[name=buttSize]").click(function() {
						$(".write_star_wrap").next().find("th").css("color", "black");
						$(".write_star_wrap").next().find("th").css("font-weight","normal");
					});
					$('#buttSize_1').focus();
					return;
				}
			}
			
			if($("input[name=totalSize]:checked").length < 1) {
				var la = new layerAlert('실착용 사이즈를 선택해주세요.');
				$(".write_star_wrap").next().find("th").css("color", "#ff0000");
				$(".write_star_wrap").next().find("th").css("font-weight","bold");
				
				$("input[name=totalSize]").click(function() {
					$(".write_star_wrap").next().find("th").css("color", "black");
					$(".write_star_wrap").next().find("th").css("font-weight","normal");
				});
				$('#totalSize_1').focus();
				return;
			}
			
			if($("input:radio[name=realProductColor]:checked").length < 1){
				var la = new layerAlert('실제품 색상을 선택해주세요.');
				$(".write_star_wrap").next().next().find("th").css("color", "#ff0000");
				$(".write_star_wrap").next().next().find("th").css("font-weight","bold");
				la.confirmAction = function(){
					$("#customerReviewWriteDiv").attr("tabindex", -1).focus();
				};
				
				$("input:radio[name=realProductColor]").click(function(){
					$(".write_star_wrap").next().next().find("th").css("color", "black");
					$(".write_star_wrap").next().next().find("th").css("font-weight","normal");
				});
				return;
			}
		}
		
		if(checkCategory == "cosmetic") {
		    if ( $('input[name=skinType]:checked').length < 1 ) {
				$("#thSkinType").css("color", "#ff0000");
				$("#thSkinType").css("font-weight","normal");
				$("#thSkinType").focus();
				var la = new layerAlert('피부 타입을 선택해주세요.');
				
				$('input[name=skinType]').on('click', function() {
					$("#thSkinType").css("color", "black");
					$("#thSkinType").css("font-weight","normal");
				});
				return;
			}
		    if( $("input[name=moisturize]:checked").length < 1 ) {
				var la = new layerAlert('보습력을 선택해주세요.');
				$(".write_star_wrap").next().find("th").css("color", "#ff0000");
				$(".write_star_wrap").next().find("th").css("font-weight","bold");
				
				$("input[name=moisturize]").click(function() {
					$(".write_star_wrap").next().find("th").css("color", "black");
					$(".write_star_wrap").next().find("th").css("font-weight","normal");
				});
				$('#moisturize1').focus();
				return;
			}
		    if( $("input[name=spreadability]:checked").length < 1 ) {
				var la = new layerAlert('발림성을 선택해주세요.');
				$(".write_star_wrap").next().next().find("th").css("color", "#ff0000");
				$(".write_star_wrap").next().next().find("th").css("font-weight","bold");
				
				$("input[name=spreadability]").click(function() {
					$(".write_star_wrap").next().next().find("th").css("color", "black");
					$(".write_star_wrap").next().next().find("th").css("font-weight","normal");
				});
				$('#spreadability1').focus();
				return;
			}
		    if( $("input[name=scent]:checked").length < 1 ) {
				var la = new layerAlert('향을 선택해주세요.');
				$(".write_star_wrap").next().next().next().find("th").css("color", "#ff0000");
				$(".write_star_wrap").next().next().next().find("th").css("font-weight","bold");
				
				$("input[name=scent]").click(function() {
					$(".write_star_wrap").next().next().next().find("th").css("color", "black");
					$(".write_star_wrap").next().next().next().find("th").css("font-weight","normal");
				});
				$('#scent1').focus();
				return;
			}
		    

			var headline = $("#reviewHeadline").val();
				
			if(headline == null || headline.trim() == ''){
				var la = new layerAlert('내용을 입력해 주세요.');
				$(".write_star_wrap").next().next().next().next().find("th").css("color", "#ff0000");
				$(".write_star_wrap").next().next().next().next().find("th").css("font-weight","bold");
				return false;
			}
				
			if(headline.trim().length < 20 || headline.trim().length > 200){
				var la = new layerAlert('상품평 내용은 20~200자 사이입니다.');
				$(".write_star_wrap").next().next().next().next().find("th").css("color", "#ff0000");
				$(".write_star_wrap").next().next().next().next().find("th").css("font-weight","bold");
				return false;
			}
		    
		} else if (checkCategory == "perfume") {
		    if ( $('input[name=skinType]:checked').length < 1 ) {
                $("#thSkinType").css("color", "#ff0000");
                $("#thSkinType").css("font-weight","normal");
                $("#thSkinType").focus();
                var la = new layerAlert('피부 타입을 선택해주세요.');
                
                $('input[name=skinType]').on('click', function() {
                    $("#thSkinType").css("color", "black");
                    $("#thSkinType").css("font-weight","normal");
                });
                return;
            }
		    
		    if( $("input[name=scent]:checked").length < 1 ) {
                var la = new layerAlert('향을 선택해주세요.');
                $(".write_star_wrap").next().find("th").css("color", "#ff0000");
                $(".write_star_wrap").next().find("th").css("font-weight","bold");
                
                $("input[name=scent]").click(function() {
                    $(".write_star_wrap").next().find("th").css("color", "black");
                    $(".write_star_wrap").next().find("th").css("font-weight","normal");
                });
                $('#scent1').focus();
                return;
            }
		    
            if( $("input[name=persistence]:checked").length < 1 ) {
                var la = new layerAlert('지속성을 선택해주세요.');
                $(".write_star_wrap").next().next().find("th").css("color", "#ff0000");
                $(".write_star_wrap").next().next().find("th").css("font-weight","bold");
                
                $("input[name=persistence]").click(function() {
                    $(".write_star_wrap").next().next().find("th").css("color", "black");
                    $(".write_star_wrap").next().next().find("th").css("font-weight","normal");
                });
                $('#persistence1').focus();
                return;
            }

            var headline = $("#reviewHeadline").val();
                
            if(headline == null || headline.trim() == ''){
                var la = new layerAlert('내용을 입력해 주세요.');
                $(".write_star_wrap").next().next().next().next().find("th").css("color", "#ff0000");
                $(".write_star_wrap").next().next().next().next().find("th").css("font-weight","bold");
                return false;
            }
                
            if(headline.trim().length < 20 || headline.trim().length > 200){
                var la = new layerAlert('상품평 내용은 20~200자 사이입니다.');
                $(".write_star_wrap").next().next().next().next().find("th").css("color", "#ff0000");
                $(".write_star_wrap").next().next().next().next().find("th").css("font-weight","bold");
                return false;
            }
		} else { // none cosmetic includes top, bottom and etc
		    var headline = $("#reviewHeadline").val();
			
			if(headline == null || headline.trim() == ''){
				var la = new layerAlert('내용을 입력해 주세요.');
				$(".write_star_wrap").next().next().next().find("th").css("color", "#ff0000");
				$(".write_star_wrap").next().next().next().find("th").css("font-weight","bold");
				return false;
			}
				
			if(headline.trim().length < 20 || headline.trim().length > 200){
				var la = new layerAlert('상품평 내용은 20~200자 사이입니다.');
				$(".write_star_wrap").next().next().next().find("th").css("color", "#ff0000");
				$(".write_star_wrap").next().next().next().find("th").css("font-weight","bold");
				return false;
			}
		}
		
			
		var lc = new customLayerConfirm("상품평을 등록하시겠습니까?", "확인", "취소"); // 상품평을 등록하시겠습니까?, 확인, 취소
		lc.confirmAction = function(){
			uploadFilesubmit('write', returnType);
			$('.pop_cls').click();
		}
	});
}

function encodeText( s ) {
	if ( !s ) {
		return "";
	}
	
	return s.replace( /['"<>&]/g, function( s ) {
		switch ( s ) {
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
		type : "get",
		//url : "/ko/mypage/order/getExchageRate",
		url : "/ko/intro/getExchageRate",
		dataType : "json",
		async : true,
		success : function( result ) {
			if(result.length > 0) {
				for(var i=0; i < result.length; i++) {
					if(result[i].currencyCode == "USD") {
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

$(document).ready(function(){
    var ua = navigator.userAgent.toLowerCase();
    // 익스플로러 브라우저 아닐 때만 인스타 링크버튼 노출
    if((ua.indexOf('trident') == -1) && (ua.indexOf("msie") == -1) ){
        $("#f_insta").show();
    }
});

getNewsList("/ko/magazine");


// 2022.03.29 푸터 공지사항 추가
getFooterNotices("/ko/svcenter");


function moveMobile(){
// 	location.href = location.href.replace("?uiel=Desktop", "") + "?uiel=Mobile";
	location.href = "/ko/?uiel=Mobile";
}


function setLogout(){
    deletecookie("UID");   
    deletecookie("criteoEmail"); 
    deletecookie("memberGb");
    location.href = "/ko/logout";
}

//]]>
</script>

<%@ include file="/WEB-INF/views/common/footer.jsp"%>