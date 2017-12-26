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
	
	// Add Accommodation 메뉴
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
			
			$('#l-settings').click(function (e){
				$('.input-data>div').css('display', 'none');
				$('#content-l-settings').css('display','inline');
			});
			
			let sfCnt = 1;
			$('#acmd-details').click(function (e){
				$('.input-data>div').css('display', 'none');
				$('#content-acmd-details').css('display','inline');

				$('div.special-facility>.add-icon').click(function (e){
					$('.special-facility>.content-box').append(getSpecialFacilityHtml(sfCnt++));
				});
			});
			
			$('#acmd-gallery').click(function (e){
				$('.input-data>div').css('display', 'none');
				$('#content-acmd-gallery').css('display','inline');
			});
			
			let eoCnt = 1;
			$('#other-options').click(function (e){
				$('.input-data>div').css('display', 'none');
				$('#content-other-options').css('display','inline');
				
				$('div.extra-options>.add-icon').click(function (e){
					$('.extra-options>.content-box').append(getExtraOptionsHtml(eoCnt++));
				});
			});
			
			$('#policy').click(function (e){
				$('.input-data>div').css('display', 'none');
				$('#content-policy').css('display','inline');
			});
			
		});
		
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
	
	$(window).resize(setContentAreaWidth);
});

function getExtraOptionsHtml(count) {
	return '<div class="eo-item">'
			+ '<div class="delete-icon"></div>'
			+ '<table>'
			+ '<tr>'
			+ '<td>'
			+ '	<div class="eo-title">Name of Item</div>'
			+ '</td>'
			+ '<td>'
			+ '	<div class="eo-price">'
			+ '		Price <span class="t-small">(per 1 item)</span>'
			+ '	</div>'
			+ '</td>'
			+ '</tr>'
			+ '<tr>'
			+ '	<td><input type="text" name="eoTitle'+count+'" placeholder="Name of Item for extra option"></td>'
			+ '	<td><input type="text" name="eoPrice'+count+'" placeholder="$"></td>'
			+ '</tr>'
			+ '<tr><td><div class="eo-max-number">Max of Number</div></td>'
			+ '	<td><div class="eo-payment-method">Payment Method</div></td></tr>'
			+ '<tr><td><input type="number" name="eoMaxItems'+count+'" placeholer="Input max number of the item that can be ordered"></td>'
			+ '	<td><input type="radio" name="eoPayment'+count+'" value="onsite"> On-site Payment Only  <input type="radio" name="eoPayment'+count+'" value="option"> Available in Extra Option</td></tr>'
			+ '<tr>'
			+ '	<td colspan="2">'
			+ '		<div class="eo-desc">Description</div>'
			+ '	</td>'
			+ '</tr>'
			+ '<tr>'
			+ '	 <td colspan="2"><input type="text" name="eoDesc'+count+'" placeholder="Please describe inclusion of extra options for user."></td>'
			+ '</tr>'
			+ '</table>'
			+ '</div>'
}
function getSpecialFacilityHtml(count) {
	return '<div class="sf-item"><div class="sf-item-delete-icon"></div><div class="sf-title">Title'
		+ '<input type="text" name="sfTitle'+count+'" placeholder="Title of Special Facility">'	
		+ '</div>'
		+ '<div class="sf-desc">Description'
		+ '<input type="text" name="sfDesc'+count+'" placeholder="Please describe your special facility for user">'
		+ '</div></div>';
}
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