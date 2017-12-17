<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>
	<title>Login</title>
  	<link rel="icon" href="/favicon.ico" type="image/x-icon">
	<link rel="stylesheet" href="/css/login.css"/>

	<script src="http://code.jquery.com/jquery-1.12.0.js"></script>
	<script src="/js/login.js"></script>

	<link rel="shortcut icon" type="image/x-icon" href="<c:url value='/images/favicon.ico'/>" />

</head>
<body>
<h1>
	Must Outdoor
</h1>
<p>

<div>
  ID: <input id="user_id" type="text" name="userId"/><br>
  PWD: <input id="user_pwd" type="password" name="password"/>
  <input id="btnLogin" type="button" value="Sign In"/>
</div>
<div id="msg" class="errmsg"></div>
</body>

</html>
