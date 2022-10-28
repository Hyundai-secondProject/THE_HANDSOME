console.log("Replyservice Module.....");
var replyService = (function() {

	function getList(param, callback, error) {
	    var page = param.page || 1;	    
	    var type = param.type;
	    var keyword = param.keyword;
	    
	    //console.log("aaaaaaaa");
	    console.log("ajax mid " + mid);
	    //console.log("vvvvvvvv");
	    //console.log("function : " + $("#mid").val());
	    
	    $.getJSON("/orderlists/" + $("#mid").val() + "/" + page + "/" + type + "/" + keyword + ".json",
	        function(data) {	    

	          if (callback) {
	        	
	            callback(data.cnt, data.list);  
	          }
	        }).fail(function(xhr, status, err) {
	      if (error) {
	        error();
	      }
	    });
	  };
	  
	return {
		getList : getList
	};
})();