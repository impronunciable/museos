;(function(){


$.getJSON('https://search.twitter.com/search.json?q=messi&callback=?', function(data){
	var html = "";
	for(var i = 0; i < 3; i++) {
		var el = data.results[i];
		html += "<li><a href='#'><img src='"+el.profile_image_url+"'></a><p>"+el.text+"</p><span>"+el.created_at+"</span></li>"
	}

	$('#twitter ul').html(html);

});

$.getJSON('https://api.instagram.com/v1/tags/olympics/media/recent?client_id=871310a665024ceb9a0a90e83ac4daed&callback=?', function(data){
	var html = "";
	for(var i = 0; i < 6; i++) {
		var el = data.data[i];
		html += "<li><a href='#' data-big='"+el.images.standard_resolution.url+"'><img src='"+el.images.thumbnail.url+"'></a></li>"
	}

	$('#instagram ul').html(html);
});

})();
