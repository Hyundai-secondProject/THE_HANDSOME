function addToCart2(buyNow)
{
    //2019.09.09 주문 불가능한 상품 선택시
    if("" == $('form[name=addToCartForm] input[name=productCodeType]').val()){
        var la = new layerAlert('사이즈를 선택해 주세요.');
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
        // 오류로인한 임시 주석
        /*if(productType != 'ApparelSizeVariantProduct'){
            var la = new layerAlert('사이즈를 선택해 주세요.');
            addToCartProcess = true;
            return;
        }*/
        
      	/*//#2610 [주문] 가상계좌 결제수단 제외 및 중복 구매 제한 처리 요청 건 20220215 hyunbae
      	var baseCategoryCode = productCategory.substring(0,2);
      	var twoDepthCategoryCode = productCategory.substring(0,4);
      	var cartQty = cartQuantity[productCode];
      	if('WE' === baseCategoryCode || 'ME' === baseCategoryCode || 'GF01' === twoDepthCategoryCode || 'GF02' === twoDepthCategoryCode || 'GF03' === twoDepthCategoryCode){
        	if(qty > 2 && productCategory){
        		var la = new layerAlert('동일 상품(사이즈/컬러)은<br/>최대 2개까지 선택 가능합니다.');
        		addToCartProcess = true;
                return;
        	}
        	
        	if(cartQty + parseInt(qty) > 2 && !buyNow){
        		if(cartQty === 1 || cartQty > 2){
        			var la = new layerAlert('이미 쇼핑백에 '+cartQty+'개가 담겨있습니다.<br/>수량을 다시 선택해주시기 바랍니다.<br/><p style="color:gray; font-size:14px; margin-top:8px;">(동일 상품은 최대 2개까지 구매 가능)</p>');	
        		}else if(cartQty === 2){
        			var la = new layerAlert('구매 가능한 수량 '+cartQty+'개가<br/>이미 쇼핑백에 담겨있습니다.<br/><p style="color:gray; font-size:14px; margin-top:8px;">(동일 상품은 최대 2개까지 구매 가능)</p>');
        		}
        		addToCartProcess = true;
                return;
        	}
        }*/
      	
        

        /*var buyNowYn = $.trim(buyNow) == "true" ? true:false;
        $('form[name=addToCartForm] input[name=buyNowYn]').val(buyNowYn);*/
        
        
//      var qty = $("#qrt").val();
        
        var mid = $("#mid").val();
        var psid = $("#psid").val();
        var qty = $("#txtqty").val();
        console.log()
        
/*        var mid = "ehfhfh1313";
        var psid = "psidN123Bstock28";
        var qty = 1*/
        
        if(true){ //프로모션 상품 체크를 위한 선처리 로직 
            $.ajax({
                url: "/cartAjax/addtocart/"+mid+"/"+psid+"/"+qty,
                type: "GET",            
                data: {},
                async : false,
                success: function(data){
                    console.log("성공");
                    alert("장바구니에 추가되었습니다");
                    
                    /*if(data) { //기존 cart에 존재하면
                        if(data) {
                            var la = new layerAlert('동일 옵션(컬러/사이즈)으로 최대 1개 구매 가능합니다.'); //"이미 프로모션 상품이 담겨있습니다."
                            addToCartProcess = true;
                            return;                        
                        }
                    }else {
                        addtoCartProcessFunction(); //기존로직
                    }*/
                },
                error: function(xhr, Status, error) {
                    //
                }
           });

        }else {
            addtoCartProcessFunction(); //기존로직
        }
        
    }
}