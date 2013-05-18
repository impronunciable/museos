;(function(){


$.getJSON('https://search.twitter.com/search.json?q=messi&callback=?', function(data){
	console.log(data);
});

$.getJSON('https://api.instagram.com/v1/tags/olympics/media/recent?client_id=871310a665024ceb9a0a90e83ac4daed&callback=?', function(data){
console.log(data);
});

})();
