console.log("Replyservice Module.....");
var replyService = (function() {

	function getList(param, callback, error) {
	    var mid = param.mid;
	    var page = param.page || 1;	    
	    var type = param.type;
	    var keyword = param.keyword;

	    $.getJSON("/orderlists/" + mid + "/" + page + "/" + type + "/" + keyword + ".json",
	        function(data) {	    
	    	console.log(JSON.stringify(data));
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