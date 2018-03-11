$(document).ready(function() {
	
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
	
	$(window).resize(setContentAreaWidth);
});

function checkRequiredFields(){
	// TODO : implement check logic
}


function getRecommendSpotsHtml() {
	return '<div class="rs-item"><table class="recommend-spots-tb w-100-p"><tr><div class="delete-icon"></div>'
		+ '<td><div class="rs-title">Title <p/><input class="w-100-p" type="text" name="rsTitle" placeholder="Name of Tourist Spot near by your accommodation"></div></td>'
		+ '<td rowspan=2 class="p-10 w-220"> <div class="rs-image"> <!-- TODO : 이미지 업로드 --> </div> </td></tr>'
		+ '<tr> <td> <div class="rs-desc"> Description of Tourist Spot<p/><textarea class="w-100-p" type="text" name="rsDesc" placeholder="Provide quests with directions and descriptions of tourist spot that makes attractive to stay your accommodation"> </textarea></div> </td> </tr>'
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

