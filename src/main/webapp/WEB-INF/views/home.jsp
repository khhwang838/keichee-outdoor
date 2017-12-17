<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<html>
<head>
	<title>Must Outdoor</title>
	<link rel="icon" href="/favicon.ico" type="image/x-icon">
	<link rel="stylesheet" href="/css/3rd-party/bootstrap-4.0.0.min.css"/>
	<link rel="stylesheet" href="/css/common.css"/>
	<link rel="stylesheet" href="/css/acmd/add.css"/>
	<link rel="stylesheet" href="/css/acmd/my.css"/>

	<script src="/js/3rd-party/jquery-3.2.1.min.js"></script>
	<script src="/js/home.js"></script>
	<script src="/js/acmd/acmd.js"></script>

    <link rel="shortcut icon" type="image/x-icon" href="<c:url value='/images/favicon.ico'/>" />

</head>
<body>

<div hidden class="userInfo">
	<p id="userId">${userId}</p>
	<p id="userProfileImgUrl">${profileImgUrl}</p>
</div>

<div id="top">
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
			<!-- // TODO : 동적으로 DB에 있는 지원가능 언어 목록 조회-->
				<option selected>한국어</option>
				<option>English</option>
			</select>
		</div>
	</div>
</div>

<div id="sidebar" class="inline">
	<div class="profile">
		<div class="profile-img"></div>
		<div class="user-info">
			<h3>${userName}</h3>
			<p>Member since ${signUpMonth}</p>
		</div>
	</div>
	<div class="menu">
		<div>
			<div class="menu-icon dashboard-icon inline">&nbsp;</div><div class="inline menu-text">Dashboard</div>
		</div>
		<div>
			<div class="menu-icon profile-icon inline">&nbsp;</div><div class="inline menu-text">My Profile</div>
		</div>
		<div>
			<div class="menu-icon wishlist-icon inline">&nbsp;</div><div class="inline menu-text">Wish List</div>
		</div>
		<div>
			<div class="menu-icon message-inbox-icon inline">&nbsp;</div><div class="inline menu-text">Message Inbox</div>
		</div>
		<div>
			<div class="menu-icon booking-box-icon inline">&nbsp;</div><div class="inline menu-text">Booking Box</div>
		</div>

		<hr>

		<div id="menu-add-acmd">
			<div class="menu-icon accommodation-icon inline">&nbsp;</div><div class="inline menu-text">Add Accommodation</div>
		</div>
		<div id="menu-my-acmd">
			<div class="menu-icon accommodation-icon inline">&nbsp;</div><div class="inline menu-text">My Accommodation</div>
		</div>
		<div id="menu-acmd-cal">
			<div class="menu-icon calendar-icon inline">&nbsp;</div><div class="inline menu-text">Acco. Calendar</div>
		</div>
		<div id="menu-add-actv">
			<div class="menu-icon activity-icon inline">&nbsp;</div><div class="inline menu-text">Add Activity</div>
		</div>
		<div id="menu-my-actv">
			<div class="menu-icon activity-box-icon inline">&nbsp;</div><div class="inline menu-text">My Activity</div>
		</div>
		<div id="menu-actv-cal">
			<div class="menu-icon calendar-icon inline">&nbsp;</div><div class="inline menu-text">Activity Calendar</div>
		</div>
		<div id="menu-statistic">
			<div class="menu-icon statistic-icon inline">&nbsp;</div><div class="inline menu-text">Statistics</div>
		</div>
		<div id="menu-book-status">
			<div class="menu-icon booking-status-icon inline">&nbsp;</div><div class="inline menu-text">Booking Status</div>
		</div>
	</div>
</div>

<div id="content" class="inline">
&nbsp;
</div>

</body>

</html>
