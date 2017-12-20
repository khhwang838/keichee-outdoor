$(document).ready(function() {
	
	// 프로필 이미지
	setProfileImage();
	
	// 로그아웃
	$('.logout').click(function() {
		let action = "/logout";
		let d = { 'userId' : $('#userId').text(), 'passwd':'' };
		
		$.ajax({
			type : "POST",
			url : action,
			data : JSON.stringify(d),
			contentType : "application/json; charset=UTF-8",
			success : function(resp) {
				window.location.href = '/';
			},
			error : function(err) {
				console.log(err);
			}
		});
	});
	
	setContentAreaWidth();
	
	// 메뉴
	$('#menu-add-acmd').click(function (e){
		$.get('/views/acmd/add/main.html', function(data){
			$('#content').html(data);
		});
		$('.nav-tabs>li>a').click(function(){
			console.log('222222222');
			$('.nav-tabs>li>a').attr('class', '');
			let dis = $(this);
			this.attr('class','active');
		});
		
	});
	$('#menu-my-acmd').click(function (e){
		$.get('/views/acmd/my/main.html', function(data){
			$('#content').html(data);
		});
	});
	
	$(window).resize(setContentAreaWidth);
});

function setProfileImage(){
	let url = $('#userProfileImgUrl').text();
	if ( url == null || url.length == 0 ){
		url = '/images/avatar.png';
	}
	let profileImgWidth = $('.profile-img').width();
	let profileImgHeight = $('.profile-img').height();
	$('.profile-img').css({'background':'url("' + url + '") no-repeat', 'background-size': profileImgWidth+'px '+ profileImgHeight+'px'});
}
function setContentAreaWidth() {
	let restWidth = $('body').width() - $('#sidebar').outerWidth(true);
	let marginWidth = parseInt($('#content').css("marginRight")) + parseInt($('#content').css("marginLeft"))
	restWidth -= (marginWidth+4);	// 4는 border 1px 씩 sidebar 2, content 2, +alpha
	$('#content').css({'width': ''+restWidth+'px'});
}