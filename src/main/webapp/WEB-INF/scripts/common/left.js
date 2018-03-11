/**
 * http://usejsdoc.org/
 */
$(document).ready(function() {
	
	// 프로필 이미지
	setProfileImage();
	
	// Add Accommodation 메뉴
	$('#menu-add-acmd').click(function (e){
		window.location.href = '/acmd/addAcmd';
	});
	
	// My Accommodation 메뉴
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