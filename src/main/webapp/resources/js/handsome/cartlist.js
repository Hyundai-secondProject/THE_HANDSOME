// cart 목록 반환 
$(document).ready(function(){
var cartList;
var mid = $('#testMid').val() // 이후 세션아이디로 변경

$.ajax({
	type: "GET",  
	url: "/cartAjax/"+mid, 
	data: {"mid" : mid}, 
	dataType : "json",  // data타입이 없으면 알아서 추측해서 응답받음 우리는 json으로?
	contentType: "application/json; charset=utf-8",
	success: function(data) { 
		console.log($("#testMid").val());
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
				cartList+= ' <tr name="entryProductInfo" data-pk="'+ index +'" data-deliverykind="" data-outofstock="false" data-category="GF031"> ';
				cartList+= '<td class="frt">';
				cartList+= '<input type="checkbox" name="cartlist" data-pk="'+index+'" data-division="" data-deliverykind="" value="'+ index +'">';
				cartList+= '</td>';			 
			    cartList+= ' <td class="pt_list_wrap">                                                              ';
				cartList+= ' 	<div class="pt_list_all">                                                              ';
				cartList+= '    	<a href="/ko/HANDSOME/GOLF/MEN-CLOTHING/Top/%ED%85%8D%EC%8A%A4%EC%B2%98-%EB%B8%94%EB%A1%9D-%ED%95%98%ED%94%84-%EC%A7%91%EC%97%85-%ED%83%91/p/LB2CAWTO363M_KE_L" onclick="javascript:setEcommerceData(\'0\', \'Click ADD\');GA_Event(\'쇼핑백\',\'상품\',\'텍스처 블록 하프 집업 탑\');">                ';
				cartList+= '        	<img src="'+ item.productDetail.pcimg1 +'" alt="" />                                                       ';
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
				
				cartList+= '        <input type="hidden" name="psid" value="'+item.psid+'" />                                                       ';
				cartList+= '        <input type="hidden" name="pquantity" value="'+item.pquantity+'" />   '; 
				cartList+= '        <!-- qty_sel -->                                                       ';
				cartList+= '        <span class="qty_sel num">                                                       ';
				cartList+= '        	<a href="#none" onMouseDown="javascript:AEC_F_D(\'LB2CAWTO363M_KE_L\',\'o\',1);" class="left" onclick="GA_Event(\'쇼핑백\', \'수량\', \'-\');">이전 버튼</a>                                                       ';
				cartList+= '            	<input id="quantity'+index+'" name="quantity" type="text" class="mr0" value="'+item.pquantity+'" size="1" maxlength="3"/>                                                        ';
				cartList+= '            <a href="#none" onMouseDown="javascript:AEC_F_D(\'LB2CAWTO363M_KE_L\',\'i\',1);" class="right" onclick="GA_Event(\'쇼핑백\', \'수량\', \'+\');">다음 버튼</a>                                                   ';
				cartList+= '            </span>                                                   ';
				cartList+= '        <!-- //qty_sel -->                                                       ';
				cartList+= '        <a href="#none" id="QuantityProduct_'+index+'" class="btn wt_ss qty_w mr0">변경</a>                                                       ';
				cartList+= '        <div>                                                       ';
				cartList+= '        <input type="hidden" name="CSRFToken" value="a2068709-377f-4a2e-9+         b44-9296791e4112" />                                                       ';
				cartList+= '        </div>                                                   ';
				cartList+= '    </form>                                                     ';
				cartList+= '    </td>                                                       ';
				cartList+= '        <td class="al_middle">                                                       ';
				cartList+= '        <!-- Price -->                                                       ';
				cartList+= '        	<div class="price_wrap">                                                       ';
				cartList+= '        		<span>₩'+ addComma(item.pquantity*item.productDetail.pcprice)+' </span> <input type="hidden" name="checkZeroPrice" value="'+ item.pquantity*item.productDetail.pcprice+'" />    ';
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
});
