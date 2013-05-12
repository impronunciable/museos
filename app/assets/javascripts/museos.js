;(function(){

	$('#menu strong').click(function(){
		$(this).next().toggle();
		$(this).toggleClass('active');
	});

	$('.rating li').hover(function(){
		$(this).addClass('active');
		$(this).prevAll().addClass('active');
	}, function(){
		$(this).removeClass('active');
		$(this).siblings().removeClass('active');
	});

	$.getJSON('https://search.twitter.com/search.json?q=museos%20buenos%20aires&callback=?', function(data){
		var html = "";
		for(var i = 0; i < 6; i++) {
			var el = data.results[i];
			html += "<li><span class='twPic'><img src='"+el.profile_image_url+"'></span><span class='twText'>"+el.text+"<em>"+el.created_at+"</em></span></li>"
		}
		$('#twitter ul').html(html);
	});

	$.getJSON('https://api.instagram.com/v1/tags/museum/media/recent?client_id=871310a665024ceb9a0a90e83ac4daed&callback=?', function(data){
		var html = "";
		for(var i = 0; i < 12; i++) {
			var el = data.data[i];
			html += "<li><a href='#' data-big='"+el.images.standard_resolution.url+"'><img src='"+el.images.thumbnail.url+"'></a></li>"
		}
		$('#instagram ul').html(html);
	});

})();