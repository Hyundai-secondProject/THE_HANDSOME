console.log("Replyservice Module.....");
var replyService = (function() {

	function getList(param, callback, error) {
	    var mid = param.mid;
	    var page = param.page || 1;	    
	    $.getJSON("/orderlists/" + mid + "/" + page + ".json",
	        function(data) {	    	
	          if (callback) {
	            callback(data.cnt, data.list); // 댓글 목록만 가져오는 경우 
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