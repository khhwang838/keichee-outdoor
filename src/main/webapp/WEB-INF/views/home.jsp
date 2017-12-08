<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>

<html>
<head>
	<title>Home</title>
	<link rel="stylesheet" href="/css/common.css"/>
	<link rel="stylesheet" href="/css/top.css"/>
	<script src="http://code.jquery.com/jquery-1.12.0.js"></script>
</head>
<body>

<jsp:include page="top.jsp" flush="true" >
	<jsp:param name="userId" value="${userId}"/>
</jsp:include>


<P>  The time on the server is ${serverTime}. </P>

</body>

</html>
