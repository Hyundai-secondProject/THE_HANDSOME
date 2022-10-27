function addToCart2(buyNow)
{	
	// 헤더에 있는 함수
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

function directbuy(){

	cartCount();
	var form = $('#addToCartForm');	
	var mid = $("#mid").val();
    var psid = $("#psid").val();
    var qty = $("#Dtxtqty").val();



    if(psid==""){
    	alert("사이즈를 선택해 주세요");
    	return;
    }
    if(mid==""){
    	alert("로그인이 필요합니다");
    	return;
    }
// 


    form.submit();
}

// 위시리스트에서 카트에추가
function addToCartWish(index)
{	
	cartCount();
	var form = $('#cartForm' + index);	
	var mid = $("#mid").val();
	var psid = $('#cart_pcid_' + index).val()+"_"+$('#cart_psize_' + index).val();
	var qty = $("#qty_" + index).val();

	
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
