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
			$('.nav-tabs>li').click(function(e){
				$('.nav-tabs>li').attr('class', '');
				let dis = $(this);
				dis.attr('class','active');
			});
			
			$('.input-data>div').css('display', 'none');
			$('#content-g-info').css('display','inline');
			
			$('#g-info').click(function (e){
				$('.input-data>div').css('display', 'none');
				$('#content-g-info').css('display','inline');
			});
			$('#acmd-details').click(function (e){
				$('.input-data>div').css('display', 'none');
				$('#content-acmd-details').css('display','inline');
			});
		});
		
	});
	$('#menu-my-acmd').click(function (e){
		$.get('/views/acmd/my/main.html', function(data){
			$('#content').html(data);
			$('.nav-tabs>li').click(function(){
				$('.nav-tabs>li').attr('class', '');
				let dis = $(this);
				dis.attr('class','active');
			});
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