// productdetail에서 바로 구매 누르면 	

function directbuy(){
	var cartList;
	var mid = $('#testMid').val();
	var psid = $('#Dpsid').val();
	var qty = $('#Dqty').val();
	console.log("psid" + psid);
	console.log("qty" + qty);


	$.ajax({
		type: "GET",  
		url: "/cartAjax/directbuy/"+psid,
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

			var sum=0;
			var deliveryCost = 0;
			
			$.each(data, function(index, item) { // 데이터 =item
				console.log(index+"\n");
				console.log(item);
				sum+= qty*item.productDetail.pcprice;

				cartList+= ' <tr class="al_middle"> ';
				cartList+= ' 	<td class="frt"> ';
				cartList+= ' 	<!-- pt_list_all --> ';
				cartList+= ' 		<div class="pt_list_all"> ';
				cartList+= '  			<a href="/ko/HANDSOME/GOLF/MEN-CLOTHING/Top/%ED%85%8D%EC%8A%A4%EC%B2%98-%EB%B8%94%EB%A1%9D-%ED%95%98%ED%94%84-%EC%A7%91%EC%97%85-%ED%83%91/p/LB2CAWTO363M_KE_L"> ';
				cartList+= ' 			<img src="'+item.productDetail.pcimg1+'" alt="" /> ';
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
				cartList+= ' <td>'+qty+'</td> ';
				cartList+= '  <td>';
				cartList+= '  <!-- price_wrap -->';
				cartList+= '  <div class="price_wrap ">';
				cartList+= '  <span>';
				cartList+= '  	₩ '+ addComma(qty*item.productDetail.pcprice)+'</span>';
				cartList+= ' </div> <!-- //price_wrap --> ';
				cartList+= ' </td> ';
				cartList+= ' </tr> ';
				});

			cartList+=' </tbody> ';
			cartList+=' </table> ';
			
			console.log("합은 " + sum);
			$("#checkoutCartView").html(cartList);
			$("#subTotal").html('₩ ' + addComma(sum));
			$("#subTotalHidden").html(sum);
			
			if (sum < 30000) {
				deliveryCost = 2500;
			}
			
			$("#deliveryCost").html('₩ ' + addComma(deliveryCost));
			$("#cartDeliveryCost").html(deliveryCost);
			
			$("#totalPrice").html('₩ ' + addComma(sum + deliveryCost));
			$("#total").val(sum + deliveryCost);
			$("#totalPriceHidden").val(sum + deliveryCost);
			
			$('#txtAccumulationPoint').html('한섬마일리지 ' + addComma(sum*0.05) + ' M');
			$("#checkoutCartView").html(cartList);
			}
		});
}