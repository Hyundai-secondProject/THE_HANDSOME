console.log("Orderservice Module.....");
var orderService = (function() {
	
	function getMemberInfo(param, callback, error) {
		var mid = param.mid;
		
		$.getJSON("/order/" + mid + ".json",
			function(data) {
			if (callback) {
				callback(data);
			}
		}).fail(function(xhr, status, err) {
		if (error) {
			error();
		}
		});
	}

	
	return {
		getMemberInfo : getMemberInfo
	};
})();