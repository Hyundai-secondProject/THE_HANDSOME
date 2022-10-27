// 결제하기
function orderpay(){	
	

    var csrfHeaderName = "${_csrf.headerName}";
    var csrfTokenValue = "${_csrf.token}";
    $(document).ajaxSend(function(e, xhr, options) {
       xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
    });
	
    $.ajax({
        url: "/order/orderPay",
        type: "POST",            
        contentType: "application/json; charset=UTF-8",
        data:  JSON.stringify({
//        	oid : $("#oid").val(),
        	ozipcode : $("#adress").val(),
        	oaddress1 : $("#line1").val() + $("#line2").val(),
        	oreceiver : $("#rcpt_name").val(),
        	ophone : $("#hp").val() + $("#hp_num2").val() + $("#hp_num3").val(),
        	otel : $("ph").val() + $("#ph_num2").val() + $("ph_num3").val(),
        	omemo : $("#orderr").val(),
        	oemail : $("#mail").val() + " " + $("emailDelySel").val(),
        	ousedmileage : $("#Hmileage").val(),
        	obeforeprice : $("#subTotal").val(),
        	oafterprice : $("#total").val(),
//        	ostatus : $("#ostatus").val(),
        	mid : $("#mid").val(),
//        	pmcode : $("#pmcode").val(),
//        	odate : $("#odate").val(),
        	cpid : $("#selectVoucher").val(),
        	oaddress2 : $("#line2").val()
        }),
        async : false,
        success: function(){
            alert("주문완료");
        },
        error: function(xhr, Status, error) {
            //
        }
   });
}

function orderpay2(){
	
	 $.ajax({
	        url: "/order/orderPay",
	        type: "GET",            
	        contentType: "application/json; charset=UTF-8",
	        data:  {
	        	ozipcode : $("#adress").val(),
	        	oaddress1 : $("#line1").val() + $("#line2").val(),
	        	oreceiver : $("#rcpt_name").val(),
	        	ophone : $("#hp").val() + $("#hp_num2").val() + $("#hp_num3").val(),
	        	otel : $("ph").val() + $("#ph_num2").val() + $("ph_num3").val(),
	        	omemo : $("#orderr").val(),
	        	oemail : $("#mail").val() + " " + $("emailDelySel").val(),
	        	ousedmileage : $("#Hmileage").innerText,
	        	obeforeprice : $("#subTotal").innerText,
	        	oafterprice : $("#total").val(),
//	        	ostatus : $("#ostatus").val(),
	        	mid : $("#mid").val(),
//	        	pmcode : $("#pmcode").val(),
//	        	odate : $("#odate").val(),
	        	cpid : $("#selectVoucher").val(),
	        	oaddress2 : $("#line2").val() 

	        },
	        async : false,
	        success: function(){
	            alert("주문완료");
	        },
	        error: function(xhr, Status, error) {
	            //
	        }
	   });
}