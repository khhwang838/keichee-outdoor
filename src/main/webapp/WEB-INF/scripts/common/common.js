/**
 * 
 */
function setContentAreaWidth() {
	// TODO : 윈도우 사이즈 변경시 자동 변경되도록 이벤트 등록 및 최소 사이즈 지정
	let sidebarWidth = $('#sidebar').outerWidth(true);
	let restWidth = $('body').width() - sidebarWidth;
	let marginWidth = parseInt($('#content').css("marginRight")) + parseInt($('#content').css("marginLeft"))
	restWidth -= (marginWidth+4);	// 4는 border 1px 씩 sidebar 2, content 2, +alpha
	if ( $(window).width() < 1280 ) restWidth = 1280 - sidebarWidth - (marginWidth+4);
	$('#content').css({'width': restWidth+'px'});
	
	if ($(window).width() < 830){
		$('.account-info').css({'left':400+'px'})
	}
}