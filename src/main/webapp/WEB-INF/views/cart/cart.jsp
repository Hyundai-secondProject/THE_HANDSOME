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

<script>

var cartList;
$.ajax({
	type: "POST",  
	url: "/cartAjax", 
	data: $("#testMid").val(), 
	dataType : "json",  // data타입이 없으면 알아서 추측해서 응답받음 우리는 json으로?
	//contentType: "application/json; charset=utf-8",
	success: function(data) { 
		console.log($("#testMid").val());
		//console.log(mid);
		console.log(JSON.stringify(data));	// 콘솔에 잘뜨는지 확인
		
		cartList = '';
		/* 
		item.mid
		item.psid
		item.pquantity
		item.productDetail.bname
		item.productDetail.pname
		item.productDetail.pccolorcode
		item.productDetail.pcimg1
		item.productDetail.pcprice
		item.productDetail.psize
		*/
		$.each(data, function(index, item) { // 데이터 =item
			console.log(index+"\n");
			console.log(item);
				cartList = '';
				cartList+= ' <tr name="entryProductInfo" data-pk="10944579207212" data-deliverykind="" data-outofstock="false" data-category="GF031"> ';
				cartList+= '<td class="frt">';
				cartList+= '<input type="checkbox" name="cartlist" data-pk="10944579207212" data-division="" data-deliverykind="" value="'+ index +'">';
				cartList+= '</td>';			 
			    cartList+= ' <td class="pt_list_wrap">                                                              ';
				cartList+= ' 	<div class="pt_list_all">                                                              ';
				cartList+= '    	<a href="/ko/HANDSOME/GOLF/MEN-CLOTHING/Top/%ED%85%8D%EC%8A%A4%EC%B2%98-%EB%B8%94%EB%A1%9D-%ED%95%98%ED%94%84-%EC%A7%91%EC%97%85-%ED%83%91/p/LB2CAWTO363M_KE_L" onclick="javascript:setEcommerceData(\'0\', \'Click ADD\');GA_Event(\'쇼핑백\',\'상품\',\'텍스처 블록 하프 집업 탑\');">                ';
				cartList+= '        	<img src="http://newmedia.thehandsome.com/LB/2C/FW/LB2CAWTO363M_KE_S01.jpg" alt="" />                                                       ';
				cartList+= '        </a>                                                       ';
				cartList+= '        <div class="tlt_wrap">                                                       ';
				cartList+= '        	<a href="/ko/HANDSOME/GOLF/MEN-CLOTHING/Top/%ED%85%8D%EC%8A%A4%EC%B2%98-%EB%B8%94%EB%A1%9D-%ED%95%98%ED%94%84-%EC%A7%91%EC%97%85-%ED%83%91/p/LB2CAWTO363M_KE_L" class="basket_tlt" onclick="javascript:setEcommerceData(\'0\', \'Click ADD\');GA_Event(\'쇼핑백\',\'상품\',\'텍스처 블록 하프 집업 탑\');">              ';
				cartList+= '            	<span class="tlt">' + item.productDetail.bname + '</span>                                                   ';
				cartList+= '                <span class="sb_tlt">'+ item.productDetail.pname +'</span>                                               ';
				cartList+= '            </a>                                                   ';
				cartList+= '            <p class="color_op">                                                   ';
				cartList+= '              color : '+ item.productDetail.pccolorcode +'<span class="and_line">/</span>                       ';
				cartList+= '              size : '+ item.productDetail.psize +'</p>                                                 ';
				cartList+= '            <div class="option_wrap">                                                   ';
				cartList+= '            	<a href="#none" class="btn_option" id="optOpenLayer^3^LB2CAWTO363M_KE" onclick="GA_Event(\'쇼핑백\',\'옵션변경\',\' ' + item.productDetail.pname+ '\')">옵션변경</a>                         ';
				cartList+= '            </div>                                                   ';
				cartList+= '        </div>                                                       ';
				cartList+= '    </div>                                                           ';
				cartList+= '    <!-- //pt_list_all-->                                                           ';
				cartList+= '    </td>                                                          ';
				cartList+= '    <td class="al_middle">                                                          ';
				cartList+= '    <form id="updateCartForm'+index+'" data-cart="{&quot;cartCode&quot; : &quot;424627137&quot;,&quot;productPostPrice&quot;:&quot;638000.0&quot;,&quot;productName&quot;:&quot;텍스처 블록 하프 집업 탑&quot;}" action="/ko/shoppingbag/update" method="post"><input type="hidden" name="entryNumber" value="'+ index +'" />                                ';
				cartList+= '    	<input type="hidden" name="productCode" value="LB2CAWTO363M_KE_L" />                                                           ';
				cartList+= '        <input type="hidden" name="initialQuantity" value="1" />                                                       ';
				cartList+= '        <input type="hidden" name="chgProductCode" value="" />                                                       ';
				cartList+= '        <input type="hidden" name="curSize" value="L" />                                                       ';
				cartList+= '        <input type="hidden" name="storeId" value="" />                                                       ';
				cartList+= '        <input type="hidden" name="storePickupDate" value="" />                                                       ';
				cartList+= '        <input type="hidden" name="deliveryKind" value="" />                                                       ';
				cartList+= '        <input type="hidden" name="cartDivision" value="" />                                                       ';
				cartList+= '        <!-- qty_sel -->                                                       ';
				cartList+= '        <span class="qty_sel num">                                                       ';
				cartList+= '        	<a href="#none" onMouseDown="javascript:AEC_F_D(\'LB2CAWTO363M_KE_L\',\'o\',1);" class="left" onclick="GA_Event(\'쇼핑백\', \'수량\', \'-\');">이전 버튼</a>                                                       ';
				cartList+= '            	<input id="quantity'+index+'" name="quantity" type="text" class="mr0" value="1" size="1" maxlength="3"/><a href="#none" onMouseDown="javascript:AEC_F_D(\'LB2CAWTO363M_KE_L\',\'i\',1);" class="right" onclick="GA_Event(\'쇼핑백\', \'수량\', \'+\');">다음 버튼</a>                                                   ';
				cartList+= '            </span>                                                   ';
				cartList+= '        <!-- //qty_sel -->                                                       ';
				cartList+= '        <a href="#none" id="QuantityProduct_'+index+'" class="btn wt_ss qty_w mr0">변경</a>                                                       ';
				cartList+= '        <div>                                                       ';
				cartList+= '        <input type="hidden" name="CSRFToken" value="a2068709-377f-4a2e-9b44-9296791e4112" />                                                       ';
				cartList+= '        </div>                                                   ';
				cartList+= '    </form>                                                     ';
				cartList+= '    </td>                                                       ';
				cartList+= '        <td class="al_middle">                                                       ';
				cartList+= '        <!-- Price -->                                                       ';
				cartList+= '        	<div class="price_wrap">                                                       ';
				// 가격에 조건처리 -> 3자리마다 반점찍기
				cartList+= '        		<span>₩'+ item.productDetail.pcprice+' </span> <input type="hidden" name="checkZeroPrice" value="'+ item.productDetail.pcprice+'" />    ';
				cartList+= '        	</div> <!-- //Price -->                                                       ';
				cartList+= '        </td>                                                       ';
				cartList+= '        <td class="al_middle">                                                       ';
				cartList+= '        	<span class="earn">5% (한섬마일리지)</span>                                                       ';
				cartList+= '            <br>                                                     ';
				cartList+= '            <span class="earn">0.1% (H.Point)</span>                                                   ';
				cartList+= '        </td>                                                       ';
				cartList+= '        <td class="al_middle">                                                       ';
				cartList+= '        	<!-- Button size -->                                                       ';
				cartList+= '            <div class="btn_wrap">                                                   ';
				cartList+= '            	<a href="#none" class="btn wt_ss" onclick="callWishListClick(\'텍스처 블록 하프 집업 탑\',$(this),\'LB2CAWTO363M_KE_L\');" data-value="0">위시리스트</a>                                                   ';
				cartList+= '                <a href="#none" id="RemoveProduct_'+index+'" class="btn wt_ss" onclick="GA_Event(\'쇼핑백\',\'삭제\',\'텍스처 블록 하프 집업 탑\');">삭제</a>                                               ';
				cartList+= '            </div> <!-- //Button size -->                                                   ';
				cartList+= '       </td></tr>                                                        ';
				cartList+= '       <!-- Info wrap -->                                                        ';
			 	cartList+= '       <tr>                                                        ';
				cartList+= '       		<td colspan="6" class="basket_wrap">                                                        ';
				cartList+= '            <!-- Info -->                                                   ';
				cartList+= '            	<div class="basket_info">                                                   ';
				cartList+= '                	<span class="btn_arr">위치아이콘</span>                                               ';
				cartList+= '                    <div class="info">                                           ';
				cartList+= '                     	<!-- Products -->                                          ';
				cartList+= '                        <div class="pt_list" id="pt_list_'+index+'">                         ';
				cartList+= '                          </div>                                      ';
				cartList+= '                        <!-- //Products -->                                       ';
				cartList+= '                        <!-- btns -->                                       ';
				cartList+= '                         <div class="btns">                                       ';
				cartList+= '                         	<a href="#none" class="btn wt_ss mr0" id="UpdateCart_'+index+'">변경</a>                                      ';
				cartList+= '                            <a href="#none" class="btn wt_ss mt10 mr0" id="optCancelLayer_'+index+'">취소</a>                                   ';
				cartList+= '                            <a href="#none" class="btn_close" id="optCloseLayer_'+index+'">닫기</a>                                   ';
				cartList+= '                        </div>                                       ';
				cartList+= '                        <!-- //btns -->                                       ';
				cartList+= '                    </div>                                           ';
				cartList+= '                </div> <!-- //Info -->                                               ';
				cartList+= '            </td>                                                   ';
				cartList+= '        </tr>                                                      ';
				cartList+= '        <tr>                                                       ';
				cartList+= '        	<td colspan="6" class="basket_wrap">                   ';
				cartList+= '        	</td>                   ';
				cartList+= '        </tr>                                                       ';
				cartList+= '         <!-- AceCounter eCommerce (Product_Detail) v7.5 Start -->                                                       ';
				cartList+= '        <script language=\'javascript\' type="text/javascript">                                                       '; 
				cartList+= '        _A_amt[_ace_countvar]="'+item.productDetail.pcprice+'";                                                       ';
				cartList+= '        _A_nl[_ace_countvar]="1";                                                       ';
				cartList+= '        _A_pl[_ace_countvar]="'+item.psid+'";                                                       ';
				cartList+= '        _A_pn[_ace_countvar]="'+item.pname+'";                                                       ';
				cartList+= '        _A_ct[_ace_countvar]="'+item.bname+'";                                                       ';
				cartList+= '       _ace_countvar++;                                                         ';
				cartList+= '       </'+'script'+'>                                                        ';
				cartList+= '                                                               ';
				
				
			$("#msg").append(cartList);
		
			
		});
	}
});
</script>


   <!-- bodyWrap -->
    <div id="bodyWrap">
        <!--title-->
        <h3 class="cnts_title cnts_tlt1807">
            <span>쇼핑백</span>
        </h3>
        <!--//title-->
        
        <!-- 장바구니개편 -->
        <span id="shoppingbagCartView">
        
        
<!-- <button id=testAjax">클릭테스트</button> -->
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
                        <a href="#;" name="cartDivision" data-division="quick" onclick="GA_Event('쇼핑백', '탭', '퀵배송 ');" ><span class="quk_ico"></span>퀵배송                                            (0)</a>
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