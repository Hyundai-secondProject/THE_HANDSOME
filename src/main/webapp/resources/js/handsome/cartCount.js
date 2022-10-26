function cartCount(){	
	var mid = $('#mid').val() 
	if(mid=="")return;
	var tmp1=mid.substr(0,mid.indexOf('.'))
	var tmp2=mid.substr(mid.indexOf('.')+1, mid.length);
	mid= tmp1+","+tmp2;
        $.ajax({
            url: "/cartAjax/cartCount/"+mid,
            type: "GET",            
            data: {},
            async : false,
            datatype : "text",
            success: function(data){
            	$("#cartCount").html(data);
            },
       });
}