<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<div class="top">
	<div class="logo">&nbsp;</div>
	<div class="account-info">
		<div class="top-icon user-icon">&nbsp;</div>
		<div>${userName}</div>
		<div class="top-icon message-icon">&nbsp;</div>
		<div class="top-icon cart-icon">&nbsp;</div>
		<div><spring:message code="LOGOUT"/></div>
		<div>USD $</div>
		<div class="top-icon language-icon">&nbsp;</div>
		<div><select><option selected>English</option><option>한국어</option></select></div>
	</div>
</div>
