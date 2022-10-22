// 주문페이지에 선택된 카트목록 띄우기 checkoutCartView
$(document).ready(function(){
var cartList;
var mid = $('#testMid').val();
var entryNumber = $('#testEntryNum').val();
console.log(entryNumber);
$.ajax({
	type: "GET",  
	url: "/cartAjax/checkoutCartView/"+mid+"/"+entryNumber,
	data: {}, 
	dataType : "json",
	contentType: "application/json; charset=utf-8",
	error : function( request, status, error ){
		alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		return false;
	}, 
	success: function(data) { 
		console.log(JSON.stringify(data));	// 콘솔에 잘뜨는지 확인
		
		
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
		cartList = '';
		cartList+= ' <table class="tbl_ltype "> ';
		cartList+= ' <caption> ';
		cartList+= '  배송&amp;결제정보 입력</caption> ';
		cartList+= ' <colgroup> ';
		cartList+= ' <col /> ';
		cartList+= ' <col style="width: 66px" />';
		cartList+= '  <col style="width: 158px" /> ';
		cartList+= '  </colgroup> ';
		cartList+= ' <thead> ';
		cartList+= '  <tr> ';
		cartList+= '  <th scope="col">상품정보</th>';
		cartList+= ' <th scope="col">수량</th> ';
		cartList+= '  <th scope="col">판매가/쿠폰 적용가</th> ';
		cartList+= ' </tr> ';
		cartList+= '  </thead>  ';
		cartList+= ' <tbody> ';
		
		$.each(data, function(index, item) { // 데이터 =item
			console.log(index+"\n");
			console.log(item);
			
			cartList+= ' <tr class="al_middle"> ';
			cartList+= ' 	<td class="frt"> ';
			cartList+= ' 	<!-- pt_list_all --> ';
			cartList+= ' 		<div class="pt_list_all"> ';
			cartList+= '  			<a href="/ko/HANDSOME/GOLF/MEN-CLOTHING/Top/%ED%85%8D%EC%8A%A4%EC%B2%98-%EB%B8%94%EB%A1%9D-%ED%95%98%ED%94%84-%EC%A7%91%EC%97%85-%ED%83%91/p/LB2CAWTO363M_KE_L"> ';
			cartList+= ' 			<img src="http://newmedia.thehandsome.com/LB/2C/FW/LB2CAWTO363M_KE_S01.jpg" alt="" /> ';
			cartList+= '  			</a>';
			cartList+= '  			<div class="tlt_wrap"> ';
			cartList+= '  			<a href="/ko/HANDSOME/GOLF/MEN-CLOTHING/Top/%ED%85%8D%EC%8A%A4%EC%B2%98-%EB%B8%94%EB%A1%9D-%ED%95%98%ED%94%84-%EC%A7%91%EC%97%85-%ED%83%91/p/LB2CAWTO363M_KE_L" class="basket_tlt">';
			cartList+= '  				<span class="tlt">'+item.productDetail.bname+'</span> ';
			cartList+= '  				<span class="sb_tlt">'+item.productDetail.pname+'</span>';
			cartList+= ' 			</a> ';
			cartList+= ' 			<p class="color_op"> ';
			cartList+= '				color : '+ item.productDetail.pccolorcode +'<span class="and_line">/</span> ';
			cartList+= '                size : ' + item.productDetail.psize + '</p>  ';
			cartList+= ' 		</div> ';
			cartList+= ' 	</div> <!-- //pt_list_all --> ';
			cartList+= ' </td> ';
			cartList+= ' <td>1</td> ';
			cartList+= '  <td>';
			cartList+= '  <!-- price_wrap -->';
			cartList+= '  <div class="price_wrap ">';
			cartList+= '  <span>';
			cartList+= '  	₩638,000</span>';
			cartList+= ' </div> <!-- //price_wrap --> ';
			cartList+= ' </td> ';
			cartList+= ' </tr> ';
			});

		cartList+=' </tbody> ';
		cartList+=' </table> ';
		$("#checkoutCartView").html(cartList);
		}
	});
});
