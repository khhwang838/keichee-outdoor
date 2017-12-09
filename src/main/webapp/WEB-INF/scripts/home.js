$(document).ready(function() {
	console.log('/home is now ready!!!');
	// 언어 세팅
	
	
	// 로그아웃
	$('.logout').click(function() {
		console.log('logging out.');
		let action = "/logout";
		let d = { 'userId' : $('#userId').text(), 'passwd':'' };
		
		$.ajax({
			type : "POST",
			url : action,
			data : JSON.stringify(d),
			contentType : "application/json; charset=UTF-8",
			success : function(response) {
				window.location.href = '/';
			},
			error : function(err) {
				console.log(err);
			}
		});
	});
});

