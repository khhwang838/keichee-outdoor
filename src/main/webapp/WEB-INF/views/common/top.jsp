<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<div id="top">
	<div class="logo">&nbsp;</div>
	<div class="account-info">
		<div class="top-icon user-icon">&nbsp;</div>
		<div>${userName}</div>
		<div class="top-icon message-icon">&nbsp;</div>
		<div class="top-icon cart-icon">&nbsp;</div>
		<!-- TODO : 다국어 처리-->
	<!--	<div class="logout"><spring:message code="LOGOUT"/></div>	-->
		<div class="logout">Logout</div>
		<div>USD $</div>
		<div class="top-icon language-icon">&nbsp;</div>
		<div>
			<select>
				<!-- TODO : 동적으로 DB에 있는 지원가능 언어 목록 조회-->
				<option selected>한국어</option>
				<option>English</option>
			</select>
		</div>
	</div>
</div>

</body>
</html>