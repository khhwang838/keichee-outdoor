/**
 * 
 */
function setContentAreaWidth() {
	// TODO : 윈도우 사이즈 변경시 자동 변경되도록 이벤트 등록 및 최소 사이즈 지정
	let restWidth = $('body').width() - $('#sidebar').outerWidth(true);
	let marginWidth = parseInt($('#content').css("marginRight")) + parseInt($('#content').css("marginLeft"))
	restWidth -= (marginWidth+4);	// 4는 border 1px 씩 sidebar 2, content 2, +alpha
	$('#content').css({'width': ''+restWidth+'px'});
}