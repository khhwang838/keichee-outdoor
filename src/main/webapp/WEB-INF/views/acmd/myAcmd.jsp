<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/3rd-party/bootstrap-3.3.7.min.css" />
<link rel="stylesheet" href="/css/3rd-party/jquery.timepicker.min.css" />

<script src="/js/3rd-party/jquery-3.2.1.min.js"></script>
<script src="/js/3rd-party/bootstrap-3.3.7.min.js"></script>
<script src="/js/3rd-party/jquery.timepicker.min.js"></script>

<link rel="stylesheet" href="/css/acmd/my.css" />
<script src="/js/common/common.js"></script>
<script src="/js/acmd/myAcmd.js"></script>
</head>
<body>
	<!-- include top -->
	<%@ include file="../common/top.jsp"%>

	<!-- include left -->
	<%@ include file="../common/left.jsp"%>

	<div id="content" class="inline">

		<div>
			<a href="#">My Account</a> > My Accommodation
		</div>

		<div class="title">
			<div class="title-icon inline"></div>
			<h1 class="inline"></h1>
		</div>

		<div class="container">
			<div class="title-icon inline m-r-20">&nbsp;</div>
			<h3 class="inline">My Accommodation</h3>
			<ul class="nav nav-tabs">
				<li class="active"><a href="#">General Info</a></li>
				<li><a href="#">Location Settings</a></li>
				<li><a href="#">Accommodation Details</a></li>
				<li><a href="#">Accommodation Gallery</a></li>
				<li><a href="#">Other Options</a></li>
				<li><a href="#">Policy</a></li>
			</ul>
			<br>

			<div class="input-data">
				<!-- js이용하여 탭 메뉴 별로 html include -->
			</div>
		</div>

	</div>

	<%@ include file="../common/bottom.jsp"%>

</body>
</html>