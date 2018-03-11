<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="/css/common.css"/>

<script src="/js/common/left.js"></script>

</head>
<body>

<div id="sidebar" class="inline">
	<div class="profile">
		<div class="profile-img"></div>
		<div class="user-info">
			<h5>${userName}</h5>
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

</body>
</html>