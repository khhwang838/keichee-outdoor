<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>
<link rel="stylesheet" href="/css/3rd-party/bootstrap-3.3.7.min.css" />
<link rel="stylesheet" href="/css/3rd-party/jquery.timepicker.min.css" />

<script src="/js/3rd-party/jquery-3.2.1.min.js"></script>
<script src="/js/3rd-party/bootstrap-3.3.7.min.js"></script>
<script src="/js/3rd-party/jquery.timepicker.min.js"></script>

<link rel="stylesheet" href="/css/common.css" />
<link rel="stylesheet" href="/css/acmd/add.css" />
<script src="/js/common/common.js"></script>
<script src="/js/acmd/addAcmd.js"></script>
</head>
<body>
	<!-- include top -->
	<%@ include file="../common/top.jsp"%>

	<!-- include left -->
	<%@ include file="../common/left.jsp"%>

	<div id="content" class="inline">
		<div class="menu-path">
			<a href="#">My Account</a> > Add Accommodation
		</div>

		<div class="title">
			<div class="title-icon inline m-r-20"></div>
			<h1 class="inline">Add Accommodation</h1>
		</div>

		<div class="container">
			<ul class="nav nav-tabs">
				<li id="g-info" class="active"><a>General Info</a></li>
				<li id="l-settings"><a>Location Settings</a></li>
				<li id="acmd-details"><a>Accommodation Details</a></li>
				<li id="acmd-gallery"><a>Accommodation Gallery</a></li>
				<li id="other-options"><a>Other Options</a></li>
				<li id="policy"><a>Policy</a></li>
			</ul>
			<br>

			<div class="input-data">
				<!-- js이용하여 탭 메뉴 별로 html include, 기본세팅은 General Info. 탭의 내용 -->
				<!-- General Info 탭 메뉴 -->
				<form id="add-acmd-form">
					<div id="content-g-info">
						<h5 class="inline">
							Title<span>*</span>
						</h5>
						<div class="mo-tooltip inline"></div>
						<br> <input name="acmdName" class="input-name" type="text" placeholder="Name of Accommodation">
						<p />

						<h5 class="inline">
							Description<span>*</span>
						</h5>

						<div class="mo-tooltip inline"></div>
						<br> <input name="acmdDesc" class="input-desc" type="text" placeholder="Describe your accommodation for customers.">
						<p />

						<table>
							<tr>
								<td><h5>Email</h5></td>
								<td><h5>Phone Number</h5></td>
							</tr>

							<tr>
								<td><input name="acmdEmail" class="input-email" type="text" placeholder="E-mail Address"></td>
								<td><input name="acmdPhone" class="input-phone" type="text" placeholder="Phone Number"></td>
							</tr>
						</table>
						<p />

						<h5 class="inline">Featured Image</h5>
						<div class="tool-tip inline"></div>
						<div class="preview-image">
							<img src="../../../images/photo-small.png">
						</div>

						<input name="featuredImage" class="btn btn-md featured-image" type="file">
						<p />
						Your Currency
						<h5 class="inline">
							<span>*</span>
						</h5>
						<div class="tool-tip inline"></div>
						<select class="selectpicker" name="crcNationCd" form="add-acmd-form">
							<!-- TODO : 사용자의 현재 로케일 정보에 맞는 currency를 default로 설정, currency 테이블에서 조회한 내용을 option으로 대체, 국가명 순서로 정렬 -->
							<option value='us' selected>United State dollar ($)</option>
							<option value='cn'>Chineese yuan (¥)</option>
							<option value='kr'>South Korea won (₩)</option>
						</select>
					</div>

					<!-- Location Settings 탭 메뉴 -->
					<div id="content-l-settings">
						<div>
							<h5>
								Accommodation Location<span>*</span>
							</h5>
							<select class="selectpicker" name="cityUid" form="add-acmd-form">
								<!-- TODO : location 테이블에서 조회한 내용을 option으로 대체, 국가명 순서로 정렬 -->
								<option value='seoul' selected>Seoul</option>
								<option value='gyeonggi'>Gyeonggi-do</option>
								<option value='gangwon'>Gangwon-do</option>
								<option value='chungcheongbuk'>Chungcheongbuk-do</option>
								<option value='chungcheongnam'>Chungcheongnam-do</option>
							</select>
						</div>
						<div>
							<h5>
								Real Accommodation Address<span>*</span>
							</h5>
							<input class="input-type inline" type="text" name="acmdAddr" placeholder="Real Accommodation Address">
							<button id="searchAddr" class="inline btn btn-m" type="button">Search</button>
							<div class="input-type location-map">
								<!-- map API 이용하여 map을 표시하고 위도와 경도 좌표 가져오기-->
								<div id="map">
									<!-- 실제로 맵이 표시될 영역 -->
								</div>
								<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBuThZWpfwiFsnXJjEtxqikxCnQJo0o6TI&callback=initMap">
									
								</script>
								<table>
									<tr>
										<td>Latitude</td>
										<td>Longitude</td>
									</tr>
									<tr>
										<td><input id="acmdAltd" name="acmdAltd" type="text" readonly></td>
										<td><input id="acmdLgtd" name="acmdLgtd" type="text" readonly></td>
									</tr>
								</table>
							</div>
						</div>
						<div>
							<h5>How to Get There</h5>
							<input type="text" name="direction"
								placeholder="Provide guests with directions to your place, suggestions on transportation, and any other details that may help them arrive easily and on time."
							>
						</div>
						<div class="recommend-spots">
							<h5 class="inline">Recommending Tourist Spot</h5>
							<div class="inline add-icon"></div>
							<div class="content-box">
								<!-- home.js에서 동적으로 생성함 -->
								<div class="rs-item">
									<table class="recommend-spots-tb w-100-p">
										<tr>
											<div class="delete-icon"></div>
											<td>
												<div class="rs-title">
													Title
													<p />
													<input class="w-100-p" type="text" name="rsTitle" placeholder="Name of Tourist Spot near by your accommodation">
												</div>
											</td>
											<td rowspan=2 class="p-10 w-220">
												<div class="rs-image">
													<!-- TODO : 이미지 업로드 -->
												</div>
											</td>
										</tr>
										<tr>
											<td>
												<div class="rs-desc">
													Description of Tourist Spot
													<p />
													<textarea class="w-100-p" type="text" name="rsDesc"
														placeholder="Provide quests with directions and descriptions of tourist spot that makes attractive to stay your accommodation"
													></textarea>
												</div>
											</td>
										</tr>
									</table>
								</div>
							</div>
						</div>
					</div>

					<!-- Accommodation Details 탭 메뉴 -->
					<div id="content-acmd-details">
						<div>
							<h5>
								Outdoor Accommodation Type<span>*</span>
							</h5>
							<input class="input-type" type="checkbox" name="acmd-type" value="auto-camping">Auto Camping <input class="input-type" type="checkbox"
								name="acmd-type" value="caravan"
							>Caravan <input class="input-type" type="checkbox" name="acmd-type" value="easy-glamping">Easy Glamping <input class="input-type"
								type="checkbox" name="acmd-type" value="lodge-villa"
							>Lodge & Villa <input class="input-type" type="checkbox" name="acmd-type" value="luxury-glamping">Luxury Glamping
						</div>

						<p />

						<div>
							<h5 class="inline">
								Outdoor Accommodation Facility<span>*</span>
							</h5>
							<input class="input-type" type="checkbox" name="acmd-facility" value="bicycle-storage">Bicycle Storage <input class="input-type"
								type="checkbox" name="acmd-facility" value="cafe"
							>Cafe <input class="input-type" type="checkbox" name="acmd-facility" value="handicapped">Handicapped <input class="input-type"
								type="checkbox" name="acmd-facility" value="no-pet-allowed"
							>No Pet Allowed <input class="input-type" type="checkbox" name="acmd-facility" value="parking">Parking <input class="input-type"
								type="checkbox" name="acmd-facility" value="picnic-table"
							>Picnic Table <input class="input-type" type="checkbox" name="acmd-facility" value="pool">Pool <input class="input-type"
								type="checkbox" name="acmd-facility" value="shops"
							>Shops <input class="input-type" type="checkbox" name="acmd-facility" value="wifi">Wifi
						</div>
						<p />

						<div>
							<h5 class="inline">
								Location Theme<span>*</span><span>(Choose only upto 3 themes)</span>
							</h5>
							<input class="input-type" type="checkbox" name="acmd-theme" value="beach-front">Beach Front <input class="input-type" type="checkbox"
								name="acmd-theme" value="countryside"
							>Countryside <input class="input-type" type="checkbox" name="acmd-theme" value="couple-friendly">Couple Friendly <input
								class="input-type" type="checkbox" name="acmd-theme" value="event-party"
							>Event & Party <input class="input-type" type="checkbox" name="acmd-theme" value="family-friendly">Family Freindly <input
								class="input-type" type="checkbox" name="acmd-theme" value="forest"
							>Forest <input class="input-type" type="checkbox" name="acmd-theme" value="hillside">Hillside <input class="input-type"
								type="checkbox" name="acmd-theme" value="lake-view"
							>Lake View <input class="input-type" type="checkbox" name="acmd-theme" value="mountain">Mountain <input class="input-type"
								type="checkbox" name="acmd-theme" value="pet-allowed"
							>Pet Allowed <input class="input-type" type="checkbox" name="acmd-theme" value="river-view">River View <input class="input-type"
								type="checkbox" name="acmd-theme" value="stream-side"
							>Streamside <input class="input-type" type="checkbox" name="acmd-theme" value="valley">Valley
						</div>
						<p>
						<div class="special-facility">
							<h5 class="inline">Special Facility</h5>
							<div class="inline add-icon"></div>
							<div class="content-box">
								<!-- home.js에서 동적으로 생성함 -->
								<div class="sf-item">
									<div class="delete-icon"></div>
									<div class="sf-title">
										Title <input type="text" name="sfTitle0" placeholder="Title of Special Facility">
									</div>
									<div class="sf-desc">
										Description <input type="text" name="sfDesc0" placeholder="Please describe your special facility for user">
									</div>
								</div>
							</div>
						</div>
					</div>

					<!-- Gallery 탭 메뉴 -->
					<div id="content-acmd-gallery">
						<div class="input-image">
							<img src="../../../images/photo-small.png">
						</div>
						<div>
							Upload the attractive features of your accommodation that guests might love.
							<div class="mo-tooltip inline"></div>
						</div>
						<button type="button" class="btn btn-md">Image Upload</button>
					</div>

					<!-- Other Options 탭 메뉴 -->
					<div id="content-other-options">
						<div class="extra-options">
							<h5 class="inline">Extra Options</h5>
							<div class="inline add-icon"></div>
							<div class="content-box">
								<!-- home.js에서 동적으로 생성함 -->
								<div class="eo-item">
									<div class="delete-icon"></div>
									<table>
										<tr>
											<td>
												<div class="eo-title">Name of Item</div>
											</td>
											<td>
												<div class="eo-price">
													Price <span class="t-small">(per 1 item)</span>
												</div>
											</td>
										</tr>
										<tr>
											<td><input type="text" name="eoTitle0" placeholder="Name of Item for extra option"></td>
											<td><input type="text" name="eoPrice0" placeholder="$"></td>
										</tr>
										<tr>
											<td><div class="eo-max-number">Max of Number</div></td>
											<td><div class="eo-payment-method">Payment Method</div></td>
										</tr>
										<tr>
											<td><input type="number" name="eoMaxItems0" placeholer="Input max number of the item that can be ordered"></td>
											<td><input type="radio" name="eoPayment0" value="onsite"> On-site Payment Only <input type="radio" name="eoPayment0"
												value="option"
											> Available in Extra Option</td>
										</tr>
										<tr>
											<td colspan="2">
												<div class="eo-desc">Description</div>
											</td>
										</tr>
										<tr>
											<td colspan="2"><input type="text" name="eoDesc0" placeholder="Please describe inclusion of extra options for user."></td>
										</tr>
									</table>
								</div>
							</div>
						</div>
					</div>

					<!-- Policy 탭 메뉴 -->
					<div id="content-policy">
						<div class="inline checkInTimePicker">
							<h5>
								Check In Time<span>*</span>
							</h5>
							<input type="text" id="checkInTime" class="time ui-timepicker-input" autocomplete="off">
						</div>
						<div class="inline checkOutTimePicker">
							<h5>
								Check Out Time<span>*</span>
							</h5>
							<input type="text" id="checkOutTime" class="time ui-timepicker-input" autocomplete="off">
						</div>
						<div>
							<h5>
								Confirmation<span>*</span>
							</h5>
							<input type="radio" name="confirm" value="instant">Instant Confirmation <input type="radio" name="confirm" value="within">Confirmation
							within <select id="confirm-within">
								<option>24 Hours</option>
								<option>48 Hours</option>
							</select>

							<div class="confirm-desc">
								<input type="text">
							</div>
						</div>
						<div>
							<h5>
								Booking Available<span>*</span><span>Please select the least day(s) prior to check in date.</span>
							</h5>
							<input type="radio" name="booking-availability" value="today">Available Today <input type="radio" name="booking-availability"
								value="within"
							>Booking is available at least <select id="confirm-within">
								<option>2 Days</option>
								<option>3 Days</option>
								<option>4 Days</option>
								<option>5 Days</option>
								<option>6 Days</option>
								<option>7 Days</option>
								<option>8 Days</option>
								<option>9 Days</option>
								<option>10 Days</option>
								<option>11 Days</option>
								<option>12 Days</option>
								<option>13 Days</option>
								<option>14 Days</option>
								<option>15 Days</option>
							</select> in advance of check-in date

							<div class="booking-desc">
								<input type="text">
							</div>
						</div>

						<div class="policy-options">
							<h5 class="inline">Policy Options</h5>
							<div class="inline add-icon"></div>
							<div class="content-box">
								<!-- home.js에서 동적으로 생성함 -->
								<div class="po-item">
									<div class="delete-icon"></div>
									<div class="po-title">
										Name of Policy <input type="text" name="poTitle0" placeholder="Name of Policy">
									</div>
									<div class="po-desc">
										Policy Description <input type="text" name="poDesc0" placeholder="Please describe your policy on your accommodation">
									</div>
								</div>
							</div>
						</div>

						<div class="cancel-policy">
							<h5>
								Cancellation Policy<span>*</span>
							</h5>

							<div id="policy-desc-top"></div>
							<div id="policy-desc-imgbox"></div>
							<div id="policy-desc-bottom"></div>

						</div>
					</div>
				</form>
				<p />
				<!-- submit 버튼은 모든 탭 메뉴에 공통 적용, home.js에서 ajax사용하여 처리 -->
				<button class="btn-submit" type="button">Submit Accommodation</button>
			</div>
		</div>
	</div>

	<%@ include file="../common/bottom.jsp"%>

</body>
</html>