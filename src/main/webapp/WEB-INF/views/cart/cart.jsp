<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ include file="../common/header.jsp" %>

    <!-- Function and Variables Definition Block Start -->
    <script language='javascript' type="text/javascript">
var _JV="AMZ2013010701";//script Version
var _UD='undefined';var _UN='unknown';
var _ace_countvar = 0;
function _IDV(a){return (typeof a!=_UD)?1:0}
var _CRL='http://'+'dgc17.acecounter.com:8080/';
var _GCD='AP6F40149814536';
if( document.URL.substring(0,8) == 'https://' ){ _CRL = 'https://dgc17.acecounter.com/logecgather/' ;};
if(!_IDV(_A_i)) var _A_i = new Image() ;if(!_IDV(_A_i0)) var _A_i0 = new Image() ;if(!_IDV(_A_i1)) var _A_i1 = new Image() ;if(!_IDV(_A_i2)) var _A_i2 = new Image() ;if(!_IDV(_A_i3)) var _A_i3 = new Image() ;if(!_IDV(_A_i4)) var _A_i4 = new Image() ;
function _RP(s,m){if(typeof s=='string'){if(m==1){return s.replace(/[#&^@,]/g,'');}else{return s.replace(/[#&^@]/g,'');} }else{return s;} };
function _RPS(a,b,c){var d=a.indexOf(b),e=b.length>0?c.length:1; while(a&&d>=0){a=a.substring(0,d)+c+a.substring(d+b.length);d=a.indexOf(b,d+e);}return a};
function AEC_F_D(pd,md,cnum){var i=0,amt=0,num=0;var cat='',nm='';num=cnum;md=md.toLowerCase();if(md=='b'||md=='i'||md=='o'){for(i=0;i<_A_pl.length;i++){if(_A_pl[i]==pd){nm=_RP(_A_pn[i]);amt=(parseInt(_RP(_A_amt[i],1))/parseInt(_RP(_A_nl[i],1)))*num;cat=_RP(_A_ct[i]);var _A_cart=_CRL+'?cuid='+_GCD;_A_cart+='&md='+md+'&ll='+_RPS(escape(cat+'@'+nm+'@'+amt+'@'+num+'^&'),'+','%2B');break;};};if(_A_cart.length>0)_A_i.src=_A_cart+"rn="+String(new Date().getTime());setTimeout("",2000);};};
function AEC_D_A(){ var i = 0,_AEC_str= ''; var ind = 0; for( i = 0 ; i < _A_pl.length ; i ++ ){ _AEC_str += _RP(_A_ct[i])+'@'+_RP(_A_pn[i])+'@'+_RP(_A_amt[i],1)+'@'+_RP(_A_nl[i],1)+'^'; if(  escape(_AEC_str).length > 800 ){ if(ind > 4) ind = 0; _AEC_str = _RPS(escape(_AEC_str),'+','%2B')+'&cmd=on' ; AEC_S_F(_AEC_str , 'o', ind) ; _AEC_str = '' ; ind++; }; }; if( _AEC_str.length > 0 ){ if(ind+1 > 4) ind = 0; AEC_S_F(_RPS(escape(_AEC_str),'+','%2B'), 'o', ind+1) ; }; };
function AEC_B_A(){var i=0,_AEC_str='',_A_cart='';var ind = 0;_A_cart = _CRL+'?cuid='+_GCD+'&md=b';for( i = 0 ; i < _A_pl.length ; i ++ ){ _AEC_str += ACE_REPL(_A_ct[i])+'@'+ACE_REPL(_A_pn[i])+'@'+ACE_REPL(_A_amt[i],1)+'@'+ACE_REPL(_A_nl[i],1)+'^';if(escape(_AEC_str).length > 800 ){if(ind > 4) ind = 0;_AEC_str = _RPS(escape(_AEC_str),'+','%2B')+'&cmd=on';AEC_S_F(_AEC_str,'b',ind); _AEC_str = '' ;ind++;};}; if( _AEC_str.length > 0 ){if(ind+1 > 4) ind = 0; AEC_S_F(_RPS(escape(_AEC_str),'+','%2B'),'b',ind+1);};};
function AEC_U_V(pd,bnum){ var d_cnt = 0 ; var A_amt = 0 ; var A_md = 'n' ;var _AEC_str = '' ; for( j = 0 ; j < _A_pl.length; j ++ ){ if( _A_pl[j] == pd ){ d_cnt = 0; if( _A_nl[j] != bnum ){ d_cnt = bnum - parseInt(_RP(_A_nl[j],1)) ; A_amt = Math.round( parseInt(_RP(_A_amt[j],1)) / parseInt(_RP(_A_nl[j],1))); if( d_cnt > 0 ){ A_md = 'i' ; }else{ A_md = 'o' ;};_A_amt[j] = A_amt*Math.abs(d_cnt) ; _A_nl[j] = Math.abs(d_cnt);_AEC_str += _RP(_A_ct[j])+'@'+_RP(_A_pn[j])+'@'+_RP(_A_amt[j],1)+'@'+_RP(_A_nl[j],1)+'^';};};};if( _AEC_str.length > 0 ){ AEC_S_F(_RPS(escape(_AEC_str),'+','%2B') ,A_md, 0);};};
function AEC_S_F(str,md,idx){var i=0,_A_cart='';var k=eval('_A_i'+idx);if(md=='I')md='i';if(md=='O')md='o';if(md=='B')md='b';if(md=='b'||md=='i'||md=='o'){_A_cart=_CRL+'?cuid='+_GCD;_A_cart+='&md='+md+'&ll='+(str)+'&';k.src=_A_cart+"rn="+String(new Date().getTime());window.setTimeout('',2000);};};
if(!_IDV(_A_pl)) var _A_pl = Array(1) ;
if(!_IDV(_A_nl)) var _A_nl = Array(1) ;
if(!_IDV(_A_ct)) var _A_ct = Array(1) ;
if(!_IDV(_A_pn)) var _A_pn = Array(1) ;
if(!_IDV(_A_amt)) var _A_amt = Array(1) ;
</script>
    <!-- Function and Variables Definition Block End-->
       <script type="text/javascript">
//<![CDATA[
var qtyLimitProductYnMap = {};
$(document).ready(function ()
{
	
		qtyLimitProductYnMap['OL2C9ASZ014U_BK_41'] = 'false';	
	
		qtyLimitProductYnMap['LB2C8ABZ721U_LE_FR'] = 'true';	
	
		qtyLimitProductYnMap['LB2CAWTO363M_KE_L'] = 'true';	
	
		qtyLimitProductYnMap['CM2C8KTO071M_JD_105'] = 'true';	
	
		qtyLimitProductAlert();
	
    
    //2017. 01. 17 이현승 - 상품판매금액이 변경된 사항을 Alert메시지로 노출함.
    showChangeProductPriceLayoutAlert();
    
    //매장수령의 경우
    
    
    //앳홈의 경우
    

    //퀵배송의 경우
    
    
    var emailAddress = "";
    emailArr = emailAddress.split("@");
    $("#emailId").val(emailArr[0]);
    $("#emailDomain").val(emailArr[1]);
    
    //GA 이벤트 태깅 
    $(document).on('click','input:checkbox', function(){
        var isChecked = $(this).is(":checked");
        
        if($(this).attr('id') == 'entryCheckAll'){ // 전체선택시
            if (isChecked) {
                GA_Event('쇼핑백','선택','전체선택');
            } else {
                GA_Event('쇼핑백','선택','전체해제');
            }
        } else if ($(this).attr('name') == 'cartlist') { // 개별 선택시
            var label = $(this).parent().next().find('.sb_tlt').text();
            var selYN = "";
            if (isChecked) {
                selYN = "선택";
            } else {
                selYN = "해제";
            }
            GA_Event('쇼핑백','선택',selYN+label);
        }
    });
    
    $(document).on("click", '.left', function(){
    	
    	var soldout = $(this).data("soldout");
    	if(soldout == true) {
    		return false;
    	}
    	
        var qty = $(this).parents('.qty_sel').find('.mr0');
        
        if (qty.val() == 1) {
            return ;
        }
        qty.val(Number(qty.val()) - 1);
    });

    $(document).on("click", '.right', function(){
    	var soldout = $(this).data("soldout");
    	if(soldout == true) {
    		return false;
    	}
    	
        var qty = $(this).parents('.qty_sel').find('.mr0');
        
        //if (qty.val() > 99) {
            //layerAlert("'[브랜드명]상품명'의 \n재고수량은 n개 입니다.\n다시 입력해 주시기 바랍니다.");
            //return ;
        //}
        var productCode = $(this).parents('form').find('input[name="productCode"]').val();
        
        var promotionFlag = promotionProductCartAddCheck(productCode);
        if(promotionFlag){
            layerAlert("동일 옵션(컬러/사이즈)으로 최대 1개 구매 가능합니다.");
        }else{
            qty.val(Number(qty.val()) + 1);
        }
    });
    
    $(document).on("click", '.btn_option', function(){
        //옵션변경 클릭시 모든 하위 레이어 닫기
        $("[class^=store_info]").css("display","none");
        var checkIdx = $(".btn_option").index(this);
        $(".basket_info").each(function(idx){
           if(idx != checkIdx){
               $(this).css("display","none");
           } 
        });
        
        var prodid = $(this).prop('id').split("^");
        var curSize = $('#updateCartForm'+prodid[1]).find('input[name=curSize]').val();
        
        if($(this).parents("tr").next("tr").find(".basket_info").prop('style') == 'display: block;'){
            return;
        }
        
        var reserveSaleyyyy = $(this).parent(".option_wrap").find("#reserveSaleyyyy").val();
        var reserveSalemm = $(this).parent(".option_wrap").find("#reserveSalemm").val();
        var reserveSaledd = $(this).parent(".option_wrap").find("#reserveSaledd").val();
        
        var deliveryPlanDate = "{0}년 {1}월{2}일부터 순차적으로 배송됩니다."+ "(옵션 별로 배송 일자를 확인해 주세요.)";
        deliveryPlanDate = deliveryPlanDate.replace("{0}", reserveSaleyyyy).replace("{1}", reserveSalemm).replace("{2}", reserveSaledd);
        
        $.ajax({
            type: "GET",
            url: "/ko/shoppingbag/options",
            dataType: "json",
            data: {"productCode": prodid[2], "prodid":prodid[1], "curSize":curSize},
            success: function(data){
                $('#pt_list_'+prodid[1]).html(data.options);
                $('#pt_list_'+prodid[1]).find(".sz_select > a").each(function(){
                    if($(this).hasClass("on")){
                        $(this).css("line-height","15px");                        
                    }
                });
                
                var form = $('#updateCartForm' + prodid[1]);
                var productCode = form.find('input[name=productCode]'); 
                form.find('input[name=chgProductCode]').val(productCode.val());
                
                $('#pt_list_'+prodid[1]).find('.reserveDeliveryWrap').html(deliveryPlanDate);
            },
            error: function(xhr,  Status, error) {
                alert('sendRequest error : ' + xhr.status + " ( " + error + " ) " );
            }
        });
    });

    $(document).on("click", '.btn', function(){
        var prodid = $(this).prop('id').split("_");
        
        if(prodid[0] == 'optCancelLayer'){
            $(this).parents('.basket_info').slideUp('fast');
        }
        
        if(prodid[0] == 'QuantityProduct'){
            var form = $('#updateCartForm' + prodid[1]);
            var productCode = form.find('input[name=productCode]').val(); 
            var initialCartQuantity = form.find('input[name=initialQuantity]').val();
            var newCartQuantity = form.find('input[name=quantity]').val();
            var cartData = form.data("cart");
            
            
			//#2610 [주문] 가상계좌 결제수단 제외 및 중복 구매 제한 처리 요청 건 20220215 hyunbae
            if(qtyLimitProductYnMap[productCode] == 'true' && parseInt(newCartQuantity) > 2){
            	layerAlert('동일 상품(사이즈/컬러)은<br/>최대 2개까지 선택 가능합니다.');
                return;
            }
            
/*             if($(".fourpm").length > 0){
            	form.find('input[name=deliveryKind]').val("4PM");
            }else{
            	form.find('input[name=deliveryKind]').val("");
            } */
            
            //퀵배송 수량 3개 최대 확인
            var checkQuickQty = false;
            $("[class^=shopping_cart_tab]").find("[name=cartDivision]").each(function(){
                if($(this).attr("data-division") == "quick" && $(this).hasClass("active")){
		            if(Number(newCartQuantity) > 3){
		                layerAlert('퀵배송은 3개 상품까지만 주문이 가능합니다.');
		                checkQuickQty = true;    
		                return;
		            }
		            
                }
            });
            
            if(checkQuickQty){
                return false;
            }
            
            if(initialCartQuantity != newCartQuantity)
            {
                AEC_U_V(productCode, newCartQuantity);
                form.submit();
            }
        }
        
        if(prodid[0] == 'RemoveProduct'){
            var form = $('#updateCartForm' + prodid[1]);
            var productCode = form.find('input[name=productCode]').val(); 
            var initialCartQuantity = form.find('input[name=initialQuantity]');
            var cartQuantity = form.find('input[name=quantity]');
            var cartData = form.data("cart");
            
            AEC_F_D(productCode,'o',initialCartQuantity.val());
            
            cartQuantity.val(0);
            initialCartQuantity.val(0);
            setEcommerceData(prodid[1], "Remove From Cart");
            form.submit();
        }
        
        if(prodid[0] == 'UpdateCart'){
            var form = $('#updateCartForm' + prodid[1]);
            var productCode = form.find('input[name=productCode]'); 
            var initialCartQuantity = form.find('input[name=initialQuantity]');
            var cartQuantity = form.find('input[name=quantity]');
            var chgProductCode = form.find('input[name=chgProductCode]').val();
            var storeId = form.find('input[name=storeId]').val();
            var storePickupDate = form.find('input[name=storePickupDate]').val();
            var cartData = form.data("cart");
            
            if($(".fourpm").length > 0){
            	form.find('input[name=deliveryKind]').val("4PM");
            }else{
            	form.find('input[name=deliveryKind]').val("");
            }
            
            if(chgProductCode == ''){
                layerAlert('사이즈를 선택해 주세요.');
                return;
            }
            
            if(chgProductCode != ''){
                productCode.val(chgProductCode);
            }
            
            form.prop('action', '/ko/shoppingbag/updateCartProduct'); 
            form.submit();
        }
        
        if(prodid[0] == 'deliveryTypeChange'){
    		var checkedVal = "";
    		var storeInfo = "";
     		$("input[type='radio'][name='deliveryType"+prodid[1]+"']:checked").each(function(){
    			if($(this).prop("checked") == true) {
    				checkedVal = $(this).val();
    				storeInfo = $(this).data("storeinfo");
    				return false;
    			}
    		});
        	
     		if(checkedVal == "") {
     			layerAlert("선택되지 않았습니다.");
     			return false;
     		}
     		
     		if(checkedVal == "store") {
	     		//layerAlert('개발중입니다.');
	     		deliveryKindChange(prodid[1], "store", storeInfo);
     		} else {
     			deliveryKindChange(prodid[1], "", "");
     		}
        }
        
    });

	
    	// 즉시할인 포커스
       	// 2017.11.17 노출순서 변경
       	// 데이터가 있을 경우: 청구할인 > 무이자할부 > 즉시할인
       	// 데이터가 없을 경우: 무이자 할부 노출
       	    
         // 기본값: 무이자할인
        	 // 기본값: 무이자할인
        	 // 기본값: 무이자할인
        
        	 // 부분무이자할인		
       	   			 // 무이자할부 진행여부    					     			   
   	   			 // 부분무이자할인		
       	   			 // 무이자할부 진행여부    					     			   
        
        // 할인 정보 노출 Control
         // 기본값: 무이자할인
        
    
		$("#ce_tab li:eq(0) a").click();
		
		//즉시할인 포커스
		var today = new Date();
	  	var year = today.getFullYear();
	  	var month = today.getMonth() + 1;
	  	var day = today.getDate();
	  	
	    if(month < 10){
	    	month = "0"+month;
	    }
	    if(day < 10){
	    	day = "0"+day;
	    }
        
        // 기본 활성화 값
		if(year+""+month+""+day < "20180301"){
			$("#nowSale1").show();
			$("#nowSale1Img").show();
			$("#nowSale2").hide();
	  	}else{
	  		$("#nowSale1").hide();
	  		$("#nowSale1Img").hide();
	  		$("#nowSale2").hide();
	  	}
        
		//앳홈, 퀵배송일 경우 툴팁 변경
	    var html = "";
	    

    var widthLi = $(".rmd_pb_list .hidden_wrap").width() / 6;
    $(".productSlide li").css("padding","0").css("width","auto");
    $(".productSlide li img").css("width","96%").css("padding","0 2%");
    $(".hidden_wrap ul li").width(widthLi);
    $(".hidden_wrap ul li").css("margin-right","0px");
    $(".rmd_pb_list ul").css("width","1000%")
    
    $(document).on("click", ".prev" , function(){
        slidPrev();
    });
    $(document).on("click", ".next" ,  function(){
        slidNext();
    });
    
	
	var prevSelectEntry = ",";
    $(document).on("click", '#onlyFourPm', function(){

    	var checked = $(this).prop("checked");
    	var entryPkList = ",";
    	
		$("tr[name='entryProductInfo']").each(function(){
			if(checked == false) {
				$($(this).find("input[type='checkbox']")).each(function(){
					
					// 체크되있던거
					var checkTempPk = "," + $(this).data("pk") + ",";
					if(prevSelectEntry.indexOf(checkTempPk) > -1) {
						$(this).prop("checked", true);
					}
				});
				
				if($(this).find("input[type='checkbox']").prop("checked") == true){
					entryPkList += $(this).data("pk");
					entryPkList += ",";
				}
				
				$(this).show();
			} else {
				$($(this).find("input[type='checkbox']")).each(function(){
					if($(this).prop("checked") == true) {
						prevSelectEntry += $(this).data("pk") + ","; // 체크되있던거
					}
				});
				
				var deliveryKind = $(this).data("deliverykind");
				if(deliveryKind == "FOUR_PM") {
					if($(this).find("input[type='checkbox']").prop("checked") == true){
						entryPkList += $(this).data("pk");
						entryPkList += ",";
					}
				} else {
					$($(this).find("input[type='checkbox']")).each(function(){
						$(this).prop("checked", false);
					});
					
					var outofstock = $(this).data("outofstock");
					if(outofstock == false) {
						$(this).hide();	
					}
				}
			}
		});
		
		if(checked == false) {
			prevSelectEntry = ","; // 초기화
		}
		
		//if(entryPkList != ",") {
			cartListCheckPrice(entryPkList, true);
		//}
    });
	
	
	$(document).on("click", "#entryCheckAll" ,function() {
		var eachName = $(this).val();
		eachName = "input[name="+eachName+"]";
		
		var checkProp = $(this).prop("checked");
		var checkOnlyFourPm = $("#onlyFourPm").prop("checked");
		$(eachName).each(function(){
			
			if(checkOnlyFourPm == true) {
				var deliveryKind = $(this).data("deliverykind");
				if(deliveryKind == "FOUR_PM") {
					if($(this).prop("disabled") == false) {
						$(this).prop("checked", checkProp);
					}
				} else {
					
				}
			} else {
				if($(this).prop("disabled") == false) {
					$(this).prop("checked", checkProp);
				}
			}

		});
		
		cartListCheckPrice(",", false);
	});
	
	$(document).on("click", "input[name='cartlist']" ,function() {
	    var obj = this;
	    var isCartListCheckPrice = true;
		if($("input:checkbox[name='cartlist']:checked").length > 0){
			$("[class^=shopping_cart_tab]").find("[name=cartDivision]").each(function(){
			    if($(this).attr("data-division") == "store"){
			        if($(this).hasClass("active")){
			            //매장수령일 경우 동일한 브랜드 and 매장 만 체크box 처리
	                    var targetIdx = $("input[name='cartlist']").index(obj);
	                    var targetBrand = $("input[name='cartlist']").eq(targetIdx).parent().next().find(".tlt_wrap > a > span:eq(0)").html();
	                    var targetStore = $("input[name='cartlist']").eq(targetIdx).parent().next().find(".storepick_opt_wrap .info").html();
			            $("input:checkbox[name='cartlist']").each(function(idx){
			                if(targetIdx != idx){
			                    var tempBrand = $(this).parent().next().find(".tlt_wrap > a > span:eq(0)").html();
			                    var tempStore = $(this).parent().next().find(".storepick_opt_wrap .info").html();
			                    
			                    if(targetBrand != tempBrand || targetStore != tempStore){
			                        $(this).prop("disabled", true);
			                    }
			                }
			            });		            
			        }
			    }else if($(this).attr("data-division") == "athome"){
			        if($(this).hasClass("active")){
				        if($("input:checkbox[name='cartlist']:checked").length > 3){
				            layerAlert('앳홈은 3개 상품 까지만 주문이 가능합니다.');
				            isCartListCheckPrice = false;
				        }
			        }
			    }
			});
		}else{
		    if($("#ordersheetCartDivision").val() != ""){
		        $("input:checkbox[name='cartlist']").prop("disabled", false);
		    }
		}
		
		if(isCartListCheckPrice){
		    cartListCheckPrice(",", false);
		}else{
		    return false;
		}
	});	
	
    /* $(document).on("click", '.btn_option2', function(){
    	var entryNumber = $(this).data("entrynumber");
		
    	var lc = new layerConfirm('다음날 배송가능한 상품입니다.<br/>4PM 배송특화로 변경하시겠습니까?', '4PM으로 변경', '일반택배로 변경');
    	lc.confirmAction = function(){
    		deliveryKindChange(entryNumber, "4pm", "");
    		return false;
    	};
    	lc.cancelAction = function(){
    		deliveryKindChange(entryNumber, "", "");
    		return false;
    	};
    }); */
    
    
    $(document).on("click", ".rd_wrap > input[type='radio'][name^='deliveryType']" ,function() {
    	var deliveryType = $(this).val();
    	var entryNumber = $(this).data("entrynumber");
    	var onlyStorePickup = $(this).data("onlystorepickup");
    	
    	$("#deliveryChangeTxt1_"+entryNumber).text("");
    	$("#deliveryChangeTxt2_"+entryNumber).text("");
    	
    	if(deliveryType == "store") {
	    	var productCode = $(this).data("productcode");
	    	var tempBrandCode = $(this).data("brandcode").split("_"); 
	    	var BrandCode = tempBrandCode[0];
	    	var storeType = tempBrandCode[1];
	    	
    		fn_popupStorePickUp(entryNumber, productCode, BrandCode, storeType);
    	}  else {
    		if(onlyStorePickup == true) {
    			layerAlert('매장수령전용상품입니다.');
    		} else {
    			$("#deliveryChangeTxt2_"+entryNumber).html("상품의 배송옵션이 <span>택배</span>로 변경 됩니다.");
    		}
    	}
    	return;
    });
    
	
    
	$(document).on("click", "a[name='cartDivision']" ,function() {
		var division = $(this).data("division");
		
		$.ajax({
			type: "GET",
			url: "/ko/shoppingbag/shoppingbagCartView",
			dataType: "html",
			async : false,
	        cache : false,			
			data: {"cartDivision" : division},
			success: function(data){
				$("#shoppingbagCartView").html(data);
				
				$("a[name='cartDivision']").each(function(){
					if($(this).data('division') == division){
						$(this).prop("class", "active");
					} else {
						$(this).prop("class", "");
					}
				});
				$("#ordersheetCartDivision").val(division);
				
				var soldoutCheck = $(".soldout").length;
				
				if($(".soldout").length > 0) {
					var soldoutEntryNumber = "";
					
					$(".soldout").each(function(){
						soldoutEntryNumber = $(this).data('entrynumber') + ",";
					}); 
					
					if(soldoutEntryNumber == "") {
						return;
					}
					
					soldoutEntryNumber = "," + soldoutEntryNumber;
					
					$("input:checkbox[name='cartlist']").each(function(){
						var compareEntryNumber = "," + $(this).val() + ",";
						
						if(compareEntryNumber.indexOf(soldoutEntryNumber) > -1){
							$(this).click();
							$(this).prop("disabled", true);
						}
					});
				} else {
					//$("#outOfStockRemoveBtn").hide();
				}
				
				//매장수령일 경우 정책 초기화
				if(division == "store"){
				    storePickupInit();
				}else if(division == "athome"){
				    athomeInit();
				}
				cartInfomationList();
				
				var html = "";
				//앳홈, 퀵배송일 경우 툴팁 변경
				if(division == "athome"){
				    html += "<li>앳홈 서비스 이용 시 배송비 무료 입니다.</li>";
				}else if(division == "quick"){
	                html += "<li>퀵 배송비(5,000원)는 주문상품의 금액과 관계없이 별도 청구되는 배송비입니다.</li>";
	                html += "<li>퀵배송 서비스는 한섬마일리지, H.Point, e-money로 배송비 결제가 불가합니다.</li>";
	                
				}else{
				    html += "<li>쿠폰/바우처 할인금액 및 한섬마일리지/H.Point 사용을 제외한 실 결제금액 기준 3만원 미만 결제 시 2,500원 배송비가 부과 됩니다.(3만원 이상 구매 시 무료배송)</li>";
				    html += "<li>도서산간 지역은 배송비가 추가될 수 있습니다.</li>";
                    html += "<li>한섬마일리지, H.Point, e-money로 배송비 결제가 불가합니다.</li>";
				}
				
				$(".delch_wrap .bul_sty01_li").html(html);
			},
			error: function(xhr,  Status, error) {
				alert('sendRequest error : ' + xhr.status + " ( " + error + " ) " );
		    }
		});		
	});
	
	
	var cartDivisionActiveYn = false;
	$("a[name='cartDivision']").each(function() {
		if($(this).data('division') == ""){
			$(this).prop("class", "active");
			cartDivisionActiveYn = true;
		} else {
			$(this).prop("class", "");
		}
	});
	
	if(!cartDivisionActiveYn) {
		if($("a[name='cartDivision']").length > 0) {
			$("a[name='cartDivision']").eq(0).prop("class", "active");
		}
	}
	
	if($(".soldout").length > 0) {
		var soldoutEntryNumber = "";
		
		$(".soldout").each(function(){
			soldoutEntryNumber = $(this).data('entrynumber') + ",";
		}); 
		
		if(soldoutEntryNumber == "") {
			return;
		}
		
		soldoutEntryNumber = "," + soldoutEntryNumber;
		
		$("input:checkbox[name='cartlist']").each(function(){
			var compareEntryNumber = "," + $(this).val() + ",";
			
			if(compareEntryNumber.indexOf(soldoutEntryNumber) > -1){
				$(this).click();
				$(this).prop("disabled", true);
			}
		});
	} else {
		//$("#outOfStockRemoveBtn").hide();
	}
	
	//해당 탭의 대상이 없을 경우 숨김 처리
	$(".gd_btn1807 li").each(function(){
		var objN=$(this).find('a').attr('rel');
		var obj=$('.'+objN);
		var chkCnt = 0;
		if(obj.find("tr").length < 1) {
			//$(this).css("backgroundColor","#f5f5f5");	
			$(this).hide();
			chkCnt++;
		}
		
		if(chkCnt == 3){
		    $(".gd_list").hide();
		}
	});
	
	$('.gd_btn1807 li a').on('click',function(){
		var objN=$(this).attr('rel');
		var obj=$('.'+objN);
		
		if(obj.find('tr').length < 1) {
			return;
		}
		
		var lp=($(window).width()-obj.width())/2;
		var tp=($(window).height()-obj.height())/2+$(window).scrollTop();
		if(lp < 0) lp=0;
		if(tp < 0) tp=0;
		$('.layerArea').show();
		obj.css("top", tp).css("position", "absolute").css('left',lp).css("z-index", 101);
		obj.show();
	});
	
	$(".btn_close, .close_btn").on("click", function(){
	    $(".popwrap, .layerArea").hide();
	});
	
	//쇼핑백 이용안내
    cartInfomationList();
	
	
	$(document).on("click", '.gd_btn1807 a:eq(0)', function(){
        $("#ce_tab li:eq(0) a").click();
    });
	

	
});
function cartInfomationList(){
    //제거
    $("[id^=infoAdd]").remove();
    //탭별 이용안내 변경
    $("[class^=shopping_cart_tab]").find("[name=cartDivision]").each(function(){
        if($(this).attr("data-division") == "store"){
            if($(this).hasClass("active")){
                $(".shoppingbag_list .bul_sty01_li").prepend('<li id="infoAddS2">수령신청일이 지난 상품은 장바구니에서 자동 삭제됩니다.</li>');
                $(".shoppingbag_list .bul_sty01_li").prepend('<li id="infoAddS1">동일 브랜드, 동일 매장 상품만 함께 주문하실 수 있습니다.</li>');
                $("#infoFourpmDesc").show();
            }
        }else if($(this).attr("data-division") == "athome"){
            if($(this).hasClass("active")){
                $(".shoppingbag_list .bul_sty01_li").prepend('<li id="infoAddA4">앳홈 서비스는 대리 수령이 불가하고 인수증에 자필 서명이 필요합니다.</li>');
                $(".shoppingbag_list .bul_sty01_li").prepend('<li id="infoAddA3">재고 상황에 따라, 서비스 신청 중 "앳홈"이 불가한 상품이 발생할 수 있습니다. 별도의 고지 예정입니다.</li>');
                $(".shoppingbag_list .bul_sty01_li").prepend('<li id="infoAddA2">편하게 집에서 입어 보시고, 원하는 상품만 48시간 내에 결제하시면 됩니다.</li>');
                $(".shoppingbag_list .bul_sty01_li").prepend('<li id="infoAddA1">앳홈은 3개 아이템까지 결제 없이 입어 보실 수 있는 피팅 서비스 입니다.</li>');
                $("#infoFourpmDesc").show();
            }
        }else if($(this).attr("data-division") == "quick"){
            if($(this).hasClass("active")){
                $(".shoppingbag_list .bul_sty01_li").prepend('<li id="infoAddA3">퀵배송 주문 후, 고객 사유로 미수령 시 반품 처리 됩니다.</li>');
                $(".shoppingbag_list .bul_sty01_li").prepend('<li id="infoAddA2">재고 상황에 따라, 서비스 신청 중 "퀵배송"이 불가한 상품이 발생할 수 있습니다. 별도의 고지 예정입니다.</li>');
                $(".shoppingbag_list .bul_sty01_li").prepend('<li id="infoAddA1">퀵배송 상품은 월~금요일, 자정~10시 이전에 서울 전 지역으로 주문하시면 당일 배송 받으실 수 있습니다.</li>');
                $("#infoFourpmDesc").show();
            }
        }else{
            if($(this).hasClass("active")){
                $(".shoppingbag_list .bul_sty01_li").prepend('<li id="infoAddN2">3만원 구매 시 무료 배송됩니다. 3만원 미만 구매 시 배송비 2,500원이 추가되며, 도서산간 지역으로 배송을 원하실 경우<br/>배송비가 추가될 수 있습니다.</li>');
                $(".shoppingbag_list .bul_sty01_li").prepend('<li id="infoAddN1">4PM 상품은 오후 4시 이전에 주문 하셔야 다음날 배송이 가능하며 재고가 소진될 경우 일반택배로 주문하실 수 있습니다.</li>');
            }
        }
    });
}

function storePickupInit(){
    //값을 초기화 해준다.
    $("#cartDataSubtotal").text("₩"+addComma(0));
    $("#cartDataDeliveryCost").text("₩"+addComma(0));
    $("#cartDataTotalPrice").text("₩"+addComma(0));
    
    //매장수령에 있
    var chkBrandCnt = 0;
    var chkStoreCnt = 0;
    var chkBrandList = "";
    var chkStoreList = "";
    $("input:checkbox[name='cartlist']").each(function(){
        //브랜드가 같은지 확인
        if(chkBrandList == ""){
            chkBrandList = $(this).parent().next().find(".tlt_wrap > a > span:eq(0)").html();
        }else{
            if(chkBrandList != $(this).parent().next().find(".tlt_wrap > a > span:eq(0)").html()){
                chkBrandCnt++;
            }
        }
        
        //수령매장이 같은지 확인
        if(chkStoreList == ""){
            chkStoreList = $(this).parent().next().find(".storepick_opt_wrap .info").html();
        }else{
            if(chkStoreList != $(this).parent().next().find(".storepick_opt_wrap .info").html()){
                chkStoreCnt++;
            }
        }
    });
    
    if(chkBrandCnt == 0 && chkStoreCnt == 0){
        $("#entryCheckAll").prop("disabled", false);
    }else{
        $("#entryCheckAll").prop("disabled", true);
    }
}

function athomeInit(){
    //값을 초기화 해준다.
    $("#cartDataSubtotal").text("₩"+addComma(0));
    $("#cartDataDeliveryCost").text("₩"+addComma(0));
    $("#cartDataTotalPrice").text("₩"+addComma(0));
    
    if($("input:checkbox[name='cartlist']").length > 3){
        $("#entryCheckAll").prop("disabled", true);
    }else{
        $("#entryCheckAll").prop("disabled", false);
    }
}

function quickInit(){
    //값을 초기화 해준다.
    $("#cartDataSubtotal").text("₩"+addComma(0));
    $("#cartDataDeliveryCost").text("₩"+addComma(0));
    $("#cartDataTotalPrice").text("₩"+addComma(0));
    
    if($("input:checkbox[name='cartlist']").length > 3){
        $("#entryCheckAll").prop("disabled", true);
    }else{
        $("#entryCheckAll").prop("disabled", false);
    }
}

//var storePickUpList = "";
function storePickUpHtml(entryNumber, data){

	storePickUpList = data;
	var paging = data.pagination;
	 
	var storeInfo = $("#deliveryType_store_"+entryNumber).data("initstoreinfo");
	var storeId = "";
	var storePickupDate = "";
	var selectStorePickupDateDivison = "";
	
	if($.trim(storeInfo) != "") {
		storeInfo = storeInfo.split("/");
		storeId = storeInfo[0];
		storePickupDate = storeInfo[1];
	}
	
	var storePickUpHtml = "";
	if(storePickUpList == null || storePickUpList.length < 1){
		storePickUpHtml += "<tr>";
		storePickUpHtml += 	"<td colspan='4' class='no_data'>";
		storePickUpHtml += 	'입력하신 매장명 혹은 주소로는 선택하신</br>상품을 수령 할 수 있는 매장이 없습니다.';
		storePickUpHtml += 	"</td>";
		storePickUpHtml += "</tr>";
	 } else {
		for(var i=0; i<storePickUpList.length; i++){
			var selectStoreIdProp = "";
			
			if(storeId != "" && storePickUpList[i].branchCode == storeId) {
				selectStoreIdProp = "checked";
				selectStorePickupDateDivison = "#sel_rd"+i;
			}

			storePickUpHtml += "<tr> \n";
			storePickUpHtml += "<td><input name=\"sel_cp\" id=\"sel_rd"+i+"\" type=\"radio\" title=\"배송지 선택\"></td> \n";
			
			storePickUpHtml += "<td> \n";
			storePickUpHtml += " <div> \n";
			storePickUpHtml += "  <span>"+storePickUpList[i].branchName+"</span> \n";
			storePickUpHtml += "   <p>"+storePickUpList[i].branchAddress+"</p> \n";
			storePickUpHtml += " </div> \n";
			storePickUpHtml += "</td> \n";
			storePickUpHtml += "<td>"+storePickUpList[i].branchTelephone+"</td> \n";
			storePickUpHtml += "</tr> \n";
			
			storePickUpHtml += "<tr class=\"receive_date_wrap1807\" style=\"display:none;\"> \n";
			storePickUpHtml += "	<td></td> \n";
			storePickUpHtml += "	<td colspan=\"2\"> \n";
			storePickUpHtml += "		<div class=\"receive_date\"> \n";
			storePickUpHtml += "			<p class=\"receive_date_tlt\">수령 신청일 선택</p> \n";
			
			storePickUpHtml += "			<ul> \n";
 			for(var j=0; j<storePickUpList[i].pickupPossibleDateList.length; j++) {
				var pickupPossibleDate = storePickUpList[i].pickupPossibleDateList[j];
				var pickupPossibleDateConv = pickupPossibleDate.substring(4,6) + "월 " + pickupPossibleDate.substring(6,8) + "일";
				storePickUpHtml += "				<li><a href=\"#;\" name=\"storePickupDate\" data-value="+pickupPossibleDate+" data-storeid="+storePickUpList[i].branchCode+">"+pickupPossibleDateConv+"</a></li> \n";
			}
			storePickUpHtml += "			</ul> \n";
			storePickUpHtml += "		</div> \n";
			storePickUpHtml += "	</td> \n";
			storePickUpHtml += "</tr> \n";			
		}
	}
	 
	$("#popupStorePickupContent").html(storePickUpHtml);
	 
	$("input[type='radio'][name='sel_cp']").off('click').on('click', function(){
		$('.receive_date_wrap1807').stop().hide();
		$(this).parents('tr').next('tr').stop().slideDown('fast');
		
		var dateBtn='.receive_date_wrap1807 .receive_date ul li a';
		$(dateBtn).each(function(){
			$(this).removeClass('on');
		});
	});
	
	var dateBtn='.receive_date_wrap1807 .receive_date ul li a';
	$(dateBtn).off('click').on('click', function(){
		$(dateBtn).removeClass('on');
		$(this).addClass('on');
	});
	
	var tbodyTr = $('#popupStorePickupContent tr');
	var trLength = $('#popupStorePickupContent tr').length;
	for(var i=2; i<trLength; i++){
		tbodyTr.eq(i).css('background','#f8f8f8');
		tbodyTr.eq(i+1).css('background','#f8f8f8');
		i+=3;
	}
	 
	 if(storeId != "") {
		$(selectStorePickupDateDivison).click();
		 
  		$("a[name='storePickupDate'][data-storeid='"+storeId+"']").each(function(){
  			var pickupDate = $(this).data("value");
  			
  			if(storePickupDate != "" && pickupDate == storePickupDate) {
  				$(this).click();
  				return false;
  			}
		});
	 }
}

function fn_popupStorePickUp(entryNumber, productCode, BrandCode, storeType) {
	
	var obj=$("#storePickupDiv");
	var lp=($(window).width()-obj.width())/2;
	var tp=($(window).height()-obj.height())/2+$(window).scrollTop();
	if(lp < 0) lp=0;
	if(tp < 0) tp=0;
	
	$("#productLayer").show();

	obj.css("top", tp).css("position", "absolute").css("z-index", 101);
	obj.show();
		
	$("#storePickupSearchWord").focus();
	fn_getPopupStoreInfo(entryNumber, productCode, BrandCode, storeType);
}

function fn_getPopupStoreInfo(entryNumber, productCode, BrandCode, storeType){
	
	var productCode = productCode;
	var storePickupSearchWord = $('#storePickupSearchWord').val();
	
	$.ajax({
		 url: "/ko/b/searchPickUpStore",
		 type: "GET",
		 dataType:"json",
		 data: {"brandCode": BrandCode
				, "storeType": storeType
				, "searchWord": storePickupSearchWord},
		 success: function(data){
			 storePickUpHtml(entryNumber, data);
			 
			 
			 $('#storePickupChoiceBtn').off('click').on('click',function(e){
				e.preventDefault();
				var selectChk = 0;
				var selectStoreName = "";
				$("input[type='radio'][name='sel_cp']").each(function(index){
					if($(this).is(":checked")) {
						selectChk = 1;
						$("input[type='radio'][name='deliveryType"+entryNumber+"']:checked").each(function(){
							$(this).data("storeinfo", storePickUpList[index].branchCode);
							return false;
						});
						selectStoreName = storePickUpList[index].branchName;
					}
				});
					
				if(selectChk == 0) {
					var la = new layerAlert('선택된 매장이 없습니다.');
					return false;
				}
				
				var pickupDateChk = false;
				var dateBtn='.receive_date_wrap1807 .receive_date ul li a';
				var selectPickupDate = "";
				var selectPickupDateConv = "";
				$(dateBtn).each(function(){
					if($(this).prop("class") == "on") {
						selectPickupDate = "" + $(this).data("value");
						selectPickupDateConv = selectPickupDate.substring(4,6) + "월" + selectPickupDate.substring(6,8) + "일";
						pickupDateChk = true;
						return false;
					}
				});
				
				if(pickupDateChk == false) {
					var la = new layerAlert('수령신청일이 선택되지 않았습니다.');
					return false;
				}
				
				$("input[type='radio'][name='deliveryType"+entryNumber+"']:checked").each(function(){
					$(this).data("storeinfo", $(this).data("storeinfo") + "/" + selectPickupDate);
					return false;
				});
				
				$("#deliveryChangeTxt1_"+entryNumber).html("수령매장 <span>"+selectStoreName+"</span> 수령예정일 <span>"+selectPickupDateConv+"</span>로 변경 됩니다.");
				
				$("#productLayer .layerBg").removeClass("white");
				$("#productLayer").hide();
				$("#storePickupDiv").hide();
			});

			
			$('#storePickupClose, #storePickupCloseBtn').off('click').on('click',function(e){
				e.preventDefault();
				$("#productLayer .layerBg").removeClass("white");
				$("#productLayer").hide();
				$("#storePickupDiv").hide();
				
				$("input[type='radio'][name='deliveryType"+entryNumber+"']:checked").each(function(){
					$(this).prop("checked", false);
					$(this).data("storeinfo", "");
				});
			});
			
			$('#storePickupSearchBtn').off('click').on('click',function(e){
				/* if($('#storePickupSearchWord').val()==''){
					return false;
				} */
				fn_getPopupStoreInfo(entryNumber, productCode, BrandCode, storeType);
			});
			
			$('#storePickupSearchWord').off('keypress').on('keypress',function(e){
				//e.preventDefault();
				if (e.which == 13 ) {
					e.preventDefault();
					fn_getPopupStoreInfo(productCode, BrandCode, storeType);
					$("#storePickupSearchBtn").click();
				}
			});
		 },
		 error: function(xhr, Status, error) {
			/* var la = new layerAlert(error);
			la.confirmAction = function(){
				return;
			}; */
			console.log(error);
		 }
	});
}

function deliveryKindChange(entryNumber, type, storeInfo) {
	$.ajax({
		type: "GET",
		url: "/ko/shoppingbag/deliveryKindChange",
		dataType: "json",
		async : false,
        cache : false,			
		data: {"entryNumber" : entryNumber
			,"type" : type
			,"storeInfo" : storeInfo},
		success: function(data){
			if(data == "") {
        		var lc = new layerAlert("변경되었습니다.");
                lc.confirmAction = function(){
                	if(type == "store") {
		   				$("a[name='cartDivision']").each(function() {
		   					if($(this).data('division') == $("#ordersheetCartDivision").val()){
		   						$(this).click();
		   					}
		   				});
                	} else {
	                	location.href = "/cart";
                	}
            	};
			} else {
				if(data == "timeOver") {
					layerAlert("4PM 가능한 시간이 아닙니다. 일반배송으로 변경해주십시오.");
				} else if(data == "noChange") {
					layerAlert("재고부족 등으로 4PM으로 변경이 불가능합니다. 일반배송으로 변경해주십시오.");
				} else {
	        		var lc = new layerAlert("잘못된 접근입니다.");
	                lc.confirmAction = function(){
	                	window.location.reload();
	            	};
				}
			}
		},
		error: function(xhr,  Status, error) {
			alert('sendRequest error : ' + xhr.status + " ( " + error + " ) " );
	    }
	});	
}

// 체크된거 계산하는 함수
function cartListCheckPrice(entryPkList, only4pm) {
	if($.trim(entryPkList) == "") {
		entryPkList = ",";
	}
	// 대부분 받아오는게 ","이랑 false
	
	// 히든태그에서 오는값인데..
	var cartDivision = $("#ordersheetCartDivision").val();
	console.log("cartDivision : "+cartDivision);
	if(only4pm == false) {
		$("input[name='cartlist']").each(function(){
			if($(this).prop("checked") == true) {
				entryPkList += $(this).data("pk");
				entryPkList += ",";
			}
		});
	}
	
	var selectProductCount = entryPkList.split(",").length -2; // ,로 시작해서 , 로 끝나므로 -2
	$("#selectProductCount").text(selectProductCount);
	
	$.ajax({
		type: "GET",
		url: "/cartAjax/calculation",
		dataType: "json",
		async : false,
        cache : false,			
		data: {"entryPkList" : entryPkList,
			    "cartDivision" : cartDivision},
		success: function(data){
			$("#cartDataSubtotal").text("₩"+addComma(data.subTotal));
			$("#cartDataDeliveryCost").text("₩"+addComma(data.deliveryCost));
			$("#cartDataTotalPrice").text("₩"+addComma(data.totalPrice));
		},
		error: function(xhr,  Status, error) {
			alert('sendRequest error : ' + xhr.status + " ( " + error + " ) " );
	    }
	});	
}

function outOfStockRemove() {
	if($(".soldout1807").length < 1) {
		layerAlert("품절상품이 없습니다.");
		return false;
	}
	
	var cartDivision = $("#ordersheetCartDivision").val();
	var entryNumber = "";
	$(".soldout1807").each(function(){
		entryNumber += $(this).data("entrynumber") + ",";
	});
	
	if(entryNumber == "") {
		return false;
	}
	
	//entryNumber = entryNumber.substring(0,entryNumber.length-1);
	selectRemove(entryNumber);
}

function selectRemove(entryNumber) {
	var type = "outOfStock";
 	if($.trim(entryNumber) == "") {
 		entryNumber = "";
 		type = "selectRemove";
		$("input:checkbox[name='cartlist']:checked").each(function(){
			entryNumber += $(this).val() + ",";
		});
 	}
 	
	if($.trim(entryNumber) == "") {
		layerAlert("선택된 상품이 없습니다. <br /> 삭제할 상품을 선택해 주세요.");
		return false;
	}
	
	entryNumber = entryNumber.substring(0,entryNumber.length-1);
	var entryArray = entryNumber.split(",");
	
    $.ajax({
        type: "GET",
        url: "/ko/shoppingbag/selectRemove",
        dataType: "json",
        async : false,
        data : {"entryNumber" : entryNumber},
        success: function(data){
			if(data == "") {
        		var lc = "";
        		if(type == "outOfStock") {
        			lc = new layerAlert("품절상품을 삭제하였습니다.");
        		} else {
        			lc = new layerAlert("선택상품을 삭제하였습니다.");
        		}
        		GA_Event('쇼핑백','주문','선택상품삭제');
        		setEcommerceData(entryNumber, "Remove From Cart");
                lc.confirmAction = function(){
                	
	    				$("a[name='cartDivision']").each(function() {
	    					if($(this).data('division') == $("#ordersheetCartDivision").val()){
	    						$(this).click();
	    						$("#cartCount").html(Number($("#cartCount").text()) - entryArray.length);
	    					}
	    				});
                	
            	};
			} else {
        		var lc = "";
        		if(type == "outOfStock") {
					lc = new layerAlert("품절상품 삭제에 실패하였습니다.");
        		} else {
        			lc = new layerAlert("선택상품 삭제에 실패하였습니다.");
        		}
				
                lc.confirmAction = function(){
                	window.location.reload();
            	};
			}
        },
        error: function(xhr,  Status, error) {
            alert('sendRequest error : ' + xhr.status + " ( " + error + " ) " );
        }
    });
}


function slidPrev(){
	if(status == 1 ){
		return;
	}
	status = 1;
	
    var slidUl = $(".hidden_wrap ul");
    
    var liWidth = slidUl.find("li").width()
    var max = (slidUl.find("li").size() - 6) * liWidth;
    var marginLeft = slidUl.css("marginLeft").replace("px", "");
    
    if( marginLeft >= 0 ){
        status = 0;
        return false;
    }
    slidUl.stop().animate({'marginLeft': '+='+liWidth+'px'}, 'normal', function(){status = 0;});
    
    return false;
}


function slidNext(){
	if(status == 1 ){
		return;
	}
	status = 1;
	
    var slidUl = $(".hidden_wrap ul");
    
    var liWidth = slidUl.find("li").width()
    var max = (slidUl.find("li").size() - 6) * liWidth;
    var marginLeft = slidUl.css("marginLeft").replace("px", "");
    
    if( (parseFloat(max) + parseFloat(marginLeft)) <= 0 ){
        status = 0;
        return;
    }
    
    slidUl.stop().animate({'marginLeft': '-='+liWidth+'px'}, 'normal', function(){status = 0;});
    
    return false;
}
 
 
 
 // 선택상품 주문하기 버튼누르면 발생
function checkoutPage() {
    var cartDivision = $("#ordersheetCartDivision").val();
    var resultReturn = true;
     
    
    // 가격이  잘못나온 것들 에러 처리
	$("input[name=checkZeroPrice]").each(function(){
		var price = $(this).val();
		
		if(price <= 0){
			layerAlert("선택 상품은 일시적인 시스템 장애로 구매하실 수 없습니다.<br/>고객센터(1800-5700)로 문의주세요.");
			resultReturn = false;
			return false;
		}
	});
	if(resultReturn == false) {
		return false;
	}
	
	// 체크된거 검사
 	var entryNumber = "";
	$("input:checkbox[name='cartlist']:checked").each(function(){
		entryNumber += $(this).val() + ",";
	});
	// 체크된게없으면 (0부터시작)
	if(entryNumber == "") {
		layerAlert("주문하실 상품을 선택해주세요.");
		return false;
	}
	
	entryNumber = entryNumber.substring(0,entryNumber.length-1);
	console.log(entryNumber);
	//#2610 [주문] 가상계좌 결제수단 제외 및 중복 구매 제한 처리 요청 건 20220215 hyunbae
	
	//개수제한이 걸려있으면...
	var hasQtyLimitProduct = false;
	var entryNumberArray = entryNumber.split(',');
	entryNumberArray.forEach(function(row){
		// updateCartForm 0부터시작
		var productCode = $('#updateCartForm'+row).find('[name=productCode]').val();
		var productQty = $('#updateCartForm'+row).find('[name=initialQuantity]').val();
		if(qtyLimitProductYnMap[productCode] == 'true' && parseInt(productQty) > 2){
			hasQtyLimitProduct = true;
			return;
		}
	})
	
	if(hasQtyLimitProduct){
		layerAlert("동일 상품(사이즈/컬러)은<br/>최대 2개까지 선택 가능합니다.");
		return false;
	}
	
	
/*     //start of 4pm check
    // 이런 태그가없는데?
    if($(".fourpm").length > 0){
    	var fourpmProcessType = "";
    	
        $.ajax({
            type: "GET",
            url: "/cartAjax",
            dataType: "json",
            async : false,
            data : {"entryNumber" : entryNumber
					,"cartDivision" : cartDivision},
            success: function(data){
            	fourpmProcessType = data;
            },
            error: function(xhr,  Status, error) {
                alert('sendRequest error : ' + xhr.status + " ( " + error + " ) " );
            }
        });
        
        if(fourpmProcessType){
        	var result = fourpmProcessType.split("_");
            if(result[0] == "false"){
            	//수량 미달로 인한 일반배송
            	//4시 이후 일반배송
        		var lc = new layerAlert("수량 미달로 인해 일반배송으로 변경됩니다.");
                lc.confirmAction = function(){
            		location.href = "/ko/shoppingbag";
            	};
            	return false;
            }else{
            	if(result[1] == "false"){
            		//4시 이후 일반배송
            		var lc = new layerAlert("오후 시 이후 PM 주문은 일반배송으로 변경됩니다.");
                    lc.confirmAction = function(){
                		location.href = "/ko/shoppingbag";
                	};
                	return false;
            	}
            }
        }
    }
    //end of 4pm check */
    
    //start at home
    
    //end at home
    
    /* //퀵배송 검증 start
    var quickProcessType = "";
    $("[class^=shopping_cart_tab]").find("[name=cartDivision]").each(function(){
        if($(this).attr("data-division") == "quick"){
            if($(this).hasClass("active")){
			    $.ajax({
			        type: "GET",
			        url: "/ko/shoppingbag/checkQuickProduct",
			        dataType: "json",
			        async : false,
			        data : {"entryNumber" : entryNumber,"cartDivision" : cartDivision},        
			        success: function(data){
			            quickProcessType = data;
			        },
			        error: function(xhr,  Status, error) {
			            alert('sendRequest error : ' + xhr.status + " ( " + error + " ) " );
			        }
			    });
			    
			    if(quickProcessType != ""){
			        var la = "";
			        if(quickProcessType == "login"){
			            la = new layerAlert("로그인 후, 서비스 신청 가능합니다.");
			        }else if(quickProcessType == "time" || quickProcessType == "useYn"){
			            la = new layerAlert('퀵배송 주문이 종료되었습니다.</br>내일 00~10시에 다시 이용해 주세요.');
			        }else if(quickProcessType == "maxQty"){
			            la = new layerAlert('퀵배송 주문이 마감되었습니다. 내일 다시 이용해 주세요.');
			        }else if(quickProcessType == "holiday"){
			            la = new layerAlert('퀵배송은 평일(월~금)에만 주문 가능합니다.<br/>평일에 다시 이용해 주세요.<br/>(주말, 공휴일 제외)');
			        }else if(quickProcessType == "noQuick" || quickProcessType == "exist"){
			            la = new layerAlert("잘못된 접근입니다.");          
			        }else if(quickProcessType == "stock"){
			            var lc = new layerAlert('퀵배송 대상 상품의 빠른 재고 소진으로<br/>서비스 대상에서 제외되었습니다.<br/>쇼핑백에서 삭제됩니다.');
			            lc.confirmAction = function(){
			                location.href = "/ko/shoppingbag?cartDivision=quick";
			            };
			            return false;
			        }else if(quickProcessType == "qty"){
			            var lc = new layerAlert('퀵배송 주문은 총 수량이 3개까지만 가능합니다.');
			            lc.confirmAction = function(){
			                location.href = "/ko/shoppingbag?cartDivision=quick";
			            };
			            return false;
			        }
			        
			        if(la != ""){
			            la.confirmAction = function(){
			                return;
			            };
			            return false;
			        }
			    }
			    
            }
        }
    });
    if(quickProcessType != ""){
        return false;
    }
    //퀵배송 검증 end */
    
    // 매장수령일 경우 확인 로직 추가 CMB
    // 브랜드 and 수령매장이 동일할 경우만
    // 날짜가 다른 경우만 확인
    // 화면에 알림을 주기위한 체크로직
    var isStoreCheck = false;
    var isStoreBrandCheck = false;
    var isStorePickCheck = false;
    var isStoreDateCheck = false;
    var pickDateList = new Array;
    
    // 방문수령도 일단 주석
    /* $("[class^=shopping_cart_tab]").find("[name=cartDivision]").each(function(){
        if($(this).attr("data-division") == "store"){
          if($(this).hasClass("active")){
              //체크박스 체크 된 대상만 검증, 2개 이상일 경우
              var checkCnt = 0
              var checkBrandCnt = 0;
              var checkStoreCnt = 0;
              var checkStoreDateCnt = 0;
              
              var brandCheck = "";
              var storeCheck = "";
              var storeDateCheck = "";
              
              $("[name=cartlist]").each(function(){
                  if($(this).is(":checked")){
                      //대상이 2개이상 확인
                      checkCnt++;
                      
                      //브랜드가 같은지 확인
                      if(brandCheck == ""){
                          brandCheck = $(this).parent().next().find(".tlt_wrap > a > span:eq(0)").html();
                      }else{
                          if(brandCheck != $(this).parent().next().find(".tlt_wrap > a > span:eq(0)").html()){
                              checkBrandCnt++;
                          }
                      }
                      
                      //수령매장이 같은지 확인
                      if(storeCheck == ""){
                          storeCheck = $(this).parent().next().find(".storepick_opt_wrap .info").html();
                      }else{
                          if(storeCheck != $(this).parent().next().find(".storepick_opt_wrap .info").html()){
                              checkStoreCnt++;
                          }
                      }
                      
                      //수령날짜가 같은지 확인
                      if(storeDateCheck == ""){
                          storeDateCheck = $(this).parent().next().find(".storepick_opt_wrap .date").html().replace(/[^0-9]/gi, "");
                          pickDateList.push($.trim(storeDateCheck));
                      }else{
                          if(storeDateCheck != $(this).parent().next().find(".storepick_opt_wrap .date").html().replace(/[^0-9]/gi, "")){
                              checkStoreDateCnt++;
                              pickDateList.push($.trim($(this).parent().next().find(".storepick_opt_wrap .date").html().replace(/[^0-9]/gi, "")));
                          }
                      }
                  }
              });
              if(checkCnt > 1){
                  isStoreCheck = true;
              }
              
              if(checkBrandCnt == 0){
                  isStoreBrandCheck = true;
              }
              
              if(checkStoreCnt == 0){
                  isStorePickCheck = true;
              }
              
              if(checkStoreDateCnt > 0){
                  isStoreDateCheck = true;
              }
              //매장이 서로 다른 경우
          }
        }
     });
     
     if(isStoreCheck && isStoreBrandCheck && isStorePickCheck && isStoreDateCheck){
		checkStoreProcess(pickDateList, entryNumber);
		return;
     } */

    
/*     
    if('Y' == 'N'){
        layerAlert("쇼핑백(장바구니)에 저장되어 있는 상품의 재고가 품절 되었습니다.<br/>품절 상품 삭제 후 주문하기버튼을 클릭하시면 나머지 상품 구매가 가능 합니다.");
        return false;
    } */
    
    
    // 이 form 태그에 대하여
	var form = $('#ordersheetCloneForm');
 	var ordersheetEntryNumber = form.find('input[name=ordersheetEntryNumber]');
	ordersheetEntryNumber.val(entryNumber);
	//checkout1(바로주문) 액션은 주문서페이지에서 일괄적으로 처리
	//setEcommerceData(entryNumber, "Checkout1(바로주문)");
	console.log(cartDivision);
	if(cartDivision == "athome"){
		console.log("test if ");
	    GA_Event('쇼핑백','주문','앳홈_신청하기');
	    
	}else{
		console.log("test if else");
	    GA_Event('쇼핑백','주문','선택상품_주문하기');
	}
	
	// 넷퍼넬 쇼핑백 -> 바로주문
	console.log("여기도오나")
	if("false" == "true" && "ko" == "ko"){
        NetFunnel_Action({action_id:"buy_now"},function(ev,ret){
        	console.log("여기도오나2")
        	form.submit();
        });
	}else{
		console.log("여기도오나3");
		form.submit();
	}
	
    // 상품주문 페이지로 form.submit -> action
    //location.href="checkout/ordersheet";
}

function checkStoreProcess(pickDateList, entryNumber){
    var fulldate = Math.max.apply(null, pickDateList);
    var month = fulldate.toString().substring(4,6);
    var day = fulldate.toString().substring(6,8);
    var lc = new layerConfirm("수령신청일이 다른 상품을 함께 주문하셨습니다. 수령신청일이 <font color='red'>"+month+"월 "+day+"일</font>로 변경됩니다.");

    lc.confirmAction = function(){
        var form = $('#ordersheetCloneForm');
        var ordersheetEntryNumber = form.find('input[name=ordersheetEntryNumber]');
        ordersheetEntryNumber.val(entryNumber);

        form.submit();
    };

    return;
}

function continueUrl() {
    location.href="/ko/";
}

function setOptions(obj, prodid, productCode, type)
{
    $(obj).parent().find("a").css("line-height","18px");
    $(obj).addClass("on");
    $(obj).siblings("a").removeClass("on");
    $(obj).css("line-height","15px")

    var form = $('#updateCartForm' + prodid);
    var curSize = form.find('input[name=curSize]').val();
    var chgProductCode = form.find('input[name=chgProductCode]');
    var storeId = form.find('input[name=storeId]').val();
    var storePickupDate = form.find('input[name=storePickupDate]').val();
    
    chgProductCode.val(productCode);
    //alert(chgProductCode.val());

    if(type == 'style')
    {
        $.ajax({
            type: "GET",
            url: "/ko/shoppingbag/options",
            dataType: "json",
            async : false,
	        cache : false,
            data: {"productCode":productCode, "prodid":prodid, "curSize":"", "storeId":storeId},
            success: function(data){
                $('#pt_list_'+prodid).html(data.options);
                try{
                    $(obj).parents('.cl_select').find(".cs_sel1807").text(data.options.product.baseOptions[0].selected.code);
                }catch(e){}
                $('#updateCartForm' + prodid).find('input[name=chgProductCode]').val('');
            },
            error: function(xhr,  Status, error) {
                alert('sendRequest error : ' + xhr.status + " ( " + error + " ) " );
            }
        });
    } else if(type == 'size'){
        $.ajax({
            type: "GET",
            url: "/ko/shoppingbag/optionsSize",
            dataType: "json",
            data: {"productCode":productCode},
            success: function(data){
                var reserveSaleProducts = data[0];
                if(reserveSaleProducts != undefined && reserveSaleProducts != null){
                    var yyyy=reserveSaleProducts.deliveryPlanYear;
                    var mm=reserveSaleProducts.deliveryPlanMounth;
                    var dd=reserveSaleProducts.deliveryPlanDay;
                    
                    var resultTxt = "";
                    resultTxt += '<div class="reserveDeliveryWrap">';
                    resultTxt += '    '+yyyy+'년 '+mm+'월'+dd+'일부터 순차적으로 배송됩니다.(옵션 별로 배송 일자를 확인해 주세요.)';
                    resultTxt += '</div>';
                    if($(obj).parents("dd").find(".reserveDeliveryWrap").length !== 0) {
                        $(obj).parents("dd").find(".reserveDeliveryWrap").html(resultTxt);
                    } else {
	                    $(obj).parents("dd").find(".sz_select").after(resultTxt);
                    }
                    
                    if(form.find('input[name=productCode]').val() == chgProductCode.val()) {
                        
                        var reserveSaleyyyy = $('#updateCartForm' + prodid).parents("tr").find(".pt_list_wrap").find("#reserveSaleyyyy").val();
                        var reserveSalemm = $('#updateCartForm' + prodid).parents("tr").find(".pt_list_wrap").find("#reserveSalemm").val();
                        var reserveSaledd = $('#updateCartForm' + prodid).parents("tr").find(".pt_list_wrap").find("#reserveSaledd").val();
                        
                        var deliveryPlanDate = "{0}년 {1}월{2}일부터 순차적으로 배송됩니다."+ "(옵션 별로 배송 일자를 확인해 주세요.)";
                        deliveryPlanDate = deliveryPlanDate.replace("{0}", reserveSaleyyyy).replace("{1}", reserveSalemm).replace("{2}", reserveSaledd);
                        
                        $(obj).parents("dd").find(".reserveDeliveryWrap").html(deliveryPlanDate);
                    }
                    
 
                }else{
                    $(obj).parents("dd").find(".reserveDeliveryWrap").html("");
                }
            }
        });
    }
}

function addRestockAlert(t, params, productCode) {
	
	
	var color, colorCode, size;
	var productCodeArr = new Array();
	
	if(productCode.indexOf("_") > -1) {
		productCodeArr = productCode.split("_");
		
		if(productCodeArr.length > 1) {
			size = productCodeArr[2];
		}
	}
	
	$("#popupHProduct").val(productCode);
	$("#popupBrandName").text(params.bName);
	$("#popupProductName").text(params.pName);
	$("#popupProductColor").html("COLOR : " + params.color + "<span class='and_line'>/</span> SIZE : " + size);
	$("#popupProductSize").val(size);
	$("#popupProductPrice").text(params.price);
	$("#popupProductImageS01").attr("src", params.imageUrl);
	$("#popupProductImageS01").attr("alt", params.pName);
	
	$.ajax({
		url: '/ko/p/checkRewareHousing',
		type: 'GET',
		dataType: 'json',
		data: { code:productCode },
		success: function(data) {
			if ( 'N' == data.loginYn ) {
				var clc = new customLayerConfirm("장시간 사용하지 않아 로그아웃 되었습니다.", "확인", "취소");
				clc.confirmAction = function() {
					location.href='/ko/member/login';
				};
			}
			if ( data.rewareHousingUserYn == "Y" ) {
                var cla = new customLayerAlert(""+data.userID+"(ID) 로<br/>이미 재입고 알림 신청 이력이 있습니다.<br/>(동일 e-mail)");
            } else if ( data.rewareHousingYn == "Y" ) {
                var cla = new customLayerAlert("이미 신청을 완료하였습니다.");
            } else {
				if(data.rewareHouseOtherProductYn == "Y") {
					var clc = new customLayerConfirm("동일상품의 재입고 알림 신청내역이 있습니다.<br/>다른 옵션으로 재입고 알림 신청을<br/>추가하시겠습니까?", "확인", "취소");
					clc.confirmAction = function() {
						viewRestockApplyPopup();
					}
				} else {
					viewRestockApplyPopup();
				}
			}
		}
	});
}

function viewRestockApplyPopup() {
	var obj = $("#restockReminder");
	var lp = ($(window).width() - obj.width()) / 2;
	var tp = ($(window).height() - obj.height()) / 2 + $(window).scrollTop();
	if(lp < 0) lp = 0;
	if(tp < 0) tp = 0;
	
	$("#productLayer").show();

	obj.css("top", tp).css("position", "absolute").css("z-index", 101);
	obj.show();
}

function addWishList(obj, productCode)
{
    

    $.ajax({
         url: '/ko/wishlist/add-product-action',
         type: "GET",            
         data: {productCode: productCode},
         success: function(data){
             if(data != null && data != ''){
                 if(data == "erroor1"){
                     var la = new layerAlert('로그인을 해야 합니다.');
                 }else{
                     var la = new layerAlert('해당상품이 위시리스트에 존재 합니다.');
                 }
             }else{
                 var cnt = $("#wishlistCount").text();
                 cnt = cnt == null || cnt == "" ? 1 : parseInt(cnt) + parseInt(1);
                 $("#wishlistCount").text(cnt);
                 layerAlert("위시리스트에 등록되었습니다.");
                 
                 obj.prop("class", "btn gray_ss");
             }
         },
         error: function(xhr, Status, error) {
             alert('sendRequest error : ' + xhr.status + " ( " + error + " ) " );
         }
    });
}

/* [2017-01-13 / 이현승 / 장바구니 할인가격체크하기 / START] >>>>> */
function showChangeProductPriceLayoutAlert(){
    var chgProdFlag = 'false';
    if(chgProdFlag == 'true'){
        layerAlert("쇼핑백(장바구니)에 저장되어 있는 상품의 <br />가격이 (세일 또는 세일 종료 등의 이유로) <br /> 변경되었습니다. 리프레시 후, 현재 판매되고 있는 가격으로 적용됩니다. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;");
    }
}
/* [2017-01-13 / 이현승 / 장바구니 할인가격체크하기 / END] <<<<< */

function showExchangeRate(){
    
    var exchangeRateList = '[{symbol=¥, exchangeRate=198.12, currencyCode=CNY}, {symbol=$, exchangeRate=1425.6, currencyCode=USD}]';
    
    
    //var productPrice = $("#productPrice").val() == null || $("#productPrice").val() == 0 ? 0 : $("#productPrice").val();
    //var qty = $("#txtqty").val();
    //var sumPrice = parseFloat(productPrice * qty);
    var sumPrice = parseFloat(4213000);
    
    var addHtml = ""; 
    
    
        var currecy = "CNY";
        var rate = "198.12";
        var simbol = "¥";
        
        var exchangeAmt = Math.round(parseFloat(sumPrice) / parseFloat(rate) * 100) / 100 ;
        
        addHtml += "<p>"+ simbol + ""+addComma(exchangeAmt); +"</p>"
    
        var currecy = "USD";
        var rate = "1425.6";
        var simbol = "$";
        
        var exchangeAmt = Math.round(parseFloat(sumPrice) / parseFloat(rate) * 100) / 100 ;
        
        addHtml += "<p>"+ simbol + ""+addComma(exchangeAmt); +"</p>"
    
    //alert(addHtml);
        
    $("#exchangeDiv").html(addHtml);
    $(".delch_box").css("display","block");
    
}

function goDetailPage(productCode, clickUrl){
    
    var url = '/ko/p' + "/" + productCode;
    var host = "http://"+ $(location).attr('host') + url +"?type=recommendProd";
    
//     var tempUrl = clickUrl + "&url=" + host + url +"?type=recopick";
    var tempUrl = clickUrl + "&url=" + encodeURI(host);
        
    window.location.href=tempUrl;
}

function onMouseOverRecommend() {
    $(".rmd_pb_popup").css('display', 'block');
}
function onMouseOutRecommend() {
    $(".rmd_pb_popup").css('display', 'none');
}


var oneClickProcess = true;
function checkoutOneClick() {
    if(oneClickProcess){
    
        var agent = navigator.userAgent.toLocaleLowerCase();

        if(agent.indexOf("chrome") > -1 && agent.indexOf("/80") > -1 ){
            /*
            var msg = "크롬 브라우저 80 버전 업데이트 이슈에 따라 원클릭결제 서비스 이용이 불가 할 수<br>있습니다.(쿠키 정책 변경)<br><br>" +
                "원활한 원클릭결제를 위해<br>크롬 외 다른 브라우저를 통해 이용해주세요.<br><br>" +
                "빠른 시일 내에 정상화 될 수 있도록<br>노력하겠습니다.";

            new layerAlert(msg);
            return  false;
            */
        }

        oneClickProcess = false;

        $("[class^=shopping_cart_tab]").find("[name=cartDivision]").each(function(){
            if($(this).attr("data-division") != "") {
                if ($(this).hasClass("active")) {
                    var la = new layerAlert('퀵배송/매장수령/앳홈은 배송특화 서비스로</br>원클릭 결제가 불가능합니다.');
                    la.confirmAction = function(){
                        return;
                    };
                    oneClickProcess = true;
                    return;
                }
            }
        });

        var check4pmOver = false;
        vipDeliAvail = true;
        if($("input[name='cartlist']:checked").parent().parent().find(".fourpm").length > 0){
        	vipDeliAvail = false;
        
            $.ajax({
                url: '/ko/shoppingbag/check4pm',
                data: {"deliveryKind":"4pm","buyNowYn":true},
                type: "GET",
                async : false,
                success: function(data){
                    //data가 0 또는 4pm의 경우 담기
                    if(data == "pm_over"){
                        check4pmOver = true;
                        $(".fourpm").remove();
                        $(".cart_top_text").html("");
                        $(".fourpm_pd_ck .input_wrap").html("");
                        // $("#deliveryKind").val("");
                    }
                },
                error: function(xhr, Status, error) {
                    var la = new layerAlert(error);
                    la.confirmAction = function(){
                        return;
                    };
                }
            });
        }

        if(check4pmOver){
            var la = new layerAlert('오후{0}시 이후 주문시 일반배송으로 변경됩니다.');
            la.confirmAction = function(){
                return;
            };
        }

        

        var entryNumber = "";
        var fourPmCount = 0;
        var nomalCount = 0;
        
        $("input:checkbox[name='cartlist']:checked").each(function(){
            if(entryNumber != ""){
                entryNumber += ",";
            }
            entryNumber += $(this).val();
            
            if("FOUR_PM" == $(this).attr("data-deliverykind")){
                fourPmCount++;
            }
            
            if("" == $(this).attr("data-deliverykind")){
                nomalCount++;
            }
        });
        
        if(fourPmCount > 0 && nomalCount > 0) {
            new layerAlert("4PM 주문과 일반배송 주문을 같이 진행 할 수 없습니다.");
            oneClickProcess = true;
            return false;
        }
        
        if(entryNumber == "") {
            new layerAlert("주문하실 상품을 선택해주세요.");
            oneClickProcess = true;
            return false;
        }

        var selectedEntryNumbers = entryNumber.split(",", 50);
        var products ="";
        for(var i=0; i<selectedEntryNumbers.length; i++) {

            var productCode = $("#updateCartForm"+selectedEntryNumbers[i] +" input[name='productCode']").val();
            var productQty = $("#updateCartForm"+selectedEntryNumbers[i] +" input[name='quantity']").val();

            if(productQty < 1){
                new layerAlert('productdetail.basket.errormag.qty');
                oneClickProcess = true;
                return;
            }
            
            
            //#2610 [주문] 가상계좌 결제수단 제외 및 중복 구매 제한 처리 요청 건 20220215 hyunbae
            if(qtyLimitProductYnMap[productCode] == 'true' && parseInt(productQty) > 2 ){
    			layerAlert("동일 상품(사이즈/컬러)은<br/>최대 2개까지 선택 가능합니다.");
                oneClickProcess = true;
    			return;
    		}
            
            

            products += productCode;
            products +=","+ productQty;
            products +="|";
        }
        
        // 넷퍼넬 쇼핑백 -> 원클릭 
        if("false" == "true" &&  "ko" == "ko"){
            NetFunnel_Action({action_id:"buy_now"},function(ev,ret){
            	oneclickLoadingStart(products,vipDeliAvail,entryNumber);
            });
		}else{
			oneclickLoadingStart(products,vipDeliAvail,entryNumber);
		}
    }
}

function oneclickLoadingStart(products,vipDeliAvail,entryNumber)
{
    $("body").append('<div class="layerArea" id="oneclickPopupLayer"><div class="layerBg"></div></div>');
    var loadingHtml = "";
    loadingHtml += '<div class="layerLoading_bar" id="oneclickLoadingDiv" style="width: 100%;height: 100%;top:0;">';
    loadingHtml += '    <div class="ly_oneclick">';
    loadingHtml += '        <img src="http://cdn.thehandsome.com/pc/order/loading_spinner_007s_190827.gif" alt="loading">';
    loadingHtml += '                <p class="ly_ld_main" >최대할인 혜택을 계산 중 입니다</p>';
    loadingHtml += '                <p class="ly_ld_sub">최대할인 혜택을 원클릭결제에 자동 적용하여<br>';
    loadingHtml += '                   편리한 결제가 가능합니다</p>';
    loadingHtml += '    </div>';
    loadingHtml += '</div>';
    $("body").append(loadingHtml);
    $.ajax({
    	url : '/checkout/oneclick?products='+encodeURIComponent(products)+'&vipDeliAvail='+vipDeliAvail ,
    	type : 'GET',
    	success : function(data){
    		$('#oneclickPopupLayer').append(data);
    	},
    	error : function(err){
    		console.log(err.responseText);
    	}
    })

    GA_Event("쇼핑백","주문","1CLICK결제");
    setEcommerceData(entryNumber, "Checkout1(원클릭결제)");
    oneClickProcess = true;
}

function oneClickTargetBlankPopup(wpayData){//원클릭결제 새창 팝업 2001
    WPAY.checkoutAuthSubmit(wpayData);
}

function addHidden(ptag, hname, hvl) {
    
    if($("#"+hname).length >0){
        $("#"+hname).remove();
    }
    return $('<input/>').attr('type'    , 'hidden')
                        .attr('id'      , hname)
                        .attr('name'    , hname)
                        .attr('value'   , hvl)
                        .appendTo(ptag);
}

/* 주문서간편결제 : 결제 인증 후 콜백
원클릭구매 : iframe 안에서 실행되기 때문에, target 을 _top으로 지정합니다
 */
var checkoutPaymentAuthCallback = function (resultCode, resultMsg, result) {
    switch(resultCode) {
	case "2406": // 쿠키정보가 없습니다.
		//layerWpayCookieSettingView();
		//WPAY.close();
		//window.parent.postMessage({layerClose:'layerClose'},'*');
		//window.parent.postMessage({inicisPopOpen:'inicisPopOpen'},'*');
		
		console.log("쿠키 정보가 없음");
		break;
	case "0000":
		$("body").append('<div class="layerArea" id="productLayer"><div class="layerBg"></div></div>');
	    
	    $(".layerArea .layerBg").css('background','none');
	    
	    // 토스트 팝업 추가
		var toastPopup = '<div class="pop_loading_oneclick200210" style="background:#444;width:290px;height:120px;position:fixed;top:30%;left:50%;margin-left:-145px;margin-top:-60px;z-index:9999;">';
		toastPopup += '<img src="http://cdn.thehandsome.com/_ui/handsomemobile/images/common/Spinner_1s_105px.png" alt="loading" style="display:block;width:32px;height:32px;margin:30px auto 15px auto;">';
		toastPopup += '<p style="color:#fff;text-align:center;">';
	    toastPopup += '<span style="background:url(\'http://cdn.thehandsome.com/pc/products/one_click_pay_w.png\') left 2px no-repeat;color:#fff;font-size:15px;padding-left:93px;">가 진행중입니다.</span>';
	    toastPopup += '</p>';
	    toastPopup += '</div>';
	        
		$("body").append(toastPopup);
		
	    //상품상세와 결제페이지 구분이 안되기 때문에 
	    //window.parent.postMessage({loadingShow:'loadingShow'},'*');
        
		var $PAY_FORM = $("#PAY_FORM");
		addHidden($PAY_FORM, 'wtid'	, result.wtid);
		
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


function promotionProductCartAddCheck(productCode) {
    //var productCode = pd.substring(0, pd.indexOf("_"));
    var promotionid = "BTSPRODUCT20200401"; 
    var promotionFlag = false;
    
    $.ajax({
        type: "POST",
        url: '/ko/rest/promotion/product/check'+'/'+promotionid+'?CSRFToken=ae3faaff-c181-4913-ae57-c2a4ac651d0c',
        dataType: "json",
        async:false,
        data:JSON.stringify({promotion:promotionid,productcode:productCode}),
        contentType : "application/json; charset=UTF-8",
        success: function(data){
			if( data ){
				switch(data){
					case 0 :
					    //msg = "BTS상품 아닙니다.";
						break;
					case 1 : 
					    promotionFlag = true;
					    //msg = "BTS상품 맞습니다.";
						break;
					case 2 : 
					    //msg = "확인 실패했습니다.";
						break;
					case 3 : 
					    //msg = "확인 중 예외가 발생했습니다.";
						break;
					default :
					    break;
				}
			}
        },
        error: function(xhr,  Status, error) {
            alert('sendRequest error : ' + xhr.status + " ( " + error + " ) " );
        }
    });
    
    return promotionFlag;
}

function callWishListClick(prodNm, ele, prodCd){
    GA_Event('쇼핑백','위시리스트', prodNm);
    addWishList(ele, prodCd);
}

function qtyLimitProductAlert(){
	$('[name=entryProductInfo]').each(function (idx,row){
		var productCode = $(row).find('form [name=productCode]').val();
		var quantity = $(row).find('form [name=initialQuantity]').val(); 
		if(qtyLimitProductYnMap[productCode] == 'true' && parseInt(quantity) > 2){
			var brandName = $(row).find('.pt_list_wrap .tlt').text();
			var productName = $(row).find('.pt_list_wrap .sb_tlt').text().trim(); 
			layerAlert('['+brandName+'] ['+productName+']의<br/>구매 가능한 수량은 2개입니다.<br/>수량 변경 후 구매하실 수 있습니다.');
			return false;
		}
	})
}



//]]>
</script>

 <script>
 /* 참고 */
/*  $(function(){
	 //jquery를 이용 keyup할때마다 이벤트 발생
    $("#testAjax").on("click", function(){
    	
       var $testMid = $("#testMid").val();
       var $msg = $("#msg");
       console.log($testMid+"테스트중");
	
       // 비동기 방식으로 URL을 타고들어간다
       $.ajax({
          type : "POST",
          url: "/cartAjax",
          data : data,
          // dataType : "html",  // data타입이 없으면 알아서 추측해서 응답받음 우리는 json으로?
          async : true,     //비동기 유무
          //data로 결과 값을 받아온다
          success : function(data){
             console.log("data : "+data);
             $msg.html("<h4 style=\"color:red\"> ※ 아이디가 이미 존재합니다 ※</h4>");
          }
		})
    })
 }) */

</script>

<!-- 카트 리스트 출력 -->
<script type="text/javascript" src="/resources/js/handsome/cartlist.js"></script>
 

   <!-- bodyWrap -->
    <div id="bodyWrap">
        <!--title-->
        <h3 class="cnts_title cnts_tlt1807">
            <span>쇼핑백</span>
        </h3>
        <!--//title-->
        
        <!-- 장바구니개편 -->
        <span id="shoppingbagCartView">
        
        
<!-- 세션아이디를 받아보자 -->
<input type="hidden" class="testMid" id="testMid" name="testMid" value="ehfhfh1313">
 


<!--sub_container-->
        <div class="sub_container ">
            <!--order wrap-->
            <div class="shopping_cart_tab1807 tab_a">
                <!-- 장바구니개편 -->
                <ul class="tab3">
                    <li>
                        <a href="#;" name="cartDivision" data-division="" onclick="GA_Event('쇼핑백', '탭', '택배');"><span class="delt_ico"></span>택배 (0)</a>
                    </li>
                    <li>
                        <a href="#;" name="cartDivision" data-division="store" onclick="GA_Event('쇼핑백', '탭', '매장수령');" ><span class="spt_ico"></span>매장수령 (0)</a>
                    </li>
                    <li>
                        <a href="#;" name="cartDivision" data-division="quick" onclick="GA_Event('쇼핑백', '탭', '퀵배송 ');" ><span class="quk_ico"></span>퀵배송         (0)</a>
                    </li>
                    </ul>
                <!-- //장바구니개편 -->
            </div>
            
            <div class="orderwrap1807">             
                <div class="tbl_info_wrap">
                    <p class="cart_top_text">
                       </p>
                    
                    <div class="fourpm_pd_ck">
                        <div class="input_wrap">
                        </div>
                    </div>
                    </div>
                <!--shoppingback table-->
                <div class="tblwrap">
                    <table class="tbl_ltype">
                        <caption>쇼핑백</caption>
                        <colgroup>
                            <col style="width: 10px;" />
                            <col />
                            <col style="width: 120px" />
                            <col style="width: 105px" />
                            <col style="width: 140px" />
                            <col style="width: 110px" />
                        </colgroup>
                        <thead>
                            <tr>
                                <th scope="col">
                                	<!-- 2019.11.07 쇼핑백 진입 시 선택 상품 없도록 수정 -->
                                	<input type="checkbox" id="entryCheckAll" value="cartlist">
                                </th>
                                <th scope="col">상품정보</th>
                                <th scope="col">수량</th>
                                <th scope="col">판매가</th>
                                <th scope="col">적립율</th>
                                <th scope="col">선택</th>
                            </tr>
                        </thead>
                        <tbody id="msg">

                        	<!-- <div id="msg">
                      			여기에 데이터 추가
                        	</div>> -->
                            
                        </tbody>
                    </table>
                </div>
                <!--// shoppingback table-->
                <!--Total wrap-->
                <div class="total_wrap">
                    <!-- total -->
                    <div class="total_price_wrap">
                        <dl>
                                <dt>상품 합계</dt>
                                <dd>
                                    <span id="cartDataSubtotal">₩0</span>
								</dd>
                                <dt class="delch_wrap">
                                    <p class="tlt_ship">배송비</p>
                                    <!--delivery charge layer popup-->
                                    <div class="delch_box" style="display: none;">
                                        <span class="arr">위치아이콘</span>
                                        <ul class="bul_sty01_li">
                                            <li>쿠폰/바우처 할인금액 및 한섬마일리지/H.Point 사용을 제외한 실 결제금액 기준 <strong>3만원 미만 결제 시 2,500원 배송비가 부과</strong> 됩니다.(3만원 이상 구매 시 무료배송)</li>
                                            <li>도서산간 지역은 배송비가 추가 될 수 있습니다.</li>
                                            <li>한섬마일리지, H.Point, e-money로 배송비 결제가 불가합니다.</li>
                                        </ul>
                                    </div>
                                    <!--//delivery charge layer popup-->
                                </dt>
                                <dd>
                                    <span id="cartDataDeliveryCost">₩ 0</span>
				</dd>
                            </dl>
                        <dl class="total ">
                            <dt>
                                합계</dt>
                            <dd>
                                <span id="cartDataTotalPrice">₩0</span>
				</dd>
                        </dl>
                    </div>
                    <div class="total_count1807">
                        <p>총 <span id="selectProductCount">0</span>개 상품</p>
                        </div>
                    <!-- //total -->
                </div>
                <!--//Total wrap-->
                <!--button wrap-->
                <div class="btnwrap order" id="checkout_btn_wrap">
                    <a href="#;" onclick="selectRemove();"><input value="선택상품삭제" class="btn wt"type="button" /></a>
                    <a href="#;" onclick="checkoutPage();">
                        <input value="선택상품 주문하기" class="btn gray mr0" type="button" />
                        </a>
                     </div>
                     
                <!-- ordersheetCloneForm 히든태그 -->     
               <!-- CSRF 적용하는 부분인가?! -->
               <!-- checkPage() -> form.submit -> action -->
               	 
		<!-- item.mid
		item.psid
		item.pquantity
		item.productDetail.bname
		item.productDetail.pname
		item.productDetail.pccolorcode
		item.productDetail.pcimg1
		item.productDetail.pcprice
		item.productDetail.psize -->
		
                <form id="ordersheetCloneForm" name="orderSheetCloneForm" action="/checkout/ordersheetTest"  method="get">
                	<input type="hidden" id="ordersheetEntryNumber" name="ordersheetEntryNumber" value="" />
					<!-- <input type="hidden" id="ordersheetCartDivision" name="ordersheetCartDivision" value="" /> -->
				</div> --></form> 
                     
                <!--//button wrap-->
                 <div class="promotion_wrap mt60" id="freeGiftPromotion">
                        <dl class="promotion_list" style="border-top:1px solid #ebebeb; padding:60px 20px 18px 20px">
                            <dt class="promotion_tit">PROMOTION 혜택</dt>
                            <dd class="promotion_con1">
                                <strong>혜택 1 /
                                1,000,000원 이상
                                
                                구매하신 고객님께 사은품을 드립니다.
                                </strong>
                                <ul class="bul_sty01_li promotion_img">
                                    <li class="img"><img src="/medias/SYSTEM-FREEGIFT-22FW.jpg?context=bWFzdGVyfHJvb3R8NDM0NDA1NnxpbWFnZS9qcGVnfGhiMC9oZTQvOTMzNzYwODc5ODIzOC5qcGd8MmVjNzVjNjQyNmY2YmFiOWYxZjI3YWI2YzdjNDYwMDUzYjYzZTQ1YzgyOWVmNDRiMTA2N2JlMTFiOWE5YzFjYQ" /></li>
                                    <li>사은품 : 시스템 구스다운 케이프</li>
                                    <li>시스템 100만원 이상 구매 고객님께 "구스다운 케이프"를 드립니다.<BR/> (실결제금액 기준, 아울렛 제외)<BR/> *기간 : 10월  5일 ~ 10월 16일 ( 사은품 소진 시 종료, 선착순  120명, 1인 1개) * 사은품은 취소 및 반품을 고려하여 주문하신 배송지로 11월 10일 이후 순차 발송됩니다.</li>
                                </ul>
                            </dd>
                            <dd class="promotion_con2">
                                <strong>혜택 2 /
                                1,000,000원 이상
                                
                                구매하신 고객님께 사은품을 드립니다.
                                </strong>
                                <ul class="bul_sty01_li promotion_img">
                                    <li class="img"><img src="/medias/22.jpg?context=bWFzdGVyfHJvb3R8MjAwNDl8aW1hZ2UvanBlZ3xoZWEvaDc4LzkzMzc2MDgxNDI4NzguanBnfGY2M2M3YzgxYmNmZDEzMGFmMmY1MjUyZTdhMTI4MGMyZTllNTIxNGExOTJmNGEwMDBiYThjMWM0N2M0NDU4MWE" /></li>
                                    <li>사은품 : 에스제이 무스탕 퍼 베스트</li>
                                    <li>에스제이 정상 실결제 100만원 이상 구매 고객님께 "무스탕 퍼 베스트"를 드립니다.<BR/> (실결제금액 기준, 아울렛 제외)<BR/> *기간 : 10월  5일 ~ 10월 16일 ( 사은품 소진 시 종료, 선착순  100명, 1인 1개) * 사은품은 취소 및 반품을 고려하여 주문하신 배송지로 11월 10일 이후 순차적으로 발송됩니다.</li>
                                </ul>
                            </dd>
                            <dd class="promotion_con1">
                                <strong>혜택 3 /
                                1,000,000원 이상
                                
                                구매하신 고객님께 사은품을 드립니다.
                                </strong>
                                <ul class="bul_sty01_li promotion_img">
                                    <li class="img"><img src="/medias/-SET-.jpg?context=bWFzdGVyfHJvb3R8MzcyMzZ8aW1hZ2UvanBlZ3xoYTYvaGMxLzkzMzc1NzIwMzI1NDIuanBnfDA1YTI1YzBkZTM5ZDM1MWIzY2Y1ZmU3MTU2Njk2Y2RjOWM0NWMzMjhlNDgwOWU0ODY2ZjMzZmU2OTAxZTJjYzQ" /></li>
                                    <li>사은품 : 시스템옴므 유틸리티 슬링백 SET</li>
                                    <li>시스템옴므 정상 실결제 100만원 이상 구매 고객님께 "유틸리티 슬링백 SET"를 드립니다.<BR/> (실결제금액 기준, 아울렛 제외)<BR/> *기간 : 10월  5일 ~ 10월 16일 ( 사은품 소진 시 종료, 선착순  30명, 1인 1개) * 사은품은 취소 및 반품을 고려하여 주문하신 배송지로 11월 10일 이후 순차적으로 발송됩니다.</li>
                                </ul>
                            </dd>
                            <dd class="promotion_con2">
                                <strong>혜택 4 /
                                2,000,000원 이상
                                
                                구매하신 고객님께 사은품을 드립니다.
                                </strong>
                                <ul class="bul_sty01_li promotion_img">
                                    <li class="img"><img src="/medias/KakaoTalk-20220926-092455415-01.jpg?context=bWFzdGVyfHJvb3R8MTg5MDF8aW1hZ2UvanBlZ3xoOGYvaDQyLzkzMzcxODIxNTg4NzguanBnfDc5MTliMDY1MjE4ZmY2ZmMxZjI3MDdhZjRlYWE0ODNhNGE4YmQxYjBjZjNiMWNmM2I1YjIxM2FjOGYwNjVlMjI" /></li>
                                    <li>사은품 : 22 FW GIFT_타임옴므 스웨이드 다운 베스트</li>
                                    <li>타임옴므 정상 실결제 200만원 이상 구매 고객님께 "스웨이드 다운 베스트"를 드립니다.<BR/> (실결제금액 기준, 아울렛 제외)<BR/> *기간 : 10월  5일 ~ 10월 16일 ( 사은품 소진 시 종료, 선착순  12명, 1인 1개) * 사은품은 취소 및 반품을 고려하여 주문하신 배송지로 11월 10일 이후 순차적으로 발송됩니다.</li>
                                </ul>
                            </dd>
                            <dd class="promotion_con1">
                                <strong>혜택 5 /
                                
                                구매하신 고객님께 사은품을 드립니다.
                                </strong>
                                <ul class="bul_sty01_li promotion_img">
                                    <li class="img"><img src="/medias/220930-.JPG?context=bWFzdGVyfHJvb3R8MTk0NjZ8aW1hZ2UvanBlZ3xoY2QvaGJhLzkzMzYzMTE0ODAzNTAuanBnfDVjZjkxNzEzOWE5YmE2ZmVlNTBmNWZmZDkyZDE4NmEzNGM4NTUyZTg4OGM0OGYyNjkwY2UxYjExMWI3YmFkMmI" /></li>
                                    <li>사은품 : Liquides 로고 에코백</li>
                                    <li>리퀴드 퍼퓸바 브랜드 상품을 구매하신 모든 고객님께 Liquides 시그니처 로고 에코백을 사은품으로 드립니다.<br>주문 1건당 1개 제공되며, 사은품은 주문하신 배송지로 11월 17일 이후 별도 발송됩니다.<br>- 기간 : 9월 30일 ~ 10월 31일(선착순 증정)</li>
                                </ul>
                            </dd>
                            <dd class="promotion_con2">
                                <strong>혜택 6 /
                                
                                구매하신 고객님께 사은품을 드립니다.
                                </strong>
                                <ul class="bul_sty01_li promotion_img">
                                    <li class="img"><img src="/medias/220930-.JPG?context=bWFzdGVyfHJvb3R8MzkwMzh8aW1hZ2UvanBlZ3xoN2UvaDQ5LzkzMzYzMDE2ODI3MTguanBnfGViZWY1Y2RmZDQ3MzEwMjNkY2I1YTU3MmE4N2Q5NzY0NmMyM2QzNjE3NTdiZTJhYWI5OTUwZDUxMjQ2Yzk1Y2I" /></li>
                                    <li>사은품 : Liquides 10월 샘플링 2종</li>
                                    <li>기간 내 리퀴드 퍼퓸바 향수 구매 고객님께 향수 2종 샘플을  사은품으로 드립니다.<BR>주문 1건당 1개 제공되며, 사은품은 주문하신 배송지로 구매 상품과 함께 발송됩니다. <BR>- 기간 : 9월 30일 ~ 10월 31일(선착순 증정)</li>
                                </ul>
                            </dd>
                            <dd class="promotion_con1">
                                <strong>혜택 7 /
                                400,000원 이상
                                
                                구매하신 고객님께 사은품을 드립니다.
                                </strong>
                                <ul class="bul_sty01_li promotion_img">
                                    <li class="img"><img src="/medias/20220923-094411.jpg?context=bWFzdGVyfHJvb3R8NTc3NTJ8aW1hZ2UvanBlZ3xoZTQvaGU3LzkzMzMzOTQ2Njk1OTguanBnfDliYTAzNzc2MDI1ZDg3MTQ5NDQ4ZmIwYzRlZTAyMDMwZjE4YzdlNjlmZWRmZGUyNGJiYjI1NjA5ZDk0MDRkYjU" /></li>
                                    <li>사은품 : 더한섬닷컴X쌤쌤쌤 콜라보 글라스컵&플레이트 세트</li>
                                    <li>9/28(수)~10/12(수) 기간 내 톰 / 폼 / 무이 / 아워레가시 4개 브랜드의 정상 상품 1개 이상 포함하여 40만원 이상 구매 고객님께 [더한섬닷컴X쌤쌤쌤  글라스컵 2P & 플레이트 2종 세트]를 드립니다.</BR>(아울렛 구매 금액 제외)</BR>- 기간 : 9/28(수)~10/12(수) (소진 시 종료)</BR>사은품은 이벤트 종료 후, 취소 및 반품을 고려하여 11월 9일 이후 일괄 발송 예정입니다. (1~3일 지연 가능)</li>
                                </ul>
                            </dd>
                            <dd class="promotion_con2">
                                <strong>혜택 8 /
                                30,000원 이상
                                
                                구매하신 고객님께 사은품을 드립니다.
                                </strong>
                                <ul class="bul_sty01_li promotion_img">
                                    <li class="img"><img src="/medias/GIFT.jpg?context=bWFzdGVyfHJvb3R8NTI5OTI1fGltYWdlL2pwZWd8aGJmL2hmNS85Mjg0MzMwMTYwMTU4LmpwZ3xjYjNhYmMwNDU1ZTExZTM3ZTYwN2M4YzNiNWY5YjRkOWNhZTYyOTZhZmQxNGYwMjE0OThkZWVmMzVmMGQ3NGE3" /></li>
                                    <li>사은품 : 바디 브러쉬 & 코튼 매쉬 파우치</li>
                                    <li>더캐시미어띵즈 내 WEEKNDERS 상품 3만원 이상 구매하신 고객님께 "바디 브러쉬 & 코튼 매쉬 파우치"을 드립니다.<BR/>기간 : 5월 31일~소진 시 까지<BR/>*WEEKNDERS 상품 필수 구매<BR/>사은품은 주문하신 상품과 함께 동봉하여 발송될 예정입니다.<BR/>본 사은품은 주문번호당 1회 증정되며, 반품 및 교환시 사은품은 반드시 동봉하여 회수됩니다.</li>
                                </ul>
                            </dd>
                            </dl>
                    </div>
                    </div>
            <!--//order wrap-->
        </div>
        <!--//sub_container-->
</span>
  



<%@ include file="../common/footer.jsp" %>