<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ include file="/WEB-INF/views/common/header.jsp"%>

<sec:authorize access="hasRole('ROLE_MEMBER')">
                <sec:authentication property="principal.username" var="MID"/>
</sec:authorize>

	<div id="bodyWrap">
		<h3 class="cnts_title">
			<span id="menuTitle"></span>
		</h3>
		<div class="sub_container">
		<%@ include file="/WEB-INF/views/common/nav.jsp"%>	
		
			<div class="sub_cnts">


				<script type="text/javascript">
//<![CDATA[
var rate_en = "";
var symbol_en = "";
var rate_zh = "";
var symbol_zh = "";

$(document).ready(function(){
	getExchangeRate();
	
	$(".btn_close").on("click", function(){//팝업 닫기
        hideProductLayer();
        $(".popwrap").hide();
    });
	
	
	$('.btn_star_score li a').on('click',function() {
        var idx=$(this).parent('li').index()+1;
        for(var i=1;i<6;i++){
            $('.write_star_score1807 .cmt_star .cmt_per').removeClass('star'+i);
        }
        $('.write_star_score1807 .cmt_star .cmt_per').addClass('star'+idx);
		$("#rating").val($(this).attr('value'));
    });
	
	$(".point_wrap .point.review .tlt").mouseover(function(){
		 $("#store_delbox").css("display","block");
	});
	$(".point_wrap .point.review .tlt").mouseout(function(){
		 $("#store_delbox").css("display","none");
	});
	
	$(document).on('click','.evaluation_write1905 .select_group',function(){//옵션선택박스 열기
		if(!$(this).hasClass('open')){
			$('.opt_box1905').stop().slideDown('fast');
			$(this).addClass('open');
			$(this).find('.transparent_mask1905').stop().show('fast');
		}else{
			$('.opt_box1905').stop().slideUp('fast');
			$(this).removeClass('open');
			$(this).find('.transparent_mask1905').stop().hide('fast');
		}
	});
	$(document).on('mouseenter focus','.opt_box1905 li',function(){
		$(this).addClass('active');
	});
	$(document).on('mouseleave blur','.opt_box1905 li',function(){
		$(this).removeClass('active');
	});
	
	
    $("#menuTitle").text("주문/배송/반품/취소"); //주문/배송/반품/취소
    
    
    $('#setDateBtn1').click(function(){
        var today = new Date();
        var endDate = today.format("yyyy-MM-dd");   
        $('#eterm').val(endDate);
        var startDate = today;
        startDate.setDate(today.getDate()-7);
        startDate = startDate.format("yyyy-MM-dd");
        $('#sterm').val(startDate);
        
    });
    $('#setDateBtn1').click();
    
    $('#setDateBtn2').click(function(){
        var today = new Date();
        var endDate = today.format("yyyy-MM-dd");
        $('#eterm').val(endDate);
        var startDate = today;
        startDate.setMonth(today.getMonth()-1);
        startDate = startDate.format("yyyy-MM-dd");
        $('#sterm').val(startDate);
        
    });
    
    $('#setDateBtn3').click(function(){
        var today = new Date();
        var endDate = today.format("yyyy-MM-dd");
        $('#eterm').val(endDate);
        var startDate = today;
        startDate.setMonth(today.getMonth()-3);
        startDate = startDate.format("yyyy-MM-dd");
        $('#sterm').val(startDate);
        
    });
    
    

    $( "#sterm, #eterm" ).datepicker({
        showOn:"button",
        dateFormat: "yy-mm-dd"
    });
    

    $('#sterm').datepicker("option", "maxDate", $("#eterm").val());
    $('#sterm').datepicker("option", "onClose", function ( selectedDate ) {
        $("#eterm").datepicker( "option", "minDate", selectedDate );
        $('button.ui-datepicker-trigger').addClass('ico_cld');
    });
 
    $('#eterm').datepicker("option", "minDate", $("#sterm").val());
    $('#eterm').datepicker("option", "onClose", function ( selectedDate ) {
        $("#sterm").datepicker( "option", "maxDate", selectedDate );
        $('button.ui-datepicker-trigger').addClass('ico_cld');
    });

    $('button.ui-datepicker-trigger').addClass('ico_cld');
    
    var orderList = new BoardListController('orderSearchForm', '#listBody', '.paging', 10, 'searchBtn');
    orderList.setRowHtml = function(results){
        var rows = "";
        $.each(results, function(){
            var orderThis = this;
            var date = new Date(this.placed).format("yyyy.MM.dd");
            var listTag = '';
            if(orderThis.egiftCardOrderYn == true) {
                listTag = '<tr class="al_middle e-gift">';
            } else {
                listTag = '<tr class="al_middle">';
            }
            
            var entriesLength = this.entries.length + this.freeGiftList.length;
            
            listTag +=  '<td rowspan="'+entriesLength+'" class="frt"><p class="num">'+this.code+'</p>';
            
            listTag +=  '<span class="sum_date">('+this.orderCreateDate+')</span>';
            
            listTag +=  '<a href="/ko/mypage/order/myorderdetail?code='+this.code+'" class="btn_view">상세보기</a>'; //상세보기
            
            
            
            var i = 1;
            
            var entryTag = "";
            var addrModifyAvailYn = true;
            var entrieslength = this.entries.length;
            
            var firstEntry = 0;
            $.each(this.entries, function(){
                var searchDeliveryTemp = "";                
                /* 2017.05.17, HSLee, 예약주문 안내문구 출력 [START] */
                var reOrderInfoPrintYn = (this.reOrderYn && (this.orderStatus.code=="PAYMENT_CAPTURED" || this.orderStatus.code=="SHIPPING_PREPARATION" || this.orderStatus.code=="DEPOSIT_WAIT")); // 예약주문관련 안내메시지 노출 여부
                var reOrderCompleteYn = (this.reOrderYn && (this.orderStatus.code=="PAYMENT_CAPTURED")); // 예약주문완료 주문상태
                var reserveSaleYn = this.reOrderYn; // 예약판매 표기용 변수 별도 생성
                
                if(this.orderStatus==null){
                    $.extend(this,{"orderStatus":{"code":""},"orderStatusName":""});
                }
                
                var productImageUrl = "";
                if(this.product.productImages!=null){
                    $.each(this.product.productImages, function(){
                        if(this.imageDivisionCode != null){
                            if(orderThis.egiftCardOrderYn == true) {
                                if(this.imageDivisionCode.code=='T01'){
                                    productImageUrl = this.image.url;
                                }
                            } else {
                                if(this.imageDivisionCode.code=='S01'){
                                    productImageUrl = this.image.url;
                                }
                            }
                        }
                    });
                }
                
                if(i++!=1){
                    entryTag += '<tr class="al_middle">';
                }
                
                entryTag += '<td>';
                
                entryTag += '<div class="pt_list_all">                                                                         ';
                
                if(orderThis.egiftCardOrderYn == true) {
                    entryTag += '   <a href="#;" style="pointer-events: none;"><img src="'+productImageUrl+'" alt="상품 이미지"></a>    ';
                    entryTag += '   <div class="tlt_wrap">                                                                        ';
                    entryTag += '       <a href="#;"  style="pointer-events: none;" class="basket_tlt">                                                           ';
                } else {
                    entryTag += '   <a href="/ko/p/'+this.product.code+'"><img src="'+productImageUrl+'" alt="상품 이미지"></a>    ';
                    entryTag += '   <div class="tlt_wrap">                                                                        ';
                    entryTag += '       <a href="/ko/p/'+this.product.code+'" class="basket_tlt">                                                           ';
                    if(orderThis.egiftCardOrderYn != true) {
                        entryTag += '           <span class="tlt">['+this.product.brandName+']</span>';
                    }
                }
                
                if(reserveSaleYn){
                    entryTag += '           <span class="sb_tlt"><b>[예약판매]</b> '+this.product.name+'</span>';
                } else {
                    entryTag += '           <span class="sb_tlt">'+this.product.name+'</span>';
                }
                
                entryTag += '       </a>';
                
                var patr = "";
                if(orderThis.egiftCardOrderYn != true) {
                    var color = this.product.baseOptions[1].selected.erpColorName;
                    if(color!=null){
                        patr +='<p class="color_op">color : '+color;
                    }
                    
                    var size = this.product.baseOptions[0].selected.variantOptionQualifiers[2].value;
                    
                    if(size!=null){
                        if(patr==""){
                            patr +='<p class="color_op">';
                        }else{
                            patr +='  <span class="and_line">/</span> ';
                        }
                        
                        patr += ' size : '+size;
                    }
                    
                    if(patr!=""){
                        patr += '</p>';
                    }
                }
                
                entryTag += patr;
                
                /**
                 * 2020.01.22 hmk
                 * 결품 안내 문구 노출
                 * stocklevels.onlinestockpile 0 이고 stocklevels.warehousestockpile > 10 인 상품 => 결품상품
                 * 결품 여부 확인해서 노출 여부 결정
                 */
                if(this.product.erpBrandName.toUpperCase() != 'LB'){                	
	                entryTag += '<p name="__p_' + this.product.code + '" class="guide_comment2" style="display: none;" >' ;
	                entryTag += '해당 상품은 전국 매장을 통해 수급하여 배송 될 예정입니다. 불량 등의 이유로 수급이 어려울 경우, 취소될 수 있습니다. (평일 기준 5일 이상 소요 예정)' ;
	                entryTag += '</p>' ;
	                getOnlineStock( this.product.code ) ;
                }
                /**
                 * end of code
                 */
                 
                 
 				if( this.orderStatus.code != 'DELIVERY_COMPLETED' && this.product.commissionId != null){
 					if( this.product.commissionId.code == 'OERA' ) {
 						entryTag += '<div class="oera_shipping_guide3"><span>오에라 상품은 오에라 전용 박스로 배송</span>됩니다.<br>(한섬 상품과 함께 주문 시, 별도 배송됩니다.)</div>'; 
 					}else if( this.product.commissionId.code == 'LIQUIDES_PARFUMS_BAR'){
 						entryTag += '<div class="oera_shipping_guide3"><span>리퀴드 퍼퓸바 상품은 전용 박스로 배송</span>됩니다.<br>(다른 브랜드와 함께 주문 시, 리퀴드 퍼퓸바는 별도 배송)</div>';
 					}
 				}
                
                if (reOrderInfoPrintYn) {
					var dpDate = this.deliveryPlanDate.split('-');
					var yyyy    = dpDate[0]; 
					var mm  = dpDate[1];
					var dd  = dpDate[2];
                 
					var deliveryplanDateMsg = '주문하신 상품은 예약상품으로 <span style="color:#e64674;">{0}년 <br />{1}월{2}일부터 순차적으로 배송</span>됩니다.';
					deliveryplanDateMsg = deliveryplanDateMsg.replace('{0}',yyyy);
                    deliveryplanDateMsg = deliveryplanDateMsg.replace('{2}',dd);
					
	                    deliveryplanDateMsg = deliveryplanDateMsg.replace('{1}',mm);
	                
					                	
                    entryTag += '   <div class="option_wrap">';
                    
	                    entryTag += '      <p class="al_restock">';
	                
                    
                    entryTag += 		deliveryplanDateMsg;
                    entryTag += '       <br />(입고예정일은 제작상황에 따라 변경될 수 있습니다.)';
                    entryTag += '   	</p>';
                    entryTag += '   </div>';
                }
                /* 2017.05.17, HSLee, 예약주문 안내문구 출력 [END] */
                
                if(orderThis.deliveryKind == "QUICK") {
                    entryTag += '   <div class="option_wrap">';
                    entryTag += '       <p class="quick_deliv stk">퀵배송</p>';
                    entryTag += '   </div>';
                }else if(orderThis.deliveryKind == "AT_HOME") {
                    entryTag += '   <div class="option_wrap">';
                    entryTag += '       <p class="athome">앳홈</p>';
                    entryTag += '   </div>';
                }else if(orderThis.deliveryKind == "FOUR_PM") {
                    entryTag += '   <div class="option_wrap">';
                    entryTag += '       <p class="fourpm">4PM</p>';
                    entryTag += '   </div>';
                }else if(orderThis.deliveryPointOfService != null || (orderThis.deliveryPointOfService != "" && typeof orderThis.deliveryPointOfService != "undefined")) {
                    entryTag += '   <div class="option_wrap">';
                    entryTag += '       <p class="store_pickup stk">매장수령</p>';
                    entryTag += '   </div>';                    
                }
                
                entryTag += '   </div>';
                
                entryTag += '</div>';
                
                entryTag += '</td>';
                
                entryTag += '<td>'
                if(this.partCancelYn==true) entryTag += '<del>'+this.originalQuantity+'</del>';  
                entryTag += this.quantity+'</td>';
                
                
                entryTag += '<td>'+getExchangePrice(this.totalPrice.value)+'</td>';
                
                
                entryTag += '<td>';
                
                
                if(this.returnStatus!=null){
                	if(orderThis.returnRequestRejectYn) {
                		entryTag += '반품거절'
                	} else {
                    	entryTag += this.returnStatusName;
                    }
                }else{
                    if (reOrderCompleteYn) {
                        
                        entryTag += '예약주문완료'; 
                    } else {
                        entryTag += this.orderStatusName;
                    }
                }
                
                if(this.orderStatus.code=="DEPOSIT_WAIT"||this.orderStatus.code=="PAYMENT_CAPTURED"||this.orderStatus.code=="DELIVERY_COMPLETED"||this.orderStatus.code=="NOT_PAID_CANCEL"||this.orderStatus.code=="CANCELLED"||this.orderStatus.code=="CANCELLING"){
                    //entryTag += '<span  class="sum_date">('+new Date(this.updateDate).format("yyyy.MM.dd")+')</span>'; 
                    if (reOrderInfoPrintYn) {
						
//                         var dpDate = this.deliveryPlanDate.split('-');
//                         var yyyy    = dpDate[0]; 
//                         var mm  = dpDate[1];
//                         var dd  = dpDate[2];
                        
//                         var deliveryplanDate = '{0}년 {1}월 {2}일';
//                         deliveryplanDate = deliveryplanDate.replace('{0}',yyyy);
//                         deliveryplanDate = deliveryplanDate.replace('{1}',mm);
//                         deliveryplanDate = deliveryplanDate.replace('{2}',dd);
                        
							
//                         entryTag += '<span  class="sum_date">입고예정일<br>'+deliveryplanDate+'</span>';
                    } else if(this.returnStatus!=null){
                    	entryTag += '<span  class="sum_date">('+this.returnActionDate+')</span>';
                    } else {
                        entryTag += '<span  class="sum_date">('+this.orderModifyDate+')</span>';
                    }
                }
                
                if(this.partCancelYn==true&&this.orderStatus.code!="CANCELLED"){
                    
                    entryTag += '(부분주문취소)'; //부분주문취소
                }
                
                if(this.storePickupYN==true){
                    entryTag += "<br /><span><a href=\"javascript:void(0);\" class=\"btn_view PickupStoreInfoBtn\">수령매장정보</a>";
                    entryTag += "<div class=\"tempHtml\" style=\"display:none;\">";
                    entryTag += "   <div class=\"pop_cnt receive_info_pop1807\">";
                    entryTag += "       <h3 class=\"pop_tlt\">수령매장정보</h3>";
                    entryTag += "       <strong>"+this.pickupShopName+ " "+this.pickupBrandName +"</strong><br>";
                    entryTag += "       <p>"+this.pickupShopAddress+"</p>";
                    entryTag += "       <p>"+this.pickupShopPhone+"</p>";
                    entryTag += "       <div class=\"receive_date_acep1807\">";
                    entryTag += "           <strong>수령 신청일</strong><span>"+this.pointOfServicePickupDate+"</span><br>";
                    if(this.pickuplimitedDate != null && this.pickuplimitedDate != ""){
                        entryTag += "          <strong>수령 확정일</strong><strong>"+this.pickuplimitedDate+"</strong><br>";
                    }else{
                        entryTag += "           <strong>수령 확정일</strong><strong>"+"XXXX.XX.XX"+"</strong><br>";
                    }
                    entryTag += "       </div>";
                    entryTag += "       <ul class=\"bul_sty01_li\">";
                    entryTag += "           <li><span style=\"color: rgb(254, 66, 66);\">매장수령 교환권 SMS</span> 수신 후 상품 수령이 가능합니다.</li>";
                    entryTag += "           <li>수령 확정일로부터 <span style=\"color: rgb(254, 66, 66);\">1일 경과 후 상품을 수령하지 않으시면 자동 취소</span> 됩니다.</li>";
                    entryTag += "       </ul>";
                    entryTag += "       <div class=\"btnwrap\">";
                    entryTag += "           <input class=\"btn gray_s mr0\" type=\"button\" value=\"확인\">";
                    entryTag += "       </div>";
                    entryTag += "   </div>";
                    entryTag += "</div>";
                    entryTag += "   </span>";
                
                    //entryTag += '<div class="storeInfo" style="display:none;">수령매장정보<br /><br />'+this.pickupShopName+' '+this.pickupBrandName+'<br />';
                    //entryTag += this.pickupShopAddress + '<br />'+this.pickupShopPhone+'</div></a>';
                }else{
                    if(orderThis.deliveryKind != "AT_HOME" && orderThis.egiftCardOrderYn != true) {
                        
                        if(this.orderStatus.code=="SHIPPED"||this.orderStatus.code=="DELIVERY_COMPLETED"){
                            if(this.returnStatus==null){
                                
                                    entryTag += '<br /><a href="#" class="btn wt_ss shippingInfoBtn" ocode="'+orderThis.code+'" pcode="'+this.product.code+'" >배송조회</a>' //배송조회
                                    
                            }
                        }
                    }
                }
                
                entryTag += '</td>';
                
                var actionBtn = '';
                if(orderThis.deliveryKind == "AT_HOME") {
                    actionBtn += '<img alt="athome" src="/_ui/desktop/common/images/common/list_athome.png">';
                    addrModifyAvailYn = false;
                }
                
                if(this.orderStatus.code=="DEPOSIT_WAIT") {
                    tempCancel = '<a href="/ko/mypage/order/cancelrequest?code='+orderThis.code+'&isall=Y" class="btn wt_ss">전체취소</a>'; //전체취소 
                    actionBtn += '<div class="btn_wrap">'+searchDeliveryTemp+tempCancel+'</div>';
                    addrModifyAvailYn = false;
                } else if(this.orderStatus.code=="PAYMENT_CAPTURED"){
					if(orderThis.redVoucherOrderYn == true) {
	                    tempCancel = '<a href="/ko/mypage/order/cancelrequest?code='+orderThis.code+'&isall=Y" class="btn wt_ss">전체취소</a>'; //전체취소 
	                    actionBtn += '<div class="btn_wrap">'+searchDeliveryTemp+tempCancel+'</div>';						
					} else {
						
                        tempCancel = '<a href="/ko/mypage/order/cancelrequest?code='+orderThis.code+'&pcode='+this.product.code+'" class="btn wt_ss">주문취소</a>'; //주문취소
	                    actionBtn += '<div class="btn_wrap">'+searchDeliveryTemp+tempCancel;
	                    
	                    if(orderThis.egiftCardOrderYn == true && orderThis.egiftBuySmsReSendAvailableYn == true) {
	                        tempCancel = '<a href="javascript:eGiftBuySmsReSend(this,\''+orderThis.code+'\',\''+orderThis.egiftCardCode+'\');" id="reSendEGift" class="btn wt_ss">1회 재전송</a>';    
	                        actionBtn += searchDeliveryTemp+tempCancel+'</div>';  
	                    }else if(orderThis.egiftCardOrderYn == true && orderThis.egiftBuySmsReSendAvailableYn != true) {
	                        tempCancel = '<a href="javascript:void(0);" id="reSendEGift" class="btn dis_ss" style="margin-top:10px;min-width:69px;">1회 재전송</a>';    
	                        actionBtn += searchDeliveryTemp+tempCancel+'</div>';  
	                    }else {
	                        actionBtn += '</div>';  
	                    }
					}
                } 
                else if(this.orderStatus.code=="SHIPPED"){
                    
                    actionBtn += '<a href="javascript:setDeliveryCompleted(\''+orderThis.code+'\',\''+this.product.code+'\',\''+this.entryNumber+'\')" class="btn wt_ss deliveryCompletedBtn">수령확인</a>'; //배송완료 
                    addrModifyAvailYn = false;
                }
                else{
                    
                    if(orderThis.egiftCardOrderYn != true) {
                        actionBtn += '<div class="btn_wrap">';
                        if(this.returnAvailYn==true) {
	                        
	                        if(orderThis.deliveryKind == "AT_HOME" && (this.returnYN == true || this.returnYN == "true")) {
	                            
	                        } else {
								<!-- 반품 중지 인 경우와 반품 상태가 없는 경우 반품 신청 버튼이 나옴. 반품 완료지만 수량이 남아 있을 경우 반품 신청 버튼이 나오지만 확인 후 반품 수량이 없을 경우 다음으로 이동하지 않음 khg START-->
	                        	if(this.returnStatus != null) {
									if(this.returnStatus.code == 'RETURN_CANCEL'){
										actionBtn += '<a href="/ko/mypage/order/returnrequest?code='+orderThis.code+'&pcode='+this.product.code+'" class="btn wt_ss">반품신청</a><br />'; //반품신청
									} else if(this.returnStatus.code == 'RETURN_COMPLETED'){
										actionBtn += '<a href="javascript:returnConfirm(\''+orderThis.code+'\');" class="btn wt_ss">반품신청</a><br />'; //반품신청										
									} else {
										
									}
	                        	} else {
	                        		actionBtn += '<a href="/ko/mypage/order/returnrequest?code='+orderThis.code+'&pcode='+this.product.code+'" class="btn wt_ss">반품신청</a><br />'; //반품신청	                        		
	                        	} 
	                        	<!-- 반품 중지 인 경우와 반품 상태가 없을 경우에만 반품 신청 버튼이 나옴 khg END-->
	                        }
	                        <!-- 20191104 글로벌 반품 -->
	                        
                        }
                        if(this.orderStatus.code=="DELIVERY_COMPLETED") {
	                        
	                        if( this.product.approvalStatus == "approved" && this.returnStatus == null ) {
		                        if(this.reviewWriteYn == "Y") {
			                        var color = this.product.baseOptions[1].selected.erpColorName;
			                        var price = this.totalPrice.value;
			                        var brandName = this.product.brandName.replace("'", "\\'");
			                        var productName = this.product.name;
			                        var categoryCode = this.product.actualMeasurementSizeCode.code;
			                        actionBtn += '<a href="javascript:openPopupReview(\''+this.product.code+'\', \''+orderThis.code+'\', \''+color+'\', \''+price+'\', \''+productImageUrl+'\', \''+escape(brandName).replace(/\'/g,"\\\'")+'\', \''+productName.replace(/\'/g,"\\\'")+'\', \''+categoryCode+'\', \'order\')" class="btn wt_ss">상품평 작성</a>'; //상품평쓰기
		                        }
	                        } else if( this.product.approvalStatus == "approved" && this.returnStatus != null && (this.returnStatus.code == "RETURN_CANCEL" || this.returnStatus.code == "RETURN_COMPLETED") ) {
	                        	if(this.reviewWriteYn == "Y") {
			                        var color = this.product.baseOptions[1].selected.erpColorName;
			                        var price = this.totalPrice.value;
			                        var brandName = this.product.brandName.replace("'", "\\'");
			                        var productName = this.product.name;
			                        var categoryCode = this.product.actualMeasurementSizeCode.code;
			                        if(reviewReturnConfirm(orderThis.code) == "T") {
				                        actionBtn += '<a href="javascript:openPopupReview(\''+this.product.code+'\', \''+orderThis.code+'\', \''+color+'\', \''+price+'\', \''+productImageUrl+'\', \''+escape(brandName).replace(/\'/g,"\\\'")+'\', \''+productName.replace(/\'/g,"\\\'")+'\', \''+categoryCode+'\', \'order\')" class="btn wt_ss">상품평 작성</a>'; //상품평쓰기
			                        }
		                        }
	                        }
	                        
	                        addrModifyAvailYn = false;
                        }
                        
                        actionBtn += '</div>';
                    }
                    
                    addrModifyAvailYn = false;
                }
                if(this.orderStatus.code=="DEPOSIT_WAIT" && firstEntry == 0) {
                    entryTag += '<td rowspan="'+entrieslength+'">'+actionBtn+'</td>';
                    addrModifyAvailYn = false;
                } else if(this.orderStatus.code != "DEPOSIT_WAIT") {
                	if(orderThis.redVoucherOrderYn == true) {
                		if(firstEntry == 0) {
                			entryTag += '<td rowspan="'+entrieslength+'">'+actionBtn+'</td>';
                		} else {
                			// skip
                		}
                	} else {
                		
                        entryTag += '<td class="pd12_resize">'+actionBtn+'</td>';
                	}
                }
                entryTag += '</tr>';
                
                
                if(this.storePickupYN==true){
                    addrModifyAvailYn = false;
                }
                
                firstEntry += 1;
            });
            
            $.each(this.freeGiftList, function(){
                
                if(i++!=1){
                    entryTag += '<tr class="al_middle">';
                }
                
                entryTag += '<td class="freebie-prd">';
                entryTag += '	<div class="pt_list_all">';
                entryTag += '   	<img src="'+this.imageUrl+'" alt="사은품">';
                entryTag += '   	<div class="tlt_wrap">';
                entryTag += '   		<div class="freebie-name">[사은품] ' + this.freeGiftName+ '</div>';
                entryTag += '   	</div>';
                entryTag += '	</div>';
                entryTag += '</td>';
                
                entryTag += '<td>1</td>';
                entryTag += '<td colspan="3">';
                entryTag += '	<div class="freebie-comment">'+this.detailContents+'</div>';
                entryTag += '</td>';
                
                entryTag += '</tr>';
                
            });
            
            if(this.rePaymentYn == true) {
                listTag += '<a href="/ko/mypage/order/rePayment?code='+this.code+'" class="btn wt_ss" style="margin-bottom:5px;">재결제</a>'; //재결제
            }

            if(this.egiftCardOrderYn == true) {
                addrModifyAvailYn = false;
            }

            if(addrModifyAvailYn){
                
                
                
                
                    var hp = ['','',''];
                    var ph = ['','',''];
                    var email = ['',''];
                    if(this.cellphone !=null)
                    {
                        hp = this.cellphone.split('-');
                        if(hp.length<3) hp = ['','',''];
                    }
                    if(this.phone1 !=null)
                    {
                        ph = this.phone1.split('-');
                        if(ph.length<3) ph = ['','',''];
                    }
                    if(this.email !=null)
                    {
                        email = this.email.split('@');
                    }
                    var fDSelectMessage = '';
                    var fDMessage = '';
                    if(this.frontDoorMessage){
                    	if(this.frontDoorMessage.substring(0,9) === '공동현관 비밀번호'){
                    		fDSelectMessage = '공동현관 출입번호';
                    		fDMessage = this.frontDoorMessage.substring(12,this.frontDoorMessage.length);
                    	}else if(this.frontDoorMessage === '자유 출입 가능'){
                    		fDSelectMessage = '자유 출입 가능';
                    		fDMessage = '자유 출입 가능';
                    	}else{
                    		fDSelectMessage = '기타';
                    		fDMessage = this.frontDoorMessage;
                    	}
                    }
                    var drContents = '';
                    if(this.deliveryRequestContents){
                    	drContents = this.deliveryRequestContents;
                    }
    				
                    listTag +=  '<a href="javascript:void(0);" class="btn wt_ss addrModBtn" code="'+this.code+'" addr1="'+this.address1+'" addr2="'+this.address2+'" zip="'+this.zipCode+'" rcname="'+this.name+'" hp1="'+hp[0]+'" hp2="'+hp[1]+'" hp3="'+hp[2]+'" ph1="'+ph[0]+'" ph2="'+ph[1]+'" ph3="'+ph[2]+'" or="'+drContents+'" frontDoorSelectMessage="'+fDSelectMessage+'" frontDoorMessage="'+fDMessage+'" emailId="'+email[0]+'" emailDomain="'+email[1]+'" >배송정보수정</a>'; //배송지 수정
                
                
            
            
            }
            
            listTag +='</td>';
            listTag +=entryTag;
            
            rows +=listTag;
        });
        
        return rows;
        
    };
    
    var $l = null;
    
    orderList.afterSetAction = function(){
        
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
    			
                
                
                $l.find("[numberOnly=true]").keypress(function(event){
                    if(!isNum(event.which)) return false;
                }).keydown(function(event){
                    if(!isNum(event.which)) return false;
                });
                
                
                chkInputCount($l.find('#orderr'), $l.find('#textCnt'), 20);
                chkInputCount($l.find('#frontDoorMessage'), $l.find('#frontDoorMessageLength'), 15);
                
                $l.find('#cancelBtn').click(function(){
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
	                        window.open('http://www.hydex.net/ehydex/jsp/home/distribution/tracking/tracingNView.jsp?param1='+result.trackingNumber,'배송조회', 'width=557, height=500'); //배송조회
	                    }else if(result.companyName=="DHL"){
	                        window.open('http://www.dhl.com/cgi-bin/tracking.pl?awb='+result.trackingNumber+'&LAN=KOR&TID=us_en&LINKS=NO'  ,'배송조회'); //배송조회
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
	                    }else if(result.companyName.indexOf("CJ대한통운") > -1){
	                        window.open(result.cjUrl  ,'배송조회', 'width=850, height=850'); //배송조회
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
        
        
        //매장 수령 정보
        $(".PickupStoreInfoBtn").click(function(){
            layerStorePickupInfo($(".tempHtml").html());
        });
        
        
    }
        
    orderList.doWork();
    
    
    var addrModFn = function(){
    
        
            var paramDatas = $("#addrModPop_clone #addrModForm" ).serialize();
        

        $.ajax({
            type: "post",
            url :  "/ko/mypage/order/updateorderaddr",
            data : paramDatas,          
            dataType : "json",
            error : function( request, status, error ){     
                alert(error)
                //console.log( "code:" + request.status+"\n" + "message:" + request.responseText+"\n" + "error:" + error );
            }, 
            success : function( result ){
                
                if(result=="SUCCESS"){
                    layerAlert("배송지 수정을 완료하였습니다.", true); //배송지 수정을 완료하였습니다.
                } 
                // 2017-03-13, 이현승, 전화번호 검증 Error 메시지 추가. [START]
                else if (result=="CellPhoneIsEmptyError"){
                    var lc = new layerAlert("배송지 주소/수령인/휴대폰번호를 입력하여 주십시오");
                    lc.confirmAction = function(){
                        $('.addrModBtn').click();
                        if("ko" == "ko"){
                            $('#hp2').focus();
                        } else {
                            $('#cellphone').focus();
                        }
                    };
                } else if (result=="CellPhoneIsNumericError"){
                    if("ko" == "ko"){
                        var lc = new layerAlert("전화번호는 숫자만 입력가능 합니다.");
                        lc.confirmAction = function(){
                            $('.addrModBtn').click();
                            $('#hp2').focus();
                        };
                    } else {
                        var lc = new layerAlert("checkout.shipto.phone.msg");
                        lc.confirmAction = function(){
                            $('.addrModBtn').click();
                            $('#cellphone').focus();
                        };
                    }
                } else if (result=="PhoneIsNumericError"){
                    var lc = new layerAlert("전화번호는 숫자만 입력가능 합니다.");
                    lc.confirmAction = function(){
                        $('.addrModBtn').click();
                        $('#ph2').focus();
                    };
                } 
                // 2017-03-13, 이현승, 전화번호 검증 Error 메시지 추가. [END]
                else if (result=="OrderStatusError"){
                    layerAlert("배송 상태 값이 변경되어 배송지 수정/변경이 불가 합니다.<br/>배송지 수정/변경 필요 시 고객센터로 문의해주세요."); //배송준비중 상태에서는 주문의 취소/변경이나 주소의 변경이 불가능 합니다. khg2
                } else if (result=="QuickDeliveryModifyError"){
    				layerAlert('퀵배송 서비스 불가능  지역입니다.</br>배송지 변경 후 이용해 주세요.<br/>(서울 전 지역 가능, 향후 서비스 확대 예정입니다.)'); //퀵배송 서비스 불가능  지역입니다.</br>배송지 변경 후 이용해 주세요.<br/>(서울 전 지역 가능, 향후 서비스 확대 예정입니다.)
    			} else {
    			    layerAlert("배송지 수정을 실패하였습니다."); //배송지 수정을 실패하였습니다.
                }
            }
        });
        
    };
});
//20191104
var globalReturnRequest = function(code, pcode){
	var $l = layerPopup('globalReturnPop');
	
	$l.find("#returnBtn").click(function(){
        location.href="/mypage/order/returnrequest?code="+code+"&pcode="+pcode;
    });
	
	$l.find("#returnCancelBtn").click(function () {
		$l.find(".btn_close").click();
	});
	
   /*  $.ajax({
        type:"GET",
        url:"/ko/mypage/order/getglobaldeliverycost",
        cache: false,
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success:function(response){
            
            
            $('#countrySelect').html('<option value="">Select Your Country</option>');
            $.each(response, function(){
                $('#countrySelect').append('<option value="'+this[1]+'">'+this[0]+'</option>');
            });
            
            var $l = layerPopup('globalReturnLayer');
            
            $l.find('#cancelBtn').click(function(){
                $l.find('.btn_close').click();
            });
            
            
            $l.find("#countrySelect").change(function(){
                $l.find("#cost").text(addComma($(this).val()));
            });
            
            $l.find("#returnBtn").click(function(){
                
                location.href="mailto:hsglobal@thehandsome.com";
                
            });
        },
        error:function(e){
            alert(e);
        }
    }); */
    
    
}

var setDeliveryCompleted = function(orderNo, productCode, entryNumber){
    var paramDatas = 'ocode='+orderNo+'&pcode='+productCode+'&entryNumber='+entryNumber;
    
    var msg = "주문하신 상품을 수령하셨습니까?<br/>확인을 클릭하시면 주문상태가 배송완료로<br/>변경됩니다.";
    var lc = new layerConfirm(msg, "확인", "취소");
    
    lc.confirmAction = function(){
        $.ajax({
            type: "get",
            url :  "/ko/mypage/order/setDeliveryCompleted",
            data : paramDatas,          
            dataType : "json",
            error : function( request, status, error ){     
                layerAlert("배송완료 처리에 실패하였습니다.");
                //console.log( "code:" + request.status+"\n" + "message:" + request.responseText+"\n" + "error:" + error );
            }, 
            success : function( result ){
                layerAlert("배송완료 처리 하였습니다.", true);
            }
        });
    };
}

var eGiftBuySmsReSend = function(obj, orderCode, eGiftCardCode) {
    var lc = new layerConfirm("SMS 재전송은 1회 가능합니다.<br />재전송하시겠습니까?"); 
    
    lc.confirmAction = function(){

        $.ajax({
            type: 'GET',
            url: "/ko/mypage/order/eGiftBuySmsReSend",
            async: false,
            data : {"orderCode" : orderCode
                    ,"eGiftCode" : eGiftCardCode},          
            dataType : "json",
            success: function(data) {
                if (data == true) {
                    //$(obj).css("display", "none");
                    
                    $("#reSendEGift").removeClass("wt_ss");
                    $("#reSendEGift").addClass("dis_ss");
                    $("#reSendEGift").css("margin-top:10px;min-width:69px;");
                    $("#reSendEGift").attr("href","javascript:void(0);");
                    
                    layerAlert("재전송하였습니다.");
//                     $("#reSendEGift").remove();
                } else {
                    layerAlert("재전송에 실패하였습니다.");
                }
            },
            error: function(xhr, status, err) {
                // var console = window.console || {log:function(){}};
                // console.log("status : " + status + "\n error : " + err);
            }
       });
        
    };
}

var returnConfirm = function(code){
	
	$.ajax({
		type: "get",
		url :  "/ko/mypage/order/getorderreturninfo?code="+code,
		dataType : "json",
		cache: false,
		error : function( request, status, error ){
			alert(error);
			//console.log( "code:" + request.status+"\n" + "message:" + request.responseText+"\n" + "error:" + error );
		}, 
		success : function( result ){
			
			if(result.data.entries==null){
				layerAlert("반품 신청이 가능한 수량이 없습니다.");
				return;
			}else{
				
				location.href="/mypage/order/returnrequest?code="+code;
				
			}
		}
	});
	
};

var globalCancelRequest = function(code) {
	var alertTag;
	alertTag = '<div class="layerArea" style="z-index:1110;display:none" id="layerDiv">';
	alertTag +='    <div class="layerBg"></div> ';
	alertTag +='    <div class="popwrap w_type_1" style="z-index:150;"> ';
	alertTag +='        <div class="pop_cnt">';
	alertTag +='            <p class="pop_txt_190911">mypage.order.history.list.global.cancel.message1</p>';
	alertTag +='            <p class="pop_txt_190911">mypage.order.history.list.global.cancel.message2</p>';
	if("ko" == "zh") {
		alertTag +='            <p class="pop_txt_190911">mypage.order.history.list.global.cancel.message3</p>';
	}
	alertTag +='            <div class="btnwrap">';
	alertTag +='                <input type="button" class="btn wt_s mr0" value="취소">';
	alertTag +='                <input type="button" class="btn gray_s mr0" value="text.button.ok">';
	alertTag +='            </div>';
	alertTag +='        </div>';
	alertTag +='        <a href="javascript:void(0);" class="btn_close"><img src="/_ui/desktop/common/images/popup/ico_close.png" alt="닫기"></a>';
	alertTag +='    </div>';
	alertTag +='</div>';
	
	var la = new globalCancelLayerAlert(alertTag);
	la.confirmAction = function() {
		location.href = "/ko/mypage/order/cancelrequest?code="+code;
	};
};

var globalCancelLayerAlert = function(tag){
	var t = this;
	var scrollTopCurrent = $(window).scrollTop();
	var $alertLayer = $(tag).appendTo($("body"));
	
	this.confirmAction = function(){};
	
	$alertLayer.find('.popwrap').css('marginTop', getMarginTop2(250,scrollTopCurrent));
	$("#layerDiv").show();
	
	var existedStyle = $('body').attr('style') || '';
	if (existedStyle) {
		existedStyle += ';';
	}
	
	$('body').attr('style', existedStyle + 'overflow:hidden !important');
	$alertLayer.find('.popwrap').css('marginTop', getMarginTop($alertLayer.find('.popwrap').outerHeight()));
	$alertLayer.find('.btn.gray_s').click(function(){
		$('body').attr('style', existedStyle);
		$alertLayer.remove();
		t.confirmAction();
	});
	
	$alertLayer.find('.layerBg, .btn_close, .btn.wt_s').click(function(){
		$('body').attr('style', existedStyle);
		$alertLayer.remove();
	});
};

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

function reviewReturnConfirm(code) {
	var rtn;
	$.ajax({
		type: "get",
		url :  "/ko/mypage/order/getorderreturninfo?code="+code,
		dataType : "json",
		cache: false,
		async: false,
		error : function( request, status, error ){
			alert(error);
		},
		success : function( result ){
			if(result.data.entries==null){
				rtn = "F";
			}else{
				rtn = "T";
			}
		}
	});
	
	return rtn;
}

function getExchangeRate() {
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
						rate_en = result[i].exchangeRate;
						symbol_en = result[i].symbol;
					} else {
						rate_zh = result[i].exchangeRate;
						symbol_zh = result[i].symbol;
					}
				}
			}
		}
	});
}

function getExchangePrice(price) {
	var exchangePrice = "";
	
			exchangePrice = "￦ " + addComma(price);
		
	
	return exchangePrice;
}
//]]>
</script>

				<!-- search1 -->
				<form id="orderSearchForm" method="post" action="/mypage/myorders2">

					<div class="search_wrap">
						<!-- cnd -->
						<ul>
							<li>
								<p class="bul_sty01">
									<label for="term">조회기간<!-- 조회기간 --></label>
								</p>
								<div class="calendar_wrap mr5">
									<input type="text" name="sterm" class="input_date"
										title="mypage.order.history.serch.term.insert" id="sterm"
										readonly />
									<!-- <a href="#" class="ico_cld">날짜 선택 버튼</a> -->
									<div class="form_hyphen pl5">-</div>
									<input type="text" name="eterm" class="input_date"
										title="mypage.order.history.serch.term.insert" id="eterm"
										readonly />
									<!-- <a href="#" class="ico_cld">날짜 선택 버튼</a> -->
								</div>
								<div class="tab_c">
									<ul class="clearfix">
										<li><a href="javascript:void(0);" id="setDateBtn1">1주일<!-- 1주일 --></a></li>
										<li><a href="javascript:void(0);" id="setDateBtn2">1개월<!-- 1개월 --></a></li>
										<li><a href="javascript:void(0);" id="setDateBtn3">3개월<!-- 3개월 --></a></li>
									</ul>
								</div>
							</li>
							<li class="space">
								<p class="bul_sty01">
									<label for="id_sel">검색구분<!-- 검색구분 --></label>
								</p> <select name="searchType" title="검색구분" class="select" id="select">
									<option value="P">상품명
										<!-- 상품명 --></option>
									<option value="O">주문번호
										<!-- 주문번호 --></option>
							</select> <input type="text" name="searchWord" class="input_all" id="searchWord"
								title="검색어 입력" /> <!-- 검색어 입력 -->
							</li>
						</ul>
						<!-- //cnd -->
						<!-- <input type="button" id="searchBtn" class="btn_search" name="searchBtn"
							value="조회하기"> -->
						<button id="searchBtn" class="btn_search" name="searchBtn" value="조회하기">조회하기</button>
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
						<!-- 조회하기 -->
					</div>

				</form>
				<!-- //search1 -->
				<div class="title_wrap mt50">
					<h4>
						상품 주문 목록
						<!-- 상품 주문목록 -->
					</h4>
				</div>

				<!-- table -->
				<div class="tblwrap lncl1812">
					<!-- 클래스추가 181204 -->
					<table class="tbl_ltype review_betterment1905">
						<caption>상품 주문 목록</caption>
						<colgroup class="interval1812">
							<!-- 수정 181204 -->
							<col style="width: 120px">
							<col>
							<col style="width: 43px">
							<col style="width: 112px">
							<col style="width: 89px">
							<col style="width: 111px">
						</colgroup>
						<thead>
							<tr>
								<th scope="col">주문번호<!-- 주문번호 --></th>
								<th scope="col">상품정보<!-- 상품정보 --></th>
								<th scope="col" style="padding: 15px 0">수량<!-- 수량 --></th>
								<!-- 스타일추가 181204 -->
								<th scope="col">판매가<!-- 판매가 --></th>
								<th scope="col">주문상태<!-- 주문상태 --></th>
								<th scope="col">구분<!-- 구분 --></th>
							</tr>
						</thead>
						
						<div id="type" style="display:none">${type}</div>						
						<div id="keyword" style="display:none">${keyword}</div>
						
						
<script type="text/javascript" src="/resources/js/reply.js"></script>

<input type="hidden" class="mid" id="mid" name="mid" value="${MID}">

<script type="text/javascript">
$(document).ready(function(){

	//리스트 처리 시작
	var replyUL = $('#listBody');
	console.log("showList(1) 하기전");
	console.log("mid replace 하기전 : " + $("#mid").val());
	showList(1);
	console.log("showList(1) 한 후");
 	
 	console.log(mid);
 	
	function showList(page){
		var type = document.getElementById("type").innerHTML || "N";
		var keyword = document.getElementById("keyword").innerHTML || "none";
	
		console.log("page"+page);
		console.log("type은 "+type);
		console.log("keyword는 "+keyword);
		
		//DB 데이터 가져오기
		replyService.getList({page: page|| 1, type: type || "N", keyword: keyword}
		, function(cnt, list) {
			//페이지 처리 시작
			console.log("cnt"+cnt);
			console.log("list"+list);
			console.log(list);

			//page -1 일때 새로운 주문 추가시
			if(page == -1){
	    		pageNum = Math.ceil(cnt / 5.0);
	    		showList(pageNum);
	    		return ;
	    	}//end if
	    	//페이지 처리 끝	
			var str="" ;
	    	if(list == null || list.length == 0){ //주문 없을 때
	    		replyUL.html("");
	    		return;
	    	}//end if
	    	for (var i = 0, len = list.length || 0; i < len; i++) {
	    		console.log(list[0]);
	    		for (var j = 0, len1 = list[i].itemList.length || 0; j < len1; j++) {
	    			console.log(list[i].itemList[j].productDetail);
	    	
	    			str += "<tr class='al_middle'>";
	    			if (j == 0) {
	    				str += "<td rowspan='"+list[i].itemList.length+"' class='frt'><p class='num'>"+list[i].oid+"</p>";
	    	    		str += "<span class='sum_date'>("+new Date(list[i].odate).getFullYear()+"."+(new Date(list[i].odate).getMonth() + 1) +"."+new Date(list[i].odate).getDate()+")</span>";
	    	    		str += "<a href='/mypage/order/myorderdetail?code="+list[i].oid+" class='btn_view'>상세보기</a>";
	    	    		
	    	    		if (list[i].ostatus == "입금대기중" || list[i].ostatus == "주문완료") {
	    	    			str += "<a href='javascript:void(0);' class='btn wt_ss addrModBtn' code='"+list[i].oid+"' addr1='"+list[i].oaddress1+"' addr2='"+list[i].oaddress2+"' zip='"+list[i].zipcode+"' rcname='"+list[i].receiver+"' hp1='"+list[i].ophone+"' hp2='1234' hp3='1234' ph1='"+list[i].ophone+"' ph2='' ph3='' or='' frontdoorselectmessage='"+list[i].omemo+"' frontdoormessage='' emailid='"+list[i].oemail+"' emaildomain='naver.com'>배송정보수정</a></td>";
	    	    		}
	    			}
	    			    	
	    		str += "<td><div class='pt_list_all'>";
	    		str += "<a href='"+list[i].itemList[j].productDetail.pcimg1+"'><img src='"+list[i].itemList[j].productDetail.pcimg1+"' alt='상품 이미지'></a>";
	    		str += "<div class='tlt_wrap'>";
	    		str += "<a href='"+list[i].itemList[j].productDetail.pcimg1+"' class='basket_tlt'>";
	    		str += "<span class='tlt'>"+[list[i].itemList[j].productDetail.bname]+"</span> <span class='sb_tlt'>"+list[i].itemList[j].productDetail.pname+"</span></a>";
	    		str += "<p class='color_op'> +color : "+list[i].itemList[j].productDetail.pccolorcode+" <span class='and_line'>/</span> +size : "+list[i].itemList[j].productDetail.psize+" </p></div></div></td>";
	    		str += "<td>"+list[i].itemList[j].oicount+"</td>";
	    		str += "<td>"+list[i].itemList[j].productDetail.
	    		pcprice+"</td>";

	    		str += "<td>"+list[i].ostatus+"<span class='sum_date'>("+new Date(list[i].odate).getFullYear()+"."+(new Date(list[i].odate).getMonth() + 1) +"."+new Date(list[i].odate).getDate()+")</span>";
	    		
	    		if (list[i].ostatus == "배송준비중" || list[i].ostatus == "배송중" || list[i].ostatus == "배송완료") {
	    			str += "<br><a href='#' class='btn wt_ss shippingInfoBtn' ocode='"+list[i].oid+"' pcode='"+list[i].itemList[j].psid+"'>배송조회</a>";
	    		}
	    		
	    		str += "</td><td class='pd12_resize'><div class='btn_wrap'>";
	    		
	    		if (list[i].ostatus == "입금대기중" || list[i].ostatus == "주문완료") {
	    			str += "<a href='/mypage/order/cancelrequest?code=221014P15365577&amp;pcode=LB2C8ACK428U_BK_S' class='btn wt_ss'>주문취소</a>";
	    		} 
	    		if (list[i].ostatus == "배송완료") {
	    			str += "<a href='javascript:openPopupReview('FL2D1HSY006LTL_YL_FR', '221018P15418217', 'YELLOW', '5000', 'http://newmedia.thehandsome.com/FL/2D/SS/FL2D1HSY006LTL_YL_S01.jpg', 'the%20CASHMERE', '[TROLLS PAPER] 축하 메시지 카드', 'SZ12', 'order')' class='btn wt_ss'>상품평 작성</a>";
	    		}
	    		str += "</div></td></tr>";
	    		}
	    	}
	    	replyUL.html(str);
	    	//페이징 출력
	    	showPage(cnt); 
		});//end getList
	   };//end showList				
	 //리스트 처리 끝	
	
	//페이징 처리
	var pageNum = 1;
    var pageFooter = $(".paging");	
    
    function showPage(cnt){
    	var endPage = Math.ceil(cnt / 5.0);
    	var startPage = 1;
    	
    	//시작페이지, 마지막 페이지, 이전페이지, 다음페이지
    	var endNum = Math.ceil(pageNum / 5.0) * 5;  
    	var startNum = endNum - 4; 	
    	var prev = startNum != 1;
    	var next = false;	
    	if(endNum * 5 >= cnt){//마지막페이지계산
            endNum = Math.ceil(cnt/5.0);
        }//end if	
    	if(endNum * 5 < cnt){ //다음페이지 가능
            next = true;
        }//end if
        
    	//페이징 화면 처리 <ul>
        var str = "<a class='prev2' href='"+startPage+"'>처음 페이지로 이동</a>";      
        if (prev) {
        	str += "<a href='"+(startNum - 1)+"' class='prev'>이전 페이지로 이동</a>";
        } else {
        	str += "<a href='javascript:void(0);' class='prev'>이전 페이지로 이동</a>";
        }
        str += "<span class='num'>";
        //페이지 번호 <li>출력    
        for(var i = startNum ; i <= endNum; i++){	        
          var on = pageNum == i ? "on" : "";
          str += "<a href='"+i+"' class='pageBtn "+on+"' pagenum='"+i+"'>"+i+"</a>";
        }//end for
        str += "</span>";
        if(next){
        	str += "<a href='"+(endNum + 1)+"' class='next'>다음 페이지로 이동</a>";    	
        } else {
        	str += "<a href='javascript:void(0);' class='next'>다음 페이지로 이동</a>";
        }
        str += "<a href='"+endPage+"' class='next2'>마지막 페이지로 이동</a>";
        console.log(str);	      
        pageFooter.html(str);
    }//end showPage
	//페이징 처리끝
	
	//페이지 번호 클릭	
	pageFooter.on("click","a", function(e){
		e.preventDefault(); //<a> 동작 중지
	    console.log("page click");	       
	    var targetPageNum = $(this).attr("href"); //페이지넘버 가져오기	       
	    console.log("targetPageNum: " + targetPageNum);	       
	    pageNum = targetPageNum; //값전달
	    showList(pageNum);  //페이지 리스트 다시 출력
	 });//end pageFooter click
});
</script>
						<tbody id="listBody">
							<!-- <tr class="al_middle"> -->
							
							<%-- <c:forEach items="${list }" var="order">
								<td rowspan="1" class="frt"><p class="num">221014P15365577</p>
									<span class="sum_date">(2022.10.14)</span><a
									href="/ko/mypage/order/myorderdetail?code=221014P15365577"
									class="btn_view">상세보기</a><a href="javascript:void(0);"
									class="btn wt_ss addrModBtn" code="221014P15365577"
									addr1="경기도 용인시 기흥구 (00동, 0000)" addr2="000동 000호"
									zip="16918" rcname="장주연" hp1="010" hp2="1234" hp3="1234" ph1=""
									ph2="" ph3="" or="" frontdoorselectmessage=""
									frontdoormessage="" emailid="jjy990409" emaildomain="naver.com">배송정보수정</a></td>
								<td><div class="pt_list_all">
										<a href="/ko/p/LB2C8ACK428U_BK_S"><img
											src="http://newmedia.thehandsome.com/LB/2C/FW/LB2C8ACK428U_BK_S01.jpg"
											alt="상품 이미지"></a>
										<div class="tlt_wrap">
											<a href="/ko/p/LB2C8ACK428U_BK_S" class="basket_tlt"> <span
												class="tlt">[LANVIN BLANC]</span> <span class="sb_tlt">레터링
													골프 양말</span>
											</a>
											<p class="color_op">
												color : BLACK <span class="and_line">/</span> size : S
											</p>
										</div>
									</div></td>
								<td>1</td>
								<td>￦ 23,000</td>
								<td>결제완료<span class="sum_date">(2022.10.14)</span></td>
								<td class="pd12_resize"><div class="btn_wrap">
										<a
											href="/ko/mypage/order/cancelrequest?code=221014P15365577&amp;pcode=LB2C8ACK428U_BK_S"
											class="btn wt_ss">주문취소</a>
									</div></td>
							</c:forEach> --%>
							<!-- </tr> -->
						</tbody>
					</table>
				</div>
				<!-- //table -->
				<!-- paging -->
				<div class="paging"></div>
				<!-- //paging -->

				<!-- Guide Table -->
				<div class="gd_wrap mt70">
					<dl class="gd_list com pl0">
						<dt>
							주문 배송 조회 안내
							<!-- 주문 배송 조회 안내 -->
						</dt>
						<dd>
							<ul class="bul_sty01_li">
								<li>한섬마일리지는 배송 완료 후 10일 후 지급 됩니다.<!-- 한섬마일리지는 배송 완료 후 10일 후 지급 됩니다. --></li>
								<li>반품신청은 배송완료 후 7일까지 가능 합니다.<!-- 반품신청은 배송완료 후 7일까지 가능 합니다. --></li>
								<li>배송준비중 상태에서는 주문의 취소/변경이나 주소의 변경이 불가능 합니다.<!-- 배송준비중 상태에서는 주문의 취소/변경이나 주소의 변경이 불가능 합니다. --></li>
								<li>주문 시 사용한 기프트 카드, 한섬마일리지는 모두 동일 수단으로 환불됩니다.<!-- 주문 시 사용한 기프트 카드 , 한섬마일리지는 모두 동일 수단으로 환불됩니다. --></li>
								<li>한섬마일리지는 정상 매장 기준 5%, 아울렛 1% 적립됩니다. (세일상품 제외)<!-- 한섬마일리지는 정상 매장 기준 5%, 아울렛 1% 적립됩니다. (세일상품 제외) --></li>
								<li>10%를 초과하여 할인하는 상품은 마일리지 적립 대상에서 제외됩니다.<!-- 10%를 초과하여 할인하는 상품은 마일리지 적립 대상에서 제외됩니다. --></li>
								<li>주문완료 상태까지는 배송지 수정이 가능 합니다.<!-- 주문완료 상태까지는 배송지 수정이 가능 합니다. --></li>
								<li>가상계좌 결제 시 입금대기 상태에서 4시간 내 입금하지 않으면 자동으로 주문이 취소 됩니다.<!-- 가상계좌 결제 시 입금대기 상태에서 24시간 내 입금하지 않으면 자동으로 주문이 취소 됩니다. --></li>
								<li>상세보기 화면에서 증빙서류의 출력이 가능 합니다.<!-- 상세보기 화면에서 증빙서류의 출력이 가능 합니다. --></li>
							</ul>
						</dd>
					</dl>
				</div>
				<div class="gd_wrap">
					<div class="delivery_step">
						<p class="title">
							주문/배송프로세스
							<!-- 주문 / 배송 프로세스 -->
						</p>
						<ol>
							<li>
								<p class="step">
									<span>STEP 1</span> 1. 입금대기중
									<!-- 입금 대기중 -->
								</p>
								<p class="txt">
									가상계좌를 선택 하셨다면 결제를 완료해 주세요.
									<!-- 가상계좌를 선택 하셨다면<br>결제를 완료해 주세요. -->
								</p>
							</li>
							<li>
								<p class="step">
									<span>STEP 2</span> 2. 주문완료
									<!-- 주문완료 -->
								</p>
								<p class="txt">
									주문정보를 확인하고 있습니다.
									<!-- 주문정보를 확인 하고<br>있습니다. -->
								</p>
							</li>
							<li>
								<p class="step">
									<span>STEP 3</span> 3. 배송준비중
									<!-- 배송 준비중 -->
								</p>
								<p class="txt">
									상품의 배송을 준비하고 있습니다.
									<!-- 상품의 배송을 준비하고<br>있습니다. -->
								</p>
							</li>
							<li>
								<p class="step">
									<span>STEP 4</span> 4. 배송중
									<!-- 배송중 -->
								</p>
								<p class="txt">
									물품이 발송되어 고객님께 배송 중 입니다.
									<!-- 물품이 발송되어 고객님께<br>배송 중 입니다. -->
								</p>
							</li>
							<li>
								<p class="step">
									<span>STEP 5</span> 5. 배송완료
									<!-- 배송완료 -->
								</p>
								<p class="txt">
									배송이 완료 되었습니다.
									<!-- 배송이 완료 되었습니다.-->
								</p>
							</li>
						</ol>
					</div>
				</div>
				<!-- //Guide Table -->

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
	
	if("true"){
		
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
			url	 : url + '?CSRFToken=68c5cb8a-c60c-49a3-b908-ff7a61970324',
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
			url	 : url + '?CSRFToken=68c5cb8a-c60c-49a3-b908-ff7a61970324',
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
			
	reviewhtml += "                     <span>- 더한섬닷컴에서 구매한 상품의 상품평을 배송완료 30일 이내 작성 시, 추가 마일리지를 지급합니다.</span><br/>";
			
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
    var ssoUrl = 'https://sso.h-point.co.kr:29865' + "/co/setDscdToknJSONP.hd";
    gfnSsoDscdToknReqAjax(ssoUrl, hplogoutSuccess);
}

function hplogoutSuccess(data){
    deletecookie("UID");   
    deletecookie("criteoEmail"); 
    deletecookie("memberGb");
    location.href = "/ko/logout";
}

//]]>
</script>

	<div id="footerWrap">
		<div id="topBtn">
			<a href="javascript:void(0);" class="viewTopArea"><img
				src="http://cdn.thehandsome.com/_ui/desktop/common/images/common/top_btn.png"
				alt="맨 위로" onclick="GA_Event('공통','퀵버튼','TOP');" /></a>
		</div>
		<div class="footer">
			<!--footer_cnts1 -->
			<div class="footer_cnts1 clearfix">
				<!-- footer_menu-->
				<div class="footer_menu cnts1_left">
					<div class="footer_logo">
						<a href="/ko/main" onclick="GA_Event('공통','로고','하단');"><img
							src="http://cdn.thehandsome.com/_ui/desktop/common/images/common/footer_logo_renew.png"
							alt="HANDSOME" /></a>
					</div>
					<div class="footer_link">
						<ul class="clearfix">
							<li><a href="/ko/svcenter/theClubInfo"
								onclick="GA_Event('공통','푸터_메뉴','온라인 멤버십');">온라인 멤버십</a></li>
							<li><a href="/ko/svcenter/memberbenefitguide"
								onclick="GA_Event('공통','푸터_메뉴','한섬 VVIP 혜택');">한섬 VVIP 혜택</a></li>
							<li><a href="/ko/svcenter/pointguide"
								onclick="GA_Event('공통','푸터_메뉴','한섬마일리지 혜택');">한섬마일리지 혜택</a></li>
							<li><a href="/ko/svcenter/couponguide"
								onclick="GA_Event('공통','푸터_메뉴','쿠폰');">쿠폰</a></li>
							<li><a href="/ko/svcenter/asguide"
								onclick="GA_Event('공통','푸터_메뉴','반품&환불안내');">반품&amp;환불안내</a></li>
						</ul>
						<ul class="clearfix">
							<li><a href="/ko/svcenter/submain"
								onclick="GA_Event('공통','푸터_메뉴','고객센터');">고객센터</a></li>
							<li><a href="/ko/svcenter/faq"
								onclick="GA_Event('공통','푸터_메뉴','FAQ');">FAQ</a></li>
							<li><a href="/ko/svcenter/mending"
								onclick="GA_Event('공통','푸터_메뉴','수선진행조회');">수선진행조회</a></li>
						</ul>
						<ul class="clearfix">
							<li><a href="javascript:setLogout();"
								onclick="GA_Event('공통','푸터_메뉴','로그아웃');">로그아웃</a></li>
							<li><a href="/ko/mypage/order/myorders"
								onclick="GA_Event('공통','푸터_메뉴','주문배송조회');">주문배송조회</a></li>
							<li><a href="/ko/mypage/order/myorders"
								onclick="GA_Event('공통','푸터_메뉴','취소/반품');">취소/반품</a></li>
							<li><a href="/ko/mypage/myWish"
								onclick="GA_Event('공통','푸터_메뉴','위시리스트');">위시리스트</a></li>
						</ul>
						<ul class="clearfix">
							<li><a
								href="http://www.handsome.co.kr/ko/company/aboutHandsome.do"
								target="_blank" onclick="GA_Event('공통','푸터_메뉴','회사소개');">회사소개<!-- 회사소개 --></a></li>
							<li><a href="http://www.handsome.co.kr/ko/brand/fashion.do"
								target="_blank" onclick="GA_Event('공통','푸터_메뉴','브랜드소개');">브랜드소개</a></li>
							<li><a
								href="http://www.handsome.co.kr/ko/ir/governance01.do"
								target="_blank" onclick="GA_Event('공통','푸터_메뉴','투자정보');">투자정보</a></li>
							<li><a
								href="https://recruit.ehyundai.com/recruit-info/announcement/list.nhd?pageNo=1&hireGb=01&coCd=HDHAN"
								target="_blank" onclick="GA_Event('공통','푸터_메뉴','채용정보');">채용정보</a></li>
							<li><a
								href="http://www.handsome.co.kr/ko/sustainability/sharedGrowth01.do"
								target="_blank" onclick="GA_Event('공통','푸터_메뉴','동반성장');">동반성장</a></li>
						</ul>
					</div>
				</div>
				<!-- //footer_menu-->
				<div class="footer_apps cnts1_right">
					<ul>
						<li class="loca"><a href="/ko/b/storeInformation"
							onclick="GA_Event('공통','푸터','매장안내');">매장안내</a></li>
						<li class="look"><a href="/ko/magazine/lookbook"
							onclick="GA_Event('공통','푸터','룩북');">룩북</a></li>
						<li class="ico_youtube"><a href="/ko/magazine/youtubeList"
							onclick="GA_Event('공통','푸터_SNS','YOUTUBE');">비디오</a></li>
						<!-- 200330 추가 -->
						<li class="ico_insta" id="f_insta" style="display: none;"><a
							href="https://www.instagram.com/thehandsome_official/"
							target="_blank" onclick="GA_Event('공통','푸터_SNS','INSTAGRAM');">인스타그램</a></li>
						<!-- 200330 추가 -->
					</ul>
					<!--download_app , athome-->
					<div class="cnts1_right_inner">
						<a href="/ko/appDownloadSMS/sendSMSPage"
							onclick="GA_Event('공통','푸터','APP다운로드');"> <img
							src="http://cdn.thehandsome.com/_ui/desktop/common/images/common/footer_ico_apps.png"
							alt="APP 다운로드" style="width: 52px; height: 71px;"> <!-- 				        <img src="/_ui/desktop/common/images/common/ico_apps_new.png" alt="APP 다운로드" style="width:54px;height:70px;"> -->
							<p>APP 다운로드 &gt;</p>
						</a> <a href="/ko/svcenter/footerAthomeInfo" style="margin-right: 0;"
							onclick="GA_Event('공통','푸터','딜리버리서비스');"> <img
							src="http://cdn.thehandsome.com/pc/footer/footer_athome_car.png"
							alt="딜리버리 서비스" style="width: 85px;"> <!-- 				        <img src="http://cdn.thehandsome.com/pc/footer_athome_car.jpg" alt="딜리버리 서비스" style="width:95px;"> -->
							<p>딜리버리 서비스 &#62;</p>
						</a>
					</div>
					<!--//download_app , athome-->
				</div>
			</div>
			<!--//footer_cnts1 -->
		</div>
		<!--footer_cnts2 -->
		<div class="footer_cnts2 clearfix">
			<div class="footer">
				<div class="cnts2_left">
					<a href="/ko/footer/footerTermBusiness"
						onclick="GA_Event('공통','푸터_CNT','서비스이용약관');">서비스이용약관</a> <a
						href="/ko/footer/footerPrivacy"
						onclick="GA_Event('공통','푸터_CNT','개인정보처리방침');"><strong>개인정보처리방침<!-- 개인정보처리방침 --></strong></a>
					<a href="javascript:void(0);" class="box"
						onclick="javascript:window.open('http://www.ftc.go.kr/info/bizinfo/communicationViewPopup.jsp?wrkr_no=1208126337', 'communicationViewPopup', 'width=750, height=700');GA_Event('공통','푸터_CNT','통신판매사업자정보확인');">통신판매사업자정보확인</a>
					<a
						href="https://mark.inicis.com/mark/escrow_popup.php?mid=handsomep1"
						class="box" onclick="GA_Event('공통','푸터_CNT','에스크로서비스가입확인');">에스크로서비스
						가입 확인</a>
					<p class="top_p">
						<span>(주)한섬</span><span>대표이사 : 김민덕</span><span>서울시 강남구 도산대로
							523 한섬빌딩</span><span>TEL 1800-5700 (유료)</span><span class="bgnone">FAX
							02-6078-2856</span>
					</p>
					<p>
						<span>사업자등록번호 120-81-26337</span><span>통신판매업신고번호 강남 제
							00826호</span><span>개인정보보호책임자 윤인수</span><span class="bgnone">호스팅서비스
							: (주) 한섬</span>
					</p>
					<p class="copyright">COPYRIGHT © 2017 HANDSOME. ALL RIGHT
						RESERVED.</p>
				</div>
				<div class="cnts2_right">
					<div class="related_site clearfix">
						<dl class="global lang_1911">
							<dt>
								<a href="javascript:void(0);" class=""
									onclick="GA_Event('공통','푸터_CNT','LANGUAGE');">LANGUAGE</a>
							</dt>
							<dd style="display: none;">
								<ul>
									<li><a href="javascript:language('ko')"
										onclick="GA_Event('공통','푸터_CNT','LANGUAGE_한국어');">한국어</a></li>
									<li><a href="javascript:language('en')"
										onclick="GA_Event('공통','푸터_CNT','LANGUAGE_ENGLISH');">ENGLISH</a></li>
									<li><a href="javascript:language('zh')"
										onclick="GA_Event('공통','푸터_CNT','LANGUAGE_中文');">中文</a></li>
								</ul>
							</dd>
						</dl>
						<dl class="family">
							<dt>
								<a href="javascript:void(0);"
									onclick="GA_Event('공통','푸터_CNT','FAMILY SITE');">FAMILY
									SITE<!-- FAMILY SITE -->
								</a>
							</dt>
							<dd style="">
								<ul>
									<li class="bold_division1811">쇼핑몰 Site<!-- 쇼핑몰 Site --></li>
									<li><a href="https://www.thehyundai.com/Home.html"
										target="_blank"
										onclick="GA_Event('공통','푸터_CNT','FAMILY SITE_더현대닷컴');">더현대닷컴<!-- 더현대닷컴 --></a></li>
									<li><a
										href="https://www.hddfs.com/shop/dm/main.do?ptnrChlCd=00003014"
										target="_blank"
										onclick="GA_Event('공통','푸터_CNT','FAMILY SITE_현대백화점 면세점');">현대백화점
											면세점<!-- 현대백화점 DUTY FREE -->
									</a></li>
									<li><a href="http://esuper.ehyundai.com/" target="_blank"
										onclick="GA_Event('공통','푸터_CNT','FAMILY SITE_e수퍼마켓');">e수퍼마켓<!-- e수퍼마켓 --></a></li>
									<li><a href="https://www.hyundaihmall.com/Home.html"
										target="_blank"
										onclick="GA_Event('공통','푸터_CNT','FAMILY SITE_현대Hmall');">현대Hmall<!-- 현대 Hmall --></a></li>
									<li><a
										href="http://mall.hyundailivart.co.kr/front/vrStoreList.lv"
										target="_blank"
										onclick="GA_Event('공통','푸터_CNT','FAMILY SITE_현대리바트몰');">현대리바트몰<!-- 현대리바트몰 --></a></li>
									<li><a href="http://www.hyundairentalcare.co.kr/"
										target="_blank"
										onclick="GA_Event('공통','푸터_CNT','FAMILY SITE_현대렌탈케어');">현대렌탈케어<!-- 현대렌탈케어 --></a></li>
									<li><a href="http://www.hfashionmall.com/sfmweb/"
										target="_blank"
										onclick="GA_Event('공통','푸터_CNT','FAMILY SITE_H패션몰');">H패션몰<!-- H패션몰 --></a></li>
									<li><a href="https://www.h-vrstation.com/main"
										target="_blank"
										onclick="GA_Event('공통','푸터_CNT','FAMILY SITE_VR STATION');">VR
											STATION<!-- VR STATION -->
									</a></li>

									<li class="bold_division1811">관계사 Site<!-- 관계사 Site --></li>
									<li><a href="http://www.ehyundai.com/newPortal/ir/main.do"
										target="_blank"
										onclick="GA_Event('공통','푸터_CNT','FAMILY SITE_현대백화점그룹');">현대백화점그룹<!-- 현대백화점 그룹 --></a></li>
									<li><a href="https://www.ehyundai.com/newPortal/index.do"
										target="_blank"
										onclick="GA_Event('공통','푸터_CNT','FAMILY SITE_현대백화점');">현대백화점<!-- 현대백화점 --></a></li>
									<li><a href="http://www.hyundaigreenfood.com/"
										target="_blank"
										onclick="GA_Event('공통','푸터_CNT','FAMILY SITE_현대그린푸드');">현대그린푸드<!-- (주)현대그린푸드 --></a></li>
									<li><a href="https://www.hyundaihmall.com/Home.html"
										target="_blank"
										onclick="GA_Event('공통','푸터_CNT','FAMILY SITE_현대홈쇼핑');">현대홈쇼핑<!-- (주)현대홈쇼핑 --></a></li>
									<li><a
										href="http://www.hyundailivart.co.kr/ko/intro/index.lvt"
										target="_blank"
										onclick="GA_Event('공통','푸터_CNT','FAMILY SITE_현대리바트');">현대리바트<!-- (주)현대 리바트 --></a></li>
									<li><a href="http://www.hyundaimedia.com/mpp/index.hcn"
										target="_blank"
										onclick="GA_Event('공통','푸터_CNT','FAMILY SITE_현대미디어');">현대미디어<!-- 현대 미디어 --></a></li>
									<li><a href="http://www.hyundairentalcare.co.kr/"
										target="_blank"
										onclick="GA_Event('공통','푸터_CNT','FAMILY SITE_현대렌탈케어');">현대렌탈케어<!-- 현대렌탈케어 --></a></li>
									<li><a href="http://www.hyundaidreamtour.com/"
										target="_blank"
										onclick="GA_Event('공통','푸터_CNT','FAMILY SITE_현대드림투어');">현대드림투어<!-- 현대드림투어 --></a></li>
									<li><a href="http://www.everdigm.com/" target="_blank"
										onclick="GA_Event('공통','푸터_CNT','FAMILY SITE_에버다임');">에버다임<!-- 에버다임 --></a></li>
									<li><a href="http://www.cnsfoodsystem.co.kr/"
										target="_blank"
										onclick="GA_Event('공통','푸터_CNT','FAMILY SITE_씨엔에스푸드시스템');">씨엔에스푸드시스템<!-- 씨엔에스푸드시스템 --></a></li>
									<li><a href="http://www.hyundaicatering.co.kr/"
										target="_blank"
										onclick="GA_Event('공통','푸터_CNT','FAMILY SITE_현대캐터링시스템');">현대캐터링시스템<!-- 현대캐터링시스템 --></a></li>
									<li><a href="http://www.hyundai-ite.com/index.jsp"
										target="_blank"
										onclick="GA_Event('공통','푸터_CNT','FAMILY SITE_현대IT&amp;E');">현대IT&amp;E<!-- 현대IT&amp;E --></a></li>
									<li><a href="http://www.hyundailnc.com/" target="_blank"
										onclick="GA_Event('공통','푸터_CNT','FAMILY SITE_현대L&amp;C');">현대L&amp;C<!-- 현대L&amp;C --></a></li>
								</ul>
							</dd>
						</dl>


					</div>
					<!-- 푸터 공지 추가 220404 -->
					<!-- 공지 -->
					<div id="noticeWrap" class="notice">
						<div class="controls">
							<a href="javascript:void(0);" class="prev">이전</a> <a
								href="javascript:void(0);" class="next">다음</a>
						</div>
						<div class="list">
							<div class="tlt">
								공지
								<!-- 공지 -->
							</div>
							<ul class="list_new">
								<!-- NoticeContent -->
							</ul>
						</div>
					</div>
					<!-- //공지 -->

					<!-- 뉴스 -->
					<div id="newsWrap" class="news">
						<div class="controls">
							<a href="javascript:void(0);" class="prev">이전</a> <a
								href="javascript:void(0);" class="next">다음</a>
						</div>
						<div class="list">
							<div class="tlt">
								뉴스
								<!-- 뉴스 -->
							</div>
							<ul class="list_new">
								<!-- NewsContent -->
							</ul>
						</div>
					</div>
					<!-- //뉴스 -->
					<!-- // 푸터 공지 추가 220404 -->
				</div>
			</div>
		</div>
		<!--//footer_cnts2 -->
	</div>
	<!-- 네이버 애널리틱스 전환페이지 설정 : s -->
	<!-- 네이버 애널리틱스 전환페이지 설정 : e -->
	<form name="accessiblityForm">
		<input type="hidden" id="accesibility_refreshScreenReaderBufferField"
			name="accesibility_refreshScreenReaderBufferField" value="" />
	</form>
	<div id="ariaStatusMsg" class="skip" role="status" aria-relevant="text"
		aria-live="polite"></div>

	<!--loadingbar-->
	<div class="layerBg"></div>
	<!--//loadingbar-->

	<div id="popwrap_maple_evt2209"
		style="top: 50%; left: 50%; margin: -200px 0 0 -185px; width: 400px; position: fixed; display: block; z-index: 102">
	</div>

	<div class="layerArea" id="mapleLayer" style="display: none;">
		<div class="layerBg"></div>
	</div>

	<!-- Google 리마케팅 태그 코드 -->
	<script type="text/javascript">
	/* <![CDATA[ */
	var google_conversion_id = 943253288;
	var google_custom_params = window.google_tag_params;
	var google_remarketing_only = true;
	/* ]]> */
	</script>
	<script type="text/javascript"
		src="//www.googleadservices.com/pagead/conversion.js">
	</script>
	<noscript>
		<div style="display: inline;">
			<img height="1" width="1" style="border-style: none;" alt=""
				src="//googleads.g.doubleclick.net/pagead/viewthroughconversion/943253288/?value=0&amp;guid=ON&amp;script=0" />
		</div>
	</noscript>

	<script type="text/javascript">  
	
	    var virtusizeViewYn = false;
	    
	        virtusizeViewYn = true;
	        
	    if(virtusizeViewYn){
	         
	    }
	</script>

	<input type="hidden" id="apiConfmKey"
		value="U01TX0FVVEgyMDE5MDYxNzE2NDczMzEwODgxNTI=" />

	<!-- GTM 추적코드 추가 -->
	<!-- Google Tag Manager (noscript) -->
	<noscript>
		<iframe src="https://www.googletagmanager.com/ns.html?id=GTM-5PCJDFJ"
			height="0" width="0" style="display: none; visibility: hidden"></iframe>
	</noscript>
	<!-- End Google Tag Manager (noscript) -->

	<!-- Beusable(뷰저블 코드) : s -->
	<!-- Beusable(뷰저블 코드) : e -->


	<!-- 네이버 애널리틱스 공통 적용 : s -->
	<script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script>
	<script type="text/javascript">
	if (!wcs_add) var wcs_add = {};
	wcs_add["wa"] = "5c81384bbc8d5c";
	if (window.wcs) {
		wcs_do();
	}
</script>
	<!-- 네이버 애널리틱스 공통 적용 : e -->
	<!-- 네이버 애널리틱스 공통 적용(프리미엄로그분석) : s -->
	<script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script>
	<script type="text/javascript"> 
    if (!wcs_add)
    var wcs_add = {};
    wcs_add["wa"] = "s_56892c2154ef";
    
    if (!_nasa)
    var _nasa = {};
    wcs.inflow("thehandsome.com");
    wcs_do(_nasa);
</script>
	<!-- 네이버 애널리틱스 공통 적용(프리미엄로그분석) : e -->
	<!-- Enliple Tracker Start -->
	<script type="text/javascript">
	try{
	    (function(a,g,e,n,t){a.enp=a.enp||function(){(a.enp.q=a.enp.q||[]).push(arguments)};n=g.createElement(e);n.async=!0;n.defer=!0;n.src="https://cdn.megadata.co.kr/dist/prod/enp_tracker_self_hosted.min.js";t=g.getElementsByTagName(e)[0];t.parentNode.insertBefore(n,t)})(window,document,"script");
		enp('create', 'common', 'thehandsome', { device: 'W' });  // W:웹, M: 모바일, B: 반응형
		enp('send', 'common', 'thehandsome');
	} catch(e) {
	    console.log(e);
	}
</script>
	<!-- Enliple Tracker End -->
</body>

<!-- This script is for AceCounter START -->
<script language='javascript' type="text/javascript">
var birthday = 'Fri Apr 09 00:00:00 UTC 1999';
var splitBirthday = birthday.split(" ");
var AceAge = "";
if(splitBirthday.length == 6) {
	var AceDate = new Date();
	AceAge = AceDate.getFullYear()-splitBirthday[5]+1
} else {
	AceAge = 0;
}
var _ag   = AceAge;         
var _id   = 'wkdwndus0409';    		
var _mr   = '';        	
var _gd   = 'woman';         
var _ud1 = "1" ;		// 사용자 정의변수 1 ( 1 ~ 10 정수값)
</script>
<!-- AceCounter END -->
<!-- AceCounter Log Gathering Script V.7.5.2013010701 -->
<script language='javascript'>
	var _AceGID=(function(){var Inf=['dgc17.acecounter.com','8080','AP6F40149814536','CW','0','NaPm,Ncisy','ALL','0']; var _CI=(!_AceGID)?[]:_AceGID.val;var _N=0;var _T=new Image(0,0);if(_CI.join('.').indexOf(Inf[3])<0){ _T.src =( location.protocol=="https:"?"https://"+Inf[0]:"http://"+Inf[0]+":"+Inf[1]) +'/?cookie'; _CI.push(Inf);  _N=_CI.length; } return {o: _N,val:_CI}; })();
	var _AceCounter=(function(){var G=_AceGID;if(G.o!=0){var _A=G.val[G.o-1];var _G=( _A[0]).substr(0,_A[0].indexOf('.'));var _C=(_A[7]!='0')?(_A[2]):_A[3];	var _U=( _A[5]).replace(/\,/g,'_');var _S=((['<scr','ipt','type="text/javascr','ipt"></scr','ipt>']).join('')).replace('tt','t src="'+location.protocol+ '//cr.acecounter.com/Web/AceCounter_'+_C+'.js?gc='+_A[2]+'&py='+_A[4]+'&gd='+_G+'&gp='+_A[1]+'&up='+_U+'&rd='+(new Date().getTime())+'" t');document.writeln(_S); return _S;} })();
</script>
<noscript>
	<img src='http://dgc17.acecounter.com:8080/?uid=AP6F40149814536&je=n&'
		border='0' width='0' height='0' alt=''>
</noscript>
<!-- AceCounter Log Gathering Script End -->

<!-- adinsight 공통스크립트 start -->
<script type="text/javascript">
var TRS_AIDX = 11864;
var TRS_PROTOCOL = document.location.protocol;
document.writeln();
var TRS_URL = TRS_PROTOCOL + '//' + ((TRS_PROTOCOL=='https:')?'analysis.adinsight.co.kr':'adlog.adinsight.co.kr') +  '/emnet/trs_esc.js';
document.writeln("<scr"+"ipt language='javascript' src='" + TRS_URL + "'></scr"+"ipt>");
</script>
<!-- adinsight 공통스크립트 end -->


</html>
<!--layer popup-->
<div class="popwrap w_type_4" id="addrModPop" style="display: none;">
	<!-- Title1 -->
	<div class="title_wrap">
		<h4 class="float_left">
			<spring:theme code="global.delivery.modaddr" />
			<!-- 배송지 수정 -->
		</h4>
		<p class="reqd_txt none">
			<strong class="reqd">*</strong> 표시는 필수항목입니다.
			<!-- 표시는 필수항목입니다. -->
		</p>
	</div>
	<!-- //Title1 -->
	<!-- Table -->
	<div class="tblwrap">
		<form id="addrModForm" action="/ko/mypage/order/myorders"
			method="post">
			<input type="hidden" name="code" id="code" value="" /> <input
				type="hidden" name="cellphone" id="hp" value="" /> <input
				type="hidden" name="phone1" id="ph" value="" /> <input
				type="hidden" name="email" id="email" value="" />
			<table class="tbl_wtype1">
				<caption>제목입력</caption>
				<colgroup>
					<col style="width: 150px" />
					<col />
				</colgroup>
				<tbody>
					<tr>
						<th scope="row"><strong class="reqd">*</strong><label
							for="adress">배송지 주소</label></th>
						<td>
							<!-- address --> <input type="text" name="postalcode"
							title="우편번호" id="zipCode" class="post" readonly /> <input
							type="button" value="우편번호 조회" class="btn add_s" id="findAddrBtn" /><br />
							<input type="text" name="streetname" id="address1" title="주소1"
							class="post_wall top" readonly /> <input type="text"
							name="streetnumber" id="address2" value="나머지 주소를 입력해 주세요."
							title="주소2" class="post_wall" readonly /> <!-- //address -->
						</td>
					</tr>
					<tr>
						<th scope="row"><strong class="reqd">*</strong><label
							for="name">수령인</label></th>
						<td><input type="text" name="lastname" id="name"
							maxlength="13" title="수령인" value="" /></td>
					</tr>
					<tr>
						<th scope="row"><strong class="reqd">*</strong><label
							for="hp1">휴대폰 번호</label></th>
						<td>
							<!-- hp --> <select id="hp1" title="휴대폰 번호 앞자리" class="hp_num1">
								<option value="010">010</option>
								<option value="011">011</option>
								<option value="016">016</option>
								<option value="017">017</option>
								<option value="018">018</option>
								<option value="019">019</option>
						</select>
							<div class="form_hyphen">-</div> <input type="text" id="hp2"
							title="휴대폰 번호 가운데자리" class="hp_num2" numberOnly="true"
							maxlength="4" />
							<div class="form_hyphen">-</div> <input type="text" id="hp3"
							title="휴대폰 번호 뒷자리" class="hp_num2" numberOnly="true"
							maxlength="4" /> <!-- //hp -->
						</td>
					</tr>
					<tr>
						<th scope="row" class="th_space"><label for="ph1">연락처</label></th>
						<td>
							<!-- hp --> <select id="ph1" title="연락처 앞자리" class="hp_num1">
								<option value="">선택</option>
								<option value="02">02</option>
								<option value="031">031</option>
								<option value="032">032</option>
								<option value="033">033</option>
								<option value="041">041</option>
								<option value="042">042</option>
								<option value="043">043</option>
								<option value="044">044</option>
								<option value="051">051</option>
								<option value="052">052</option>
								<option value="053">053</option>
								<option value="054">054</option>
								<option value="055">055</option>
								<option value="061">061</option>
								<option value="062">062</option>
								<option value="063">063</option>
								<option value="064">064</option>
						</select>
							<div class="form_hyphen">-</div> <input type="text" id="ph2"
							title="연락처 가운데자리" class="hp_num2" numberOnly="true" maxlength="4" />
							<div class="form_hyphen">-</div> <input type="text" id="ph3"
							title="연락처 뒷자리" class="hp_num2" numberOnly="true" maxlength="4" />
							<!-- //hp -->
						</td>
					</tr>
					<tr>
						<th scope="row" class="th_space"><label for="orderr">배송
								요청사항</label></th>
						<td id="orderrArea">
							<!-- input -->
							<div class="input_sumtxt">
								<input name="orderr" id="orderr" type="text" value=""
									autocomplete="off" title="배송요청사항" readonly />
								<div>
									<span id="textCnt">0</span> <span>/20자</span>
								</div>
							</div> <!-- //input -->
							<div class="delivery_comt" style="display: none;">
								<ul>
									<li class="deliveryMsg"><a href="#;"
										data-readonly="readonly" deliveryRequestMessage="배송 전 연락 바랍니다">
											배송 전 연락 바랍니다</a></li>
									<li class="deliveryMsg"><a href="#;"
										data-readonly="readonly"
										deliveryRequestMessage="부재 시 문 앞에 놓아주세요"> 부재 시 문 앞에 놓아주세요</a>
									</li>
									<li class="deliveryMsg"><a href="#;"
										data-readonly="readonly"
										deliveryRequestMessage="부재 시 경비실에 맡겨주세요"> 부재 시 경비실에 맡겨주세요</a>
									</li>
									<li class="deliveryMsg"><a href="#;"
										data-readonly="readonly" deliveryRequestMessage="빠른 배송 부탁드립니다">
											빠른 배송 부탁드립니다</a></li>
									<li class="deliveryMsg"><a href="#;"
										data-readonly="readonly"
										deliveryRequestMessage="부재 시 핸드폰으로 연락바랍니다"> 부재 시 핸드폰으로
											연락바랍니다</a></li>
									<li class="deliveryMsg"><a href="#;" data-readonly="write"
										deliveryRequestMessage="직접입력"> 직접입력</a></li>
								</ul>
							</div>
						</td>
					</tr>
					<!-- 211028 공동현관 출입방법 S -->
					<tr class="enter-door211026">
						<th scope="row" class="tooltip191022 th_space tooltip211026-">
							<label for="enter_door" class="">공동현관<br />출입방법
						</label><span class="ico_question">icon</span>
							<div class="delch_box190816 ">
								<span class="arr">위치아이콘</span>
								<ul class="bul_sty01_li">
									<li>공동현관 출입번호가 정확하지 않을 경우, 배송 기사의 판단에 따라 1층 공동현관 앞 또는 경비실에
										배송될 수 있습니다.</li>
									<li>새벽배송 시 배송 전 연락을 드리지 않습니다.</li>
								</ul>
							</div>
						</th>
						<td>
							<div class="input_sumtxt_box">
								<div class="input_sumtxt">
									<!-- 211028 공동현관 출입방법 S -->
									<input name="frontDoorSelectMessage" id="enter_door"
										type="text" value="공동현관 출입방법을 선택해주세요" title="공동현관 출입방법"
										autocomplete="off" readonly />
									<!-- 211028 공동현관 출입방법 E -->
								</div>
								<div class="delivery_comt">
									<ul>
										<li class="deliveryMsg"></li>
										<li class="deliveryMsg"></li>
										<li class="deliveryMsg"></li>
										<li class="deliveryMsg"></li>
										<li class="deliveryMsg"></li>
										<li class="deliveryMsg"></li>
										<li class="deliveryMsg"><a href="#;"
											data-default="공동현관 출입번호" data-input-display="block">공동현관
												출입번호</a></li>
										<li class="deliveryMsg"><a href="#;"
											data-default="자유 출입 가능" data-input-display="none">자유 출입
												가능</a></li>
										<li class="deliveryMsg"><a href="#;" data-default="기타"
											data-input-display="block">기타</a></li>
									</ul>
								</div>
							</div>
							<div class="input_sumtxt enter_front">
								<input id="frontDoorMessage" name="frontDoorMessage" type="text"
									placeholder="15자 이내로 입력하세요" title="출입방법 예시" maxlength="15" />
								<div>
									<span id="frontDoorMessageLength">0</span> <span>/15자</span>
								</div>
							</div>
						</td>
					</tr>
					<!-- 211028 공동현관 출입방법 E -->
					<tr>
						<th scope="row" class="th_space"><label for="emailId">수령자
								E-MAIL</label></th>
						<td><input name="emailId" id="emailId" type="text" value=""
							title="수령자 EMAIL" /> @ <select id="emailDomainSel"
							style="width: 120px" title="이메일 아이디 도메인">
								<option value="">직접입력</option>
								<option value="naver.com">naver.com</option>
								<option value="daum.net">daum.net</option>
								<option value="yahoo.co.kr">yahoo.co.kr</option>
								<option value="lycos.co.kr">lycos.co.kr</option>
								<option value="nate.com">nate.com</option>
								<option value="empas.com">empas.com</option>
								<option value="hotmail.com">hotmail.com</option>
								<option value="msn.com">msn.com</option>
								<option value="google.com">google.com</option>
								<option value="hanmir.com">hanmir.com</option>
								<option value="chol.net">chol.net</option>
								<option value="korea.com">korea.com</option>
								<option value="netsgo.com">netsgo.com</option>
								<option value="dreamwiz.com">dreamwiz.com</option>
								<option value="hanafos.com">hanafos.com</option>
								<option value="freechal.com">freechal.com</option>
								<option value="hitel.net">hitel.net</option>
						</select> <input name="emailDomain" id="emailDomain" type="text" value=""
							title="수령자 EMAIL 도메인" /></td>
					</tr>
				</tbody>
			</table>
			<div>
				<input type="hidden" name="CSRFToken"
					value="68c5cb8a-c60c-49a3-b908-ff7a61970324" />
			</div>
		</form>
	</div>
	<!-- //Table -->
	<div class="btnwrap">
		<input class="btn wt_s" value="취소" type="button" id="cancelBtn" /> <input
			class="btn gray_s mr0" value="등록" type="button" id="applyBtn" />
	</div>

	<!-- btn_close -->
	<a href="#" class="btn_close"><img
		src="http://cdn.thehandsome.com/_ui/desktop/common/images/popup/ico_close.png"
		alt="닫기"></a>
	<!-- //btn_close -->
</div>
<!--//layer popup-->





<div class="popwrap w_type_5" id="globalReturnLayer"
	style="display: none;">

	<div class="pop_cnt">
		<div class="glb_return">
			<p class="return_msg">
				To request any return, please send E-mail to
				hsglobal@thehandsome.com specifying order number, product name and
				the reason for returning.<br>
				<br> Shipping fee for returning would be charged as follows and
				deducted from refund amount. Please check the amount before you
				continue return.
			</p>

			<div class="box">
				<h3 class="pop_tlt">Regional Return Shipping Fee</h3>
				<select name="" id="countrySelect" style="width: 350px">
				</select>
				<p>
					₩ <em id="cost">0</em>
				</p>
			</div>
		</div>

		<div class="btnwrap">
			<input type="button" class="btn wt_s mr0" value="취소" id="cancelBtn" />
			<input type="button" class="btn gray_s mr0" value="반품신청"
				id="returnBtn" />
		</div>
	</div>
	<!-- btn_close -->
	<a href="#" class="btn_close"><img
		src="/_ui/desktop/common/images/popup/ico_close.png" alt="닫기"></a>
	<!-- //btn_close -->
</div>





<div class="popwrap w_type_4" style="display: none;"
	id="globalAddressModify">
	<!-- Title1 -->
	<div class="title_wrap">
		<h4 class="mb10">
			배송정보 수정
			<!-- 배송지 수정 -->
		</h4>
		<p class="reqd_txt">
			표시는 필수항목입니다.
			<!-- 표시는 필수항목입니다. -->
		</p>
	</div>
	<!-- //Title1 -->
	<!-- Table -->
	<div class="tblwrap">
		<form id="addrModForm" action="/ko/mypage/order/myorders"
			method="post">
			<input type="hidden" name="code" id="code" value="" />
			<table class="tbl_wtype1">
				<caption>배송지 정보</caption>
				<colgroup>
					<col style="width: 140px">
					<col>
				</colgroup>
				<tbody>
					<tr>
						<th scope="row"><strong class="reqd">*</strong><label
							for="region">mypage.delivery.pc.countryOrRegion</label></th>
						<td><select id="countryCode" name="countryCode"
							title="Select Your Country" style="width: 300px"
							disabled="disabled">
								<option value="">mypage.order.history.refund.country.selected</option>
						</select></td>
					</tr>
					<tr>
						<th scope="row"><strong class="reqd">*</strong><label
							for="name">checkout.shipto.contactname.english</label></th>
						<td><input value=""
							title="mypage.delivery.contactname.english" name="lastname"
							id="name" type="text" style="width: 435px;" /></td>
					</tr>
					<tr>
						<th scope="row"><strong class="reqd">*</strong><label
							for="localLastName">checkout.shipto.contactname.local</label></th>
						<td><input value="" title="mypage.delivery.contactname.local"
							name="localLastName" id="localLastName" type="text"
							style="width: 435px;" /></td>
					</tr>
					<tr>
						<th scope="row"><strong class="reqd">*</strong><label
							for="Street">mypage.delivery.pc.streetAddress</label></th>
						<td>
							<div class="input_sumtxt">
								<div class="input_sumtxt_box">
									<!-- input -->
									<input id="address1" name="streetname" type="text" value=""
										title="Street address" style="width: 435px;" />
									<!-- //input -->
								</div>
								<div>
									<span id="textCnt1">0</span> <span>/40Byte</span>
								</div>
							</div>
						</td>
					</tr>
					<tr>
						<th scope="row" class="th_space"><label for="Street2">mypage.delivery.pc.streetAddress2</label></th>
						<td>
							<div class="input_sumtxt">
								<div class="input_sumtxt_box">
									<!-- input -->
									<input id="address2" name="streetnumber" type="text" value=""
										title="Street address" style="width: 435px;" />
									<!-- //input -->
								</div>
								<div>
									<span id="textCnt2">0</span> <span>/40Byte</span>
								</div>
							</div>
						</td>
					</tr>
					<tr>
						<th scope="row"><strong class="reqd">*</strong><label
							for="City">mypage.delivery.pc.city</label></th>
						<td><input value="" title="수령인" name="town" id="town"
							type="text" style="width: 300px;" /></td>
					</tr>
					<tr>
						<th scope="row" class="th_space"><label for="State">mypage.delivery.pc.state</label></th>
						<td><input value="" title="수령인" name="state" id="state"
							type="text" style="width: 300px;" /></td>
					</tr>
					<tr>
						<th scope="row"><strong class="reqd">*</strong><label
							for="Zip">mypage.delivery.pc.postalCode</label></th>
						<td><input value="" title="수령인" id="zipCode"
							name="postalcode" type="text" style="width: 300px;" />
							<p class="txt_guide">checkout.page.address.caution.postcode</p></td>
					</tr>
					<tr>
						<th scope="row"><strong class="reqd">*</strong><label
							for="cellphone">mypage.delivery.pc.phoneNumber</label></th>
						<td><input value="" title="수령인" name="cellphone"
							id="cellphone" type="text" style="width: 300px;" />
							<p class="txt_guide">checkout.page.address.caution.phone</p></td>
					</tr>
				</tbody>
			</table>
			<div>
				<input type="hidden" name="CSRFToken"
					value="68c5cb8a-c60c-49a3-b908-ff7a61970324" />
			</div>
		</form>
	</div>
	<!-- //Table -->
	<div class="btnwrap">
		<input class="btn wt_s mr0" value="취소" type="button" id="cancelBtn" />
		<input class="btn gray_s mr0" value="확인" type="button" id="applyBtn" />
	</div>

	<!-- btn_close -->
	<a href="#" class="btn_close"><img
		src="/_ui/desktop/common/images/popup/ico_close.png" alt="닫기"></a>
	<!-- //btn_close -->
</div>

<div class="popwrap w_type_1" style="display: none; min-height: 120px;"
	id="globalReturnPop">
	<div class="pop_cnt">
		<p class="pop_txt_190911">Would you like to request a refund ?</p>
		<div class="btnwrap">
			<input type="button" id="returnCancelBtn" class="btn wt_s mr5"
				value="mypage.order.history.list.global.refund.cancel"
				style="min-width: 120px;"> <input type="button"
				id="returnBtn" class="btn gray_s mr0"
				value="mypage.order.history.list.global.refund.confirm"
				style="min-width: 120px;">
		</div>
	</div>
	<a href="#" class="btn_close"><img
		src="/_ui/desktop/common/images/popup/ico_close.png" alt="닫기"></a>
</div>



<!-- 퀵배송 배송조회 레이어 -->
<div class="popwrap w_type_2 shippingcheck" style="display: none;"
	id="quickDeliveryInfo">
	<!-- Title1 -->
	<div class="pop_tltwrap">
		<h3>배송조회</h3>
		<table>
			<caption>배송조회</caption>
			<thead>
				<tr>
					<th style="width: 47%">일시</th>
					<th style="width: 53%">배송상태</th>
				</tr>
			</thead>
			<tbody id="quickDeliveryInfoBody"></tbody>
		</table>
		<div class="shippingcheck_btn okBtn">
			<a href="#">닫기</a>
		</div>
	</div>

	<!-- //Title1 -->
	<!-- btn_close -->
	<a href="#" class="btn_close"><img
		src="/_ui/desktop/common/images/popup/ico_close.png" alt="닫기"></a>
	<!-- //btn_close -->
</div>