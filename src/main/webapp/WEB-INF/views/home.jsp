<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<html>
<head>
	<title>Home</title>
	<link rel="stylesheet" href="/css/common.css"/>
	<link rel="stylesheet" href="/css/home.css"/>
	<script src="http://code.jquery.com/jquery-1.12.0.js"></script>
	<script src="/js/home.js"></script>
</head>
<body>

<div hidden class="userInfo">
	<p id="userId">${userId}</p>
</div>

<div class="top">
	<div class="logo">&nbsp;</div>
	<div class="account-info">
		<div class="top-icon user-icon">&nbsp;</div>
		<div>${userName}</div>
		<div class="top-icon message-icon">&nbsp;</div>
		<div class="top-icon cart-icon">&nbsp;</div>
		<div class="logout"><spring:message code="LOGOUT"/></div>
		<div>USD $</div>
		<div class="top-icon language-icon">&nbsp;</div>
		<div>
			<select>
				<option selected>한국어</option>
				<option>English</option>
			</select>
		</div>
	</div>
</div>

<P>  The time on the server is ${serverTime}. </P>

</body>

</html>
