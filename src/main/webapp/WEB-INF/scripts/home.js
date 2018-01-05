var featuredImgEvent;

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
		
		featuredImgEvent = null;
		
		$.get('/views/acmd/add/main.html', function(data){
			$('#content').html(data);
			$('.nav-tabs>li').click(function(e){
				$('.nav-tabs>li').attr('class', '');
				let dis = $(this);
				dis.attr('class','active');
			});
			
			addDeleteEvent();
			
			// 기본적으로 General Info 탭의 내용을 출력
			$('.input-data>form>div').css('display', 'none');
			$('#content-g-info').css('display','inline');
			
			// General Info 탭
			$('#g-info').click(function (e){
				$('.input-data>form>div').css('display', 'none');
				$('#content-g-info').css('display','inline');
			});
			
			// Location Settings 탭
			$('#l-settings').click(function (e){
				$('.input-data>form>div').css('display', 'none');
				$('#content-l-settings').css('display','inline');
				
				setContentAreaWidth();	// TODO : 이게 없으면 map height 때문에 #content 박스가 아래로 내려가는 현상 확인 필요
				initMap();
				
				$('#searchAddr').click(findLocationOnMap);
				
				$('.recommend-spots>.add-icon').click(function (e){
					$('.recommend-spots>.content-box').append(getRecommendSpotsHtml());
					addDeleteEvent();
				});
			});
			
			// Details 탭
			let sfCnt = 1;
			$('#acmd-details').click(function (e){
				$('.input-data>form>div').css('display', 'none');
				$('#content-acmd-details').css('display','inline');

				$('div.special-facility>.add-icon').click(function (e){
					$('.special-facility>.content-box').append(getSpecialFacilityHtml(sfCnt++));
					addDeleteEvent();
				});
			});
			
			// Gallery 탭
			$('#acmd-gallery').click(function (e){
				$('.input-data>form>div').css('display', 'none');
				$('#content-acmd-gallery').css('display','inline');
			});
			
			// Other Options 탭
			let eoCnt = 1;
			$('#other-options').click(function (e){
				$('.input-data>form>div').css('display', 'none');
				$('#content-other-options').css('display','inline');
				
				$('div.extra-options>.add-icon').click(function (e){
					$('.extra-options>.content-box').append(getExtraOptionsHtml(eoCnt++));
					addDeleteEvent();
				});
			});
			
			// Policy 탭
			let poCnt = 1;
			$('#policy').click(function (e){
				$('.input-data>form>div').css('display', 'none');
				$('#content-policy').css('display','inline');
				
				$('div.policy-options>.add-icon').click(function (e){
					$('.policy-options>.content-box').append(getPolicyOptionsHtml(poCnt++));
					addDeleteEvent();
				});
				
				$('#checkInTime').timepicker({ 
					timeFormat: 'h:mm p',
				    interval: 30,
				    minTime: '0',
				    maxTime: '11:30pm',
				    defaultTime: '2:00pm',
				    startTime: '12:00am',
				    dynamic: false,
				    dropdown: true,
				    scrollbar: true
				});
				$('#checkOutTime').timepicker({
					timeFormat: 'h:mm p',
				    interval: 30,
				    minTime: '0',
				    maxTime: '11:30pm',
				    defaultTime: '10:00am',
				    startTime: '12:00am',
				    dynamic: false,
				    dropdown: true,
				    scrollbar: true
				});
			});
			
			$('.featured-image').on('change', prepareUpload);
			
			// Submit 버튼
			$('.btn-submit').click(function(e){
				// TODO : 각 탭의 내용을 JSON형태로 만들어 /acmd/add API 호출
				let inputData = {};
				// general info
				inputData.acmdName = $('#content-g-info>input[name=acmdName]').val();
				inputData.acmdDesc = $('#content-g-info>input[name=acmdDesc]').val();
				inputData.email = $('#content-g-info input[name=acmdEmail]').val();
				inputData.contact = $('#content-g-info input[name=acmdPhone]').val();
				// location setting
				// details
				// gallery
				// options
				// policy
				
				// ajax call
				let acmdUid='';
				console.log('input: ',inputData);
				$.ajax({
					type: 'POST',
					url: '/acmd/add',
					dataType: 'json',
					data: JSON.stringify(inputData),
					contentType: 'application/json',
					success: function(resp) {
						console.log('add acmd resp: ',resp);
						acmdUid = resp.respData[0];
						
						// TODO : Image upload
						if ( featuredImgEvent != null && acmdUid.length > 0){
							
//							var files = featuredImgEvent.target.files;
							
							var formData = new FormData();
							formData.append('image', $('input[name=featuredImage]')[0].files[0]); 
							formData.append('acmdUid', acmdUid);
							formData.append('acmdName', inputData.acmdName);
							$.ajax({
								type: 'POST',
								url: '/acmd/upload',
								dataType: 'json',
								data: formData,
								cache: false,
								contentType: false,
								processData: false, 
								success: function(resp) {
									console.log('image upload resp: ',resp);
								}
							});
						}
					}
				});
				
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

function addDeleteEvent() {
	$('.rs-item div.delete-icon').click(function(e){
		$(this).parent().remove();
	});
	$('.sf-item>div.delete-icon').click(function(e){
		$(this).parent().remove();
	});
	$('.eo-item>div.delete-icon').click(function(e){
		$(this).parent().remove();
	});
	$('.po-item>div.delete-icon').click(function(e){
		$(this).parent().remove();
	});
}
function prepareUpload(event) {
	featuredImgEvent = event;
	// thumb nail
//	var preview = document.querySelector('img');
	var preview = $('.preview-image>img')[0];
//	var file = document.querySelector('input[type=file]').files[0];
	var file = $('input[name=featuredImage]')[0].files[0];
	var reader = new FileReader();

	reader.onloadend = function() {
		preview.src = reader.result;
		
		console.log('preview.src: ',preview.src);
		console.log('preview.clientWidth: ',preview.clientWidth);
		console.log('preview: ',preview);
		if ( preview.clientWidth > 400 ) {
			preview.attr('width',400);
		}
	}

	if (file) {
		reader.readAsDataURL(file);
	} else {
		preview.src = "../images/photo-small.png";
	}

}
function getRecommendSpotsHtml() {
	return '<div class="rs-item"><table class="recommend-spots-tb w-100-p"><tr><div class="delete-icon"></div>'
		+ '<td><div class="rs-title">Title <p/><input class="w-100-p" type="text" name="rsTitle" placeholder="Name of Tourist Spot near by your accommodation"></div></td>'
		+ '<td rowspan=2 class="p-10 w-220"> <div class="rs-image"> <!-- TODO : 이미지 업로드 --> </div> </td></tr>'
		+ '<tr> <td> <div class="rs-desc"> Description of Tourist Spot<p/><textarea class="w-100-p" type="text" name="rsDesc0" placeholder="Provide quests with directions and descriptions of tourist spot that makes attractive to stay your accommodation"> </textarea></div> </td> </tr>'
		+ '</table></div>';
}
function getPolicyOptionsHtml(count) {
	return '<div class="po-item"><div class="delete-icon"></div><div class="po-title">Title'
	+ '<input type="text" name="poTitle" placeholder="Name of Policy">'	
	+ '</div>'
	+ '<div class="po-desc">Policy Description'
	+ '<input type="text" name="poDesc" placeholder="Please describe your policy on your accommodation">'
	+ '</div></div>';
}
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
			+ '	<td><input type="text" name="eoTitle" placeholder="Name of Item for extra option"></td>'
			+ '	<td><input type="text" name="eoPrice" placeholder="$"></td>'
			+ '</tr>'
			+ '<tr><td><div class="eo-max-number">Max of Number</div></td>'
			+ '	<td><div class="eo-payment-method">Payment Method</div></td></tr>'
			+ '<tr><td><input type="number" name="eoMaxItems" placeholer="Input max number of the item that can be ordered"></td>'
			+ '	<td><input type="radio" name="eoPayment" value="onsite"> On-site Payment Only  <input type="radio" name="eoPayment'+count+'" value="option"> Available in Extra Option</td></tr>'
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
	return '<div class="sf-item"><div class="delete-icon"></div><div class="sf-title">Title'
		+ '<input type="text" name="sfTitle" placeholder="Title of Special Facility">'	
		+ '</div>'
		+ '<div class="sf-desc">Description'
		+ '<input type="text" name="sfDesc" placeholder="Please describe your special facility for user">'
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
function initMap(lat, lng, zoom) {
	
	if ( lat == null && lng == null ) {
		var lat = 37.566;	// lat_seoul
		var lng = 126.9784;	// lng_seoul
	}
	var location = {lat: lat, lng: lng};
    var map = new google.maps.Map(document.getElementById('map'), {
      zoom: (zoom == null ? 8 : zoom),
      center: location
    });
    var marker = new google.maps.Marker({
      position: location,
      map: map
    });
    $('#acmdAltd').val(lat);
    $('#acmdLgtd').val(lng);
	
}
function findLocationOnMap(){
	let addr = $('input[name=acmdAddr]').val();
	addr = addr.replace(/s/g,'+');
	console.log('addr: ',addr);
	let url = 'https://maps.googleapis.com/maps/api/geocode/json?address=' + addr + '&key=AIzaSyBuThZWpfwiFsnXJjEtxqikxCnQJo0o6TI';

	$.ajax({
		type: 'GET',
		url: url,
		success: function(resp) {
			console.log('search addr resp: ',resp);
			let lat = resp.results[0].geometry.location.lat;
			let lng = resp.results[0].geometry.location.lng;
			
			initMap(lat, lng);
		}
	});
}