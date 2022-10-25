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

        
        var mid = $("#mid").val();
        var psid = $("#psid").val();
        var qty = $("#txtqty").val();
        console.log()
 
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

        
        
    }
}