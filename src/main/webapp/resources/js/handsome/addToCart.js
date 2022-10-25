function addToCart2(buyNow)
{	
	cartCount();
	var mid = $("#mid").val();
    var psid = $("#psid").val();
    var qty = $("#txtqty").val();
    
    if(psid==""){
    	alert("사이즈를 선택해 주세요");
    	return;
    }
    if(mid==""){
    	alert("로그인이 필요합니다");
    	return;
    }
    
    

	
    //addToCartProcess
    if(true){
        addToCartProcess = false;
        var productCode = $('form[name=addToCartForm] input[name=productCodePost]').val();
        var productType = $('form[name=addToCartForm] input[name=productCodeType]').val();
        var qty = $("#txtqty").val();
        var productCategory = 'WE051';
    
        if(parseInt($("#productPrice").val()) == 0) {
            var la = new layerAlert('선택 상품은 일시적인 시스템 장애로 구매하실 수 없습니다.<br/>고객센터(1800-5700)로 문의주세요.');
            addToCartProcess = true;
            return;
        }

        
        $.ajax({
            url: "/cartAjax/addtocart/"+mid+"/"+psid+"/"+qty,
            type: "GET",            
            data: {},
            async : false,
            datatype : "text",
            success: function(data){
            	if(data=="valid"){
            		console.log("성공");
                    alert("장바구니에 추가되었습니다");
            	}
            	else{
            		console.log("실패");
                    alert("이미 장바구니에 있습니다.");
            	}
                
            },
            error: function(xhr, Status, error) {
                //
            }
       });

        
        
    }
}