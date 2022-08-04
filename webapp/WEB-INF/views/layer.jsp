<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
<title>검색결과</title>

<!-- css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/fonts/font-awesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/common.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/jquery.tablesorter/2.31.2/css/theme.bootstrap_4.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/6.4.8/swiper-bundle.min.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/Dropdown-Login-with-Social-Logins-bootstrap-social.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/readFormCSS.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/Simple-Slider-Simple-Slider.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/icon-star-empty.css">



<!-- js -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.min.js"></script>

<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/6.4.8/swiper-bundle.min.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/js/Simple-Slider.js"></script>

</head>



<body>
	<header>
		<div class="header-box">
			<div class="header-top">
				<div class="row">
					<div id="logbox" class="col-2">
						<h1>나대나</h1>
						<a href="#"> <img class="logo-img"
							src="../../assets/img/logo.png">
						</a>
					</div>
					<form id="searchbox" class="col-8 text-center" action=""
						method="get">
						<input id="text-search" type="text" class="">
						<button id="btn-search" type="submit">
							<i class="fa fa-search"></i>
						</button>
					</form>
					<div id="userbox" class="col-2 text-end">
						<a id="btn-login" class="btn btn-light btn-sm" href="#">로그인</a> <a
							id="btn-join" class="btn btn-light btn-sm" href="#">회원가입</a>
					</div>
				</div>
				<!-- //row -->

			</div>
			<!-- //header-top -->

			<nav id="navbox" class="row">
				<ul class="nav col-10">
					<li class="nav-item"><a id="text-cate" href="#"
						class="btn dropdown-toggle" data-bs-toggle="dropdown"
						aria-expanded="false">전체카테고리</a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="#">구분1</a></li>
							<li><a class="dropdown-item" href="#">구분2</a></li>
							<li><a class="dropdown-item" href="#">구분3</a></li>
							<li><a class="dropdown-item" href="#">구분4</a></li>
						</ul></li>
					<li class="nav-item"><a href="#">챌린지</a></li>
					<li class="nav-item"><a href="#">이벤트</a></li>
					<li class="nav-item"><a href="#">포인트몰</a></li>
				</ul>

				<div id="btnbox" class="col-2">
					<a id="btn-makeChallenge" class="btn btn-danger btn-lg pull-right"
						href="#">챌린지 개설하기</a>
				</div>
			</nav>
			<!-- nav -->
		</div>
		<!-- //header-box -->

	</header>


	<main>
		<div class="main-box">
			<div class="row">

				<div id="content" class="col-10">

					<div id="read-main">
						<div>
							<h2 id="read-header">
								<i class="fa fa-star fa-star-o i-float"></i>매일 10페이지 책 읽기<i
									class="fa fa-star i-float"></i><br>2022-08-06~2022-08-27<br>
							</h2>
						</div>
						<div id="read-content">
							<div id="read-tab">
								<ul class="nav nav-tabs" role="tablist">
									<li class="nav-item" role="presentation"><a
										class="nav-link read-tab" role="tab" data-bs-toggle="tab"
										href="#tab-1">소개글</a></li>
									<li class="nav-item" role="presentation"><a
										class="nav-link active read-tab" role="tab"
										data-bs-toggle="tab" href="#tab-2">인증하기</a></li>
									<li class="nav-item" role="presentation"><a
										class="nav-link read-tab" role="tab" data-bs-toggle="tab"
										href="#tab-3">커뮤니티</a></li>
									<li class="nav-item" role="presentation"><a
										class="nav-link read-tab" role="tab" data-bs-toggle="tab"
										href="#tab-4">후기글</a></li>
								</ul>
								<div class="tab-content">
									<div class="tab-pane" role="tabpanel" id="tab-1">
										<div id="introduce-wrap">
											<div>
												<div class="float-l">
													<img class="picture-size"
														src="assets/img/bg-navbar-dropdown-themes.png">
													<div>
														<div>
															<p class="font-12 fw-bold">카테고리 : 독서</p>
														</div>
														<ul class="list-inline font-12">
															<li class="list-inline-item"><a href="#">#매일10페이지</a></li>
															<li class="list-inline-item"><a href="#">#꾸준히</a></li>
															<li class="list-inline-item"><a href="#">#독후감</a></li>
															<li class="list-inline-item"><a href="#">#쉽다쉬워</a></li>
														</ul>
													</div>
												</div>
												<div class="content-introduce">
													<div class="table-responsive" id="table-writeform"
														style="border-style: none; border-color: rgb(255, 255, 255); border-top-color: rgb(33,; border-right-color: 37,; border-bottom-style: none; border-bottom-color: 41); border-left-color: 37,;">
														<table class="table">
															<thead
																style="border-style: none; border-color: var(- -bs-table-hover-bg); border-bottom-style: none; border-bottom-color: rgb(255, 255, 255);">
																<tr style="border-style: none;"></tr>
															</thead>
															<tbody style="border-style: none;">
																<tr style="border-style: none;">
																	<td class="write-table-label">모집기간</td>
																	<td class="font-12">
																		<p>2022-08-01 ~ 2022-08-06 (5일)</p>
																	</td>
																</tr>
																<tr style="border-style: none; height: 20px;">
																	<td class="write-table-label">인증횟수</td>
																	<td class="font-12">
																		<p>주 7회, 1일 3회</p>
																	</td>
																</tr>
																<tr style="border-style: none; height: 20px;">
																	<td class="write-table-label">인증방법</td>
																	<td class="font-12">
																		<p>
																			책읽기 시작한 페이지 업로드(09:00)~(10:00)<br>
																		</p>
																		<p>
																			책읽기 마지막 페이지 업로드(09:00)~(10:00)<br>
																		</p>
																		<p>
																			책 표지 사진 업로드(09:00)~(10:00)<br>
																		</p>
																	</td>
																</tr>
																<tr style="border-style: none; height: 20px;">
																	<td class="write-table-label">난이도</td>
																	<td class="font-12">
																		<p>상</p>
																	</td>
																</tr>
																<tr style="border-style: none; height: 20px;">
																	<td class="write-table-label">참가비용범위</td>
																	<td class="font-12">
																		<p>10,000 ~ 100,000</p>
																	</td>
																</tr>
																<tr style="border-style: none; height: 20px;">
																	<td class="write-table-label">참가비용</td>
																	<td class="font-12 table-none"><select>
																			<option value="10,000" selected="">10,000</option>
																			<option value="20,000">20,000</option>
																			<option value="30,000">30,000</option>
																			<option value="40,000">40,000</option>
																			<option value="50,000">50,000</option>
																			<option value="60,000">60,000</option>
																			<option value="70,000">70,000</option>
																			<option value="80,000">80,000</option>
																			<option value="90,000">90,000</option>
																			<option value="100,000">100,000</option>
																	</select>&nbsp;원</td>
																</tr>
																<tr style="border-style: none;">
																	<td id="enter-challenge-cell" class="type-center"
																		colspan="2"><button class="font-12" type="submit">챌린지
																			참여하기</button></td>
																</tr>
															</tbody>
														</table>
													</div>
												</div>
											</div>
											<div id="intro-detail">
												<p class="bold-underline">소개글</p>
												<p class="font-12">매일 책 10페이지씩 읽고 인증하시면 됩니다. 인증은 오전 9시부터
													10시까지만 가능하며 책의 표지와 첫페이지와 끝페이지를 찍어서 올리시면 됩니다. 블라블라~</p>
											</div>
										</div>
									</div>
									<div class="tab-pane active" role="tabpanel" id="tab-2">
										<div id="certify-wrap">
											<div id="certify-main">
												<div class="float-l">
													<div>
														<div>
															<img class="calender-size" src="assets/img/캘린더.png">
															<p style="font-size: 9px;">Fullcalender 사용해서 달력 연동하기</p>
														</div>
													</div>
													<div class="text-center">
														<div class="certify-graph-box">
															<p class="font-14">전체 챌린지 달성률</p>
															<div class="progress-bar">
																<div class="progress-all">
																	<p>72%</p>
																</div>
															</div>
														</div>
														<div class="certify-graph-box">
															<p class="font-14">나의 챌린지 달성률</p>
															<div class="progress-bar">
																<div class="progress-mine">
																	<p>82%</p>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="content-introduce">
													<p class="font-20 text-center bold-underline">인증업로드</p>
													<div class="table-responsive table-certify-form">
														<table class="table">
															<thead
																style="border-style: none; border-color: var(- -bs-table-hover-bg); border-bottom-style: none; border-bottom-color: rgb(255, 255, 255);">
																<tr style="border-style: none;"></tr>
															</thead>
															<tbody class="table-none">
																<tr>
																	<td class="certify-label certify-label-none" colspan=""><span
																		style="font-weight: normal !important;">책읽기 시작한
																			페이지 업로드(09:00)~(10:00)</span><br></td>
																</tr>
																<tr style="border-style: none; height: 20px;">
																	<td class="certify-label" colspan=""><input
																		type="file"></td>
																</tr>
																<tr style="border-style: none; height: 20px;">
																	<td class="certify-label certify-label-none" colspan=""><span
																		style="font-weight: normal !important;">책읽기 마지막
																			페이지 업로드(09:00)~(10:00)</span><br></td>
																</tr>
																<tr style="border-style: none; height: 20px;">
																	<td class="certify-label" colspan=""><input
																		type="file"><br></td>
																</tr>
																<tr style="border-style: none; height: 20px;">
																	<td class="certify-label certify-label-none" colspan=""><span
																		style="font-weight: normal !important;">책 표지 사진
																			업로드(09:00)~(10:00)</span><br></td>
																</tr>
																<tr style="border-style: none; height: 20px;">
																	<td class="certify-label certify-label-none" colspan=""><input
																		type="file"></td>
																</tr>
																<tr>
																	<td
																		class="certify-label certify-label-none text-center"
																		colspan=""><button class="make-challenge certify"
																			type="submit">인증하기</button></td>
																</tr>
															</tbody>
														</table>
													</div>
												</div>
											</div>
											<div class="certify-board">
												<div class="certify-board-header">
													<p class="certify-header">인증게시판</p>
													<ul class="list-inline" id="certify-all-mine">
														<li class="list-inline-item"><a href="#">전체</a></li>
														<li class="list-inline-item"><a href="#">내인증글</a></li>
													</ul>
												</div>
												<div id="certify-list">
													<ul class="list-inline text-center">
														<li class="list-inline-item">
															<div class="simple-slider">
																<div class="swiper-container">
																	<div class="swiper-wrapper">
																		<div class="swiper-slide">
																			<a href="#"><img class="certify-img-size"
																				src="assets/img/bg-navbar-dropdown-themes.png"></a>
																		</div>
																		<div class="swiper-slide">
																			<img class="certify-img-size"
																				src="assets/img/즐겨찾기%20별2.png">
																		</div>
																		<div class="swiper-slide">
																			<img class="certify-img-size"
																				src="assets/img/즐겨찾기%20별2.png">
																		</div>
																	</div>
																	<div class="swiper-pagination"></div>
																	<div class="swiper-button-prev"></div>
																	<div class="swiper-button-next"></div>
																</div>
															</div>
															<div class="certify-list-info">
																<div>
																	<div>
																		<a class="report" href="#">신고</a>
																	</div>
																	<p class="upload-date">업로드일 : 2022-08-01</p>
																	<p class="nickname">피자만두</p>
																</div>
															</div>
														</li>
														<li class="list-inline-item">
															<div class="simple-slider">
																<div class="swiper-container">
																	<div class="swiper-wrapper">
																		<div class="swiper-slide">
																			<a href="#"><img class="certify-img-size"
																				src="assets/img/bg-navbar-dropdown-themes.png"></a>
																		</div>
																		<div class="swiper-slide">
																			<img class="certify-img-size"
																				src="assets/img/즐겨찾기%20별2.png">
																		</div>
																		<div class="swiper-slide">
																			<img class="certify-img-size"
																				src="assets/img/즐겨찾기%20별2.png">
																		</div>
																	</div>
																	<div class="swiper-pagination"></div>
																	<div class="swiper-button-prev"></div>
																	<div class="swiper-button-next"></div>
																</div>
															</div>
															<div class="certify-list-info">
																<div>
																	<div>
																		<a class="report" href="#">신고</a>
																	</div>
																	<p class="upload-date">업로드일 : 2022-08-01</p>
																	<p class="nickname">피자만두</p>
																</div>
															</div>
														</li>
														<li class="list-inline-item">
															<div class="simple-slider">
																<div class="swiper-container">
																	<div class="swiper-wrapper">
																		<div class="swiper-slide">
																			<a href="#"><img class="certify-img-size"
																				src="assets/img/bg-navbar-dropdown-themes.png"></a>
																		</div>
																		<div class="swiper-slide">
																			<img class="certify-img-size"
																				src="assets/img/즐겨찾기%20별2.png">
																		</div>
																		<div class="swiper-slide">
																			<img class="certify-img-size"
																				src="assets/img/즐겨찾기%20별2.png">
																		</div>
																	</div>
																	<div class="swiper-pagination"></div>
																	<div class="swiper-button-prev"></div>
																	<div class="swiper-button-next"></div>
																</div>
															</div>
															<div class="certify-list-info">
																<div>
																	<div>
																		<a class="report" href="#">신고</a>
																	</div>
																	<p class="upload-date">업로드일 : 2022-08-01</p>
																	<p class="nickname">피자만두</p>
																</div>
															</div>
														</li>
														<li class="list-inline-item">
															<div class="simple-slider">
																<div class="swiper-container">
																	<div class="swiper-wrapper">
																		<div class="swiper-slide">
																			<a href="#"><img class="certify-img-size"
																				src="assets/img/bg-navbar-dropdown-themes.png"></a>
																		</div>
																		<div class="swiper-slide">
																			<img class="certify-img-size"
																				src="assets/img/즐겨찾기%20별2.png">
																		</div>
																		<div class="swiper-slide">
																			<img class="certify-img-size"
																				src="assets/img/즐겨찾기%20별2.png">
																		</div>
																	</div>
																	<div class="swiper-pagination"></div>
																	<div class="swiper-button-prev"></div>
																	<div class="swiper-button-next"></div>
																</div>
															</div>
															<div class="certify-list-info">
																<div>
																	<div>
																		<a class="report" href="#">신고</a>
																	</div>
																	<p class="upload-date">업로드일 : 2022-08-01</p>
																	<p class="nickname">피자만두</p>
																</div>
															</div>
														</li>
														<li class="list-inline-item">
															<div class="simple-slider">
																<div class="swiper-container">
																	<div class="swiper-wrapper">
																		<div class="swiper-slide">
																			<a href="#"><img class="certify-img-size"
																				src="assets/img/bg-navbar-dropdown-themes.png"></a>
																		</div>
																		<div class="swiper-slide">
																			<img class="certify-img-size"
																				src="assets/img/즐겨찾기%20별2.png">
																		</div>
																		<div class="swiper-slide">
																			<img class="certify-img-size"
																				src="assets/img/즐겨찾기%20별2.png">
																		</div>
																	</div>
																	<div class="swiper-pagination"></div>
																	<div class="swiper-button-prev"></div>
																	<div class="swiper-button-next"></div>
																</div>
															</div>
															<div class="certify-list-info">
																<div>
																	<div>
																		<a class="report" href="#">신고</a>
																	</div>
																	<p class="upload-date">업로드일 : 2022-08-01</p>
																	<p class="nickname">피자만두</p>
																</div>
															</div>
														</li>
														<li class="list-inline-item">
															<div class="simple-slider">
																<div class="swiper-container">
																	<div class="swiper-wrapper">
																		<div class="swiper-slide">
																			<a href="#"><img class="certify-img-size"
																				src="assets/img/bg-navbar-dropdown-themes.png"></a>
																		</div>
																		<div class="swiper-slide">
																			<img class="certify-img-size"
																				src="assets/img/즐겨찾기%20별2.png">
																		</div>
																		<div class="swiper-slide">
																			<img class="certify-img-size"
																				src="assets/img/즐겨찾기%20별2.png">
																		</div>
																	</div>
																	<div class="swiper-pagination"></div>
																	<div class="swiper-button-prev"></div>
																	<div class="swiper-button-next"></div>
																</div>
															</div>
															<div class="certify-list-info">
																<div>
																	<div>
																		<a class="report" href="#">신고</a>
																	</div>
																	<p class="upload-date">업로드일 : 2022-08-01</p>
																	<p class="nickname">피자만두</p>
																</div>
															</div>
														</li>
														<li class="list-inline-item">
															<div class="simple-slider">
																<div class="swiper-container">
																	<div class="swiper-wrapper">
																		<div class="swiper-slide">
																			<a href="#"><img class="certify-img-size"
																				src="assets/img/bg-navbar-dropdown-themes.png"></a>
																		</div>
																		<div class="swiper-slide">
																			<img class="certify-img-size"
																				src="assets/img/즐겨찾기%20별2.png">
																		</div>
																		<div class="swiper-slide">
																			<img class="certify-img-size"
																				src="assets/img/즐겨찾기%20별2.png">
																		</div>
																	</div>
																	<div class="swiper-pagination"></div>
																	<div class="swiper-button-prev"></div>
																	<div class="swiper-button-next"></div>
																</div>
															</div>
															<div class="certify-list-info">
																<div>
																	<div>
																		<a class="report" href="#">신고</a>
																	</div>
																	<p class="upload-date">업로드일 : 2022-08-01</p>
																	<p class="nickname">피자만두</p>
																</div>
															</div>
														</li>
														<li class="list-inline-item">
															<div class="simple-slider">
																<div class="swiper-container">
																	<div class="swiper-wrapper">
																		<div class="swiper-slide">
																			<a href="#"><img class="certify-img-size"
																				src="assets/img/bg-navbar-dropdown-themes.png"></a>
																		</div>
																		<div class="swiper-slide">
																			<img class="certify-img-size"
																				src="assets/img/즐겨찾기%20별2.png">
																		</div>
																		<div class="swiper-slide">
																			<img class="certify-img-size"
																				src="assets/img/즐겨찾기%20별2.png">
																		</div>
																	</div>
																	<div class="swiper-pagination"></div>
																	<div class="swiper-button-prev"></div>
																	<div class="swiper-button-next"></div>
																</div>
															</div>
															<div class="certify-list-info">
																<div>
																	<div>
																		<a class="report" href="#">신고</a>
																	</div>
																	<p class="upload-date">업로드일 : 2022-08-01</p>
																	<p class="nickname">피자만두</p>
																</div>
															</div>
														</li>
														<li class="list-inline-item">
															<div class="simple-slider">
																<div class="swiper-container">
																	<div class="swiper-wrapper">
																		<div class="swiper-slide">
																			<a href="#"><img class="certify-img-size"
																				src="assets/img/bg-navbar-dropdown-themes.png"></a>
																		</div>
																		<div class="swiper-slide">
																			<img class="certify-img-size"
																				src="assets/img/즐겨찾기%20별2.png">
																		</div>
																		<div class="swiper-slide">
																			<img class="certify-img-size"
																				src="assets/img/즐겨찾기%20별2.png">
																		</div>
																	</div>
																	<div class="swiper-pagination"></div>
																	<div class="swiper-button-prev"></div>
																	<div class="swiper-button-next"></div>
																</div>
															</div>
															<div class="certify-list-info">
																<div>
																	<div>
																		<a class="report" href="#">신고</a>
																	</div>
																	<p class="upload-date">업로드일 : 2022-08-01</p>
																	<p class="nickname">피자만두</p>
																</div>
															</div>
														</li>
														<li class="list-inline-item">
															<div class="simple-slider">
																<div class="swiper-container">
																	<div class="swiper-wrapper">
																		<div class="swiper-slide">
																			<a href="#"><img class="certify-img-size"
																				src="assets/img/bg-navbar-dropdown-themes.png"></a>
																		</div>
																		<div class="swiper-slide">
																			<img class="certify-img-size"
																				src="assets/img/즐겨찾기%20별2.png">
																		</div>
																		<div class="swiper-slide">
																			<img class="certify-img-size"
																				src="assets/img/즐겨찾기%20별2.png">
																		</div>
																	</div>
																	<div class="swiper-pagination"></div>
																	<div class="swiper-button-prev"></div>
																	<div class="swiper-button-next"></div>
																</div>
															</div>
															<div class="certify-list-info">
																<div>
																	<div>
																		<a class="report" href="#">신고</a>
																	</div>
																	<p class="upload-date">업로드일 : 2022-08-01</p>
																	<p class="nickname">피자만두</p>
																</div>
															</div>
														</li>
														<li class="list-inline-item">
															<div class="simple-slider">
																<div class="swiper-container">
																	<div class="swiper-wrapper">
																		<div class="swiper-slide">
																			<a href="#"><img class="certify-img-size"
																				src="assets/img/bg-navbar-dropdown-themes.png"></a>
																		</div>
																		<div class="swiper-slide">
																			<img class="certify-img-size"
																				src="assets/img/즐겨찾기%20별2.png">
																		</div>
																		<div class="swiper-slide">
																			<img class="certify-img-size"
																				src="assets/img/즐겨찾기%20별2.png">
																		</div>
																	</div>
																	<div class="swiper-pagination"></div>
																	<div class="swiper-button-prev"></div>
																	<div class="swiper-button-next"></div>
																</div>
															</div>
															<div class="certify-list-info">
																<div>
																	<div>
																		<a class="report" href="#">신고</a>
																	</div>
																	<p class="upload-date">업로드일 : 2022-08-01</p>
																	<p class="nickname">피자만두</p>
																</div>
															</div>
														</li>
														<li class="list-inline-item">
															<div class="simple-slider">
																<div class="swiper-container">
																	<div class="swiper-wrapper">
																		<div class="swiper-slide">
																			<a href="#"><img class="certify-img-size"
																				src="assets/img/bg-navbar-dropdown-themes.png"></a>
																		</div>
																		<div class="swiper-slide">
																			<img class="certify-img-size"
																				src="assets/img/즐겨찾기%20별2.png">
																		</div>
																		<div class="swiper-slide">
																			<img class="certify-img-size"
																				src="assets/img/즐겨찾기%20별2.png">
																		</div>
																	</div>
																	<div class="swiper-pagination"></div>
																	<div class="swiper-button-prev"></div>
																	<div class="swiper-button-next"></div>
																</div>
															</div>
															<div class="certify-list-info">
																<div>
																	<div>
																		<a class="report" href="#">신고</a>
																	</div>
																	<p class="upload-date">업로드일 : 2022-08-01</p>
																	<p class="nickname">피자만두</p>
																</div>
															</div>
														</li>
														<li class="list-inline-item">
															<div class="simple-slider">
																<div class="swiper-container">
																	<div class="swiper-wrapper">
																		<div class="swiper-slide">
																			<a href="#"><img class="certify-img-size"
																				src="assets/img/bg-navbar-dropdown-themes.png"></a>
																		</div>
																		<div class="swiper-slide">
																			<img class="certify-img-size"
																				src="assets/img/즐겨찾기%20별2.png">
																		</div>
																		<div class="swiper-slide">
																			<img class="certify-img-size"
																				src="assets/img/즐겨찾기%20별2.png">
																		</div>
																	</div>
																	<div class="swiper-pagination"></div>
																	<div class="swiper-button-prev"></div>
																	<div class="swiper-button-next"></div>
																</div>
															</div>
															<div class="certify-list-info">
																<div>
																	<div>
																		<a class="report" href="#">신고</a>
																	</div>
																	<p class="upload-date">업로드일 : 2022-08-01</p>
																	<p class="nickname">피자만두</p>
																</div>
															</div>
														</li>
														<li class="list-inline-item">
															<div class="simple-slider">
																<div class="swiper-container">
																	<div class="swiper-wrapper">
																		<div class="swiper-slide">
																			<a href="#"><img class="certify-img-size"
																				src="assets/img/bg-navbar-dropdown-themes.png"></a>
																		</div>
																		<div class="swiper-slide">
																			<img class="certify-img-size"
																				src="assets/img/즐겨찾기%20별2.png">
																		</div>
																		<div class="swiper-slide">
																			<img class="certify-img-size"
																				src="assets/img/즐겨찾기%20별2.png">
																		</div>
																	</div>
																	<div class="swiper-pagination"></div>
																	<div class="swiper-button-prev"></div>
																	<div class="swiper-button-next"></div>
																</div>
															</div>
															<div class="certify-list-info">
																<div>
																	<div>
																		<a class="report" href="#">신고</a>
																	</div>
																	<p class="upload-date">업로드일 : 2022-08-01</p>
																	<p class="nickname">피자만두</p>
																</div>
															</div>
														</li>
														<li class="list-inline-item">
															<div class="simple-slider">
																<div class="swiper-container">
																	<div class="swiper-wrapper">
																		<div class="swiper-slide">
																			<a href="#"><img class="certify-img-size"
																				src="assets/img/bg-navbar-dropdown-themes.png"></a>
																		</div>
																		<div class="swiper-slide">
																			<img class="certify-img-size"
																				src="assets/img/즐겨찾기%20별2.png">
																		</div>
																		<div class="swiper-slide">
																			<img class="certify-img-size"
																				src="assets/img/즐겨찾기%20별2.png">
																		</div>
																	</div>
																	<div class="swiper-pagination"></div>
																	<div class="swiper-button-prev"></div>
																	<div class="swiper-button-next"></div>
																</div>
															</div>
															<div class="certify-list-info">
																<div>
																	<div>
																		<a class="report" href="#">신고</a>
																	</div>
																	<p class="upload-date">업로드일 : 2022-08-01</p>
																	<p class="nickname">피자만두</p>
																</div>
															</div>
														</li>
														<li class="list-inline-item">
															<div class="simple-slider">
																<div class="swiper-container">
																	<div class="swiper-wrapper">
																		<div class="swiper-slide">
																			<a href="#"><img class="certify-img-size"
																				src="assets/img/bg-navbar-dropdown-themes.png"></a>
																		</div>
																		<div class="swiper-slide">
																			<img class="certify-img-size"
																				src="assets/img/즐겨찾기%20별2.png">
																		</div>
																		<div class="swiper-slide">
																			<img class="certify-img-size"
																				src="assets/img/즐겨찾기%20별2.png">
																		</div>
																	</div>
																	<div class="swiper-pagination"></div>
																	<div class="swiper-button-prev"></div>
																	<div class="swiper-button-next"></div>
																</div>
															</div>
															<div class="certify-list-info">
																<div>
																	<div>
																		<a class="report" href="#">신고</a>
																	</div>
																	<p class="upload-date">업로드일 : 2022-08-01</p>
																	<p class="nickname">피자만두</p>
																</div>
															</div>
														</li>
													</ul>
													<div class="paging-box">
														<nav>
															<ul class="pagination pagination-sm">
																<li class="page-item"><a class="page-link"
																	aria-label="Previous" href="#"><span
																		aria-hidden="true">«</span></a></li>
																<li class="page-item"><a class="page-link" href="#">1</a></li>
																<li class="page-item"><a class="page-link" href="#">2</a></li>
																<li class="page-item"><a class="page-link" href="#">3</a></li>
																<li class="page-item"><a class="page-link" href="#">4</a></li>
																<li class="page-item"><a class="page-link" href="#">5</a></li>
																<li class="page-item"><a class="page-link"
																	aria-label="Next" href="#"><span aria-hidden="true">»</span></a></li>
															</ul>
														</nav>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="tab-pane" role="tabpanel" id="tab-3">
										<div id="read-board">
											<div>
												<div class="certify-board-header">
													<p class="certify-header">게시판</p>
												</div>
												<div>
													<div>
														<select>
															<optgroup label="카테고리">
																<option value="12" selected="">팁</option>
																<option value="13">응원</option>
																<option value="14">질문</option>
															</optgroup>
														</select>
														<div class="search-container search-board">
															<input class="search-input board-search-box" type="text"
																name="search-bar" placeholder="검색어를 입력하세요" />
															<button
																class="btn btn-light search-btn board-search-button"
																type="button">
																<i class="fa fa-search"></i>
															</button>
														</div>
														<div id="read-board-main">
															<div class="table-responsive font-14">
																<table class="table">
																	<thead>
																		<tr>
																			<th class="board-category-size">카테고리</th>
																			<th class="title-size">제목</th>
																			<th class="writer-size">작성자</th>
																			<th class="board-hit-size">조회수</th>
																			<th class="board-upload-size">시간</th>
																		</tr>
																	</thead>
																	<tbody>
																		<tr>
																			<td>팁</td>
																			<td><a href="#">책 빨리 읽는법</a></td>
																			<td>카드슬래쉬</td>
																			<td>2222</td>
																			<td>2022-08-30</td>
																		</tr>
																		<tr>
																			<td>응원</td>
																			<td><a href="#">책 잘 못 읽는 분들 와주세요 (4444)</a></td>
																			<td>보람둥이</td>
																			<td>423</td>
																			<td>2022-08-28</td>
																		</tr>
																		<tr>
																			<td>팁</td>
																			<td><a href="#">책 빨리 읽는법</a></td>
																			<td>카드슬래쉬</td>
																			<td>2222</td>
																			<td>2022-08-30</td>
																		</tr>
																		<tr>
																			<td>팁</td>
																			<td><a href="#">책 빨리 읽는법</a></td>
																			<td>카드슬래쉬</td>
																			<td>2222</td>
																			<td>2022-08-30</td>
																		</tr>
																		<tr>
																			<td>팁</td>
																			<td><a href="#">책 빨리 읽는법</a></td>
																			<td>카드슬래쉬</td>
																			<td>2222</td>
																			<td>2022-08-30</td>
																		</tr>
																		<tr>
																			<td>팁</td>
																			<td><a href="#">책 빨리 읽는법</a></td>
																			<td>카드슬래쉬</td>
																			<td>2222</td>
																			<td>2022-08-30</td>
																		</tr>
																		<tr>
																			<td>팁</td>
																			<td><a href="#">책 빨리 읽는법</a></td>
																			<td>카드슬래쉬</td>
																			<td>2222</td>
																			<td>2022-08-30</td>
																		</tr>
																		<tr>
																			<td>팁</td>
																			<td><a href="#">책 빨리 읽는법</a></td>
																			<td>카드슬래쉬</td>
																			<td>2222</td>
																			<td>2022-08-30</td>
																		</tr>
																		<tr>
																			<td>질문</td>
																			<td><a href="#">책 12페이지 읽어도 되요? (3)</a></td>
																			<td>마니아르</td>
																			<td>241</td>
																			<td>2022-08-30</td>
																		</tr>
																		<tr>
																			<td>팁</td>
																			<td><a href="#">책 빨리 읽는법</a></td>
																			<td>카드슬래쉬</td>
																			<td>2222</td>
																			<td>2022-08-30</td>
																		</tr>
																	</tbody>
																</table>
															</div>
														</div>
													</div>
													<div class="paging-box">
														<nav>
															<ul class="pagination pagination-sm">
																<li class="page-item"><a class="page-link"
																	aria-label="Previous" href="#"><span
																		aria-hidden="true">«</span></a></li>
																<li class="page-item"><a class="page-link" href="#">1</a></li>
																<li class="page-item"><a class="page-link" href="#">2</a></li>
																<li class="page-item"><a class="page-link" href="#">3</a></li>
																<li class="page-item"><a class="page-link" href="#">4</a></li>
																<li class="page-item"><a class="page-link" href="#">5</a></li>
																<li class="page-item"><a class="page-link"
																	aria-label="Next" href="#"><span aria-hidden="true">»</span></a></li>
															</ul>
														</nav>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="tab-pane" role="tabpanel" id="tab-4">
										<div id="afterComment-wrap">
											<div>
												<ul class="list-inline">
													<li class="list-inline-item">
														<div class="img-size">
															<a href="#"><img class="img-size"
																src="assets/img/즐겨찾기%20별2.png"></a>
														</div>
														<div class="certify-list-info">
															<div>
																<div>
																	<a class="report" href="#">신고</a>
																</div>
																<p class="review-uploader">피자만두</p>
																<p class="review-comment">후기 : 피자만두는 너무 맛있었다</p>
															</div>
														</div>
													</li>
													<li class="list-inline-item">
														<div class="img-size">
															<a href="#"><img class="img-size"
																src="assets/img/즐겨찾기%20별2.png"></a>
														</div>
														<div class="certify-list-info">
															<div>
																<div>
																	<a class="report" href="#">신고</a>
																</div>
																<p class="review-uploader">피자만두</p>
																<p class="review-comment">후기 : 피자만두는 너무 맛있었다</p>
															</div>
														</div>
													</li>
													<li class="list-inline-item">
														<div class="img-size">
															<a href="#"><img class="img-size"
																src="assets/img/즐겨찾기%20별2.png"></a>
														</div>
														<div class="certify-list-info">
															<div>
																<div>
																	<a class="report" href="#">신고</a>
																</div>
																<p class="review-uploader">피자만두</p>
																<p class="review-comment">후기 : 피자만두는 너무 맛있었다</p>
															</div>
														</div>
													</li>
													<li class="list-inline-item">
														<div class="img-size">
															<a href="#"><img class="img-size"
																src="assets/img/즐겨찾기%20별2.png"></a>
														</div>
														<div class="certify-list-info">
															<div>
																<div>
																	<a class="report" href="#">신고</a>
																</div>
																<p class="review-uploader">피자만두</p>
																<p class="review-comment">후기 : 피자만두는 너무 맛있었다</p>
															</div>
														</div>
													</li>
													<li class="list-inline-item">
														<div class="img-size">
															<a href="#"><img class="img-size"
																src="assets/img/즐겨찾기%20별2.png"></a>
														</div>
														<div class="certify-list-info">
															<div>
																<div>
																	<a class="report" href="#">신고</a>
																</div>
																<p class="review-uploader">피자만두</p>
																<p class="review-comment">후기 : 피자만두는 너무 맛있었다</p>
															</div>
														</div>
													</li>
													<li class="list-inline-item">
														<div class="img-size">
															<a href="#"><img class="img-size"
																src="assets/img/즐겨찾기%20별2.png"></a>
														</div>
														<div class="certify-list-info">
															<div>
																<div>
																	<a class="report" href="#">신고</a>
																</div>
																<p class="review-uploader">피자만두</p>
																<p class="review-comment">후기 : 피자만두는 너무 맛있었다</p>
															</div>
														</div>
													</li>
													<li class="list-inline-item">
														<div class="img-size">
															<a href="#"><img class="img-size"
																src="assets/img/즐겨찾기%20별2.png"></a>
														</div>
														<div class="certify-list-info">
															<div>
																<div>
																	<a class="report" href="#">신고</a>
																</div>
																<p class="review-uploader">피자만두</p>
																<p class="review-comment">후기 : 피자만두는 너무 맛있었다</p>
															</div>
														</div>
													</li>
													<li class="list-inline-item">
														<div class="img-size">
															<a href="#"><img class="img-size"
																src="assets/img/즐겨찾기%20별2.png"></a>
														</div>
														<div class="certify-list-info">
															<div>
																<div>
																	<a class="report" href="#">신고</a>
																</div>
																<p class="review-uploader">피자만두</p>
																<p class="review-comment">후기 : 피자만두는 너무 맛있었다</p>
															</div>
														</div>
													</li>
													<li class="list-inline-item">
														<div class="img-size">
															<a href="#"><img class="img-size"
																src="assets/img/즐겨찾기%20별2.png"></a>
														</div>
														<div class="certify-list-info">
															<div>
																<div>
																	<a class="report" href="#">신고</a>
																</div>
																<p class="review-uploader">피자만두</p>
																<p class="review-comment">후기 : 피자만두는 너무 맛있었다</p>
															</div>
														</div>
													</li>
													<li class="list-inline-item">
														<div class="img-size">
															<a href="#"><img class="img-size"
																src="assets/img/즐겨찾기%20별2.png"></a>
														</div>
														<div class="certify-list-info">
															<div>
																<div>
																	<a class="report" href="#">신고</a>
																</div>
																<p class="review-uploader">피자만두</p>
																<p class="review-comment">후기 : 피자만두는 너무 맛있었다</p>
															</div>
														</div>
													</li>
													<li class="list-inline-item">
														<div class="img-size">
															<a href="#"><img class="img-size"
																src="assets/img/즐겨찾기%20별2.png"></a>
														</div>
														<div class="certify-list-info">
															<div>
																<div>
																	<a class="report" href="#">신고</a>
																</div>
																<p class="review-uploader">피자만두</p>
																<p class="review-comment">후기 : 피자만두는 너무 맛있었다</p>
															</div>
														</div>
													</li>
													<li class="list-inline-item">
														<div class="img-size">
															<a href="#"><img class="img-size"
																src="assets/img/즐겨찾기%20별2.png"></a>
														</div>
														<div class="certify-list-info">
															<div>
																<div>
																	<a class="report" href="#">신고</a>
																</div>
																<p class="review-uploader">피자만두</p>
																<p class="review-comment">후기 : 피자만두는 너무 맛있었다</p>
															</div>
														</div>
													</li>
													<li class="list-inline-item">
														<div class="img-size">
															<a href="#"><img class="img-size"
																src="assets/img/즐겨찾기%20별2.png"></a>
														</div>
														<div class="certify-list-info">
															<div>
																<div>
																	<a class="report" href="#">신고</a>
																</div>
																<p class="review-uploader">피자만두</p>
																<p class="review-comment">후기 : 피자만두는 너무 맛있었다</p>
															</div>
														</div>
													</li>
													<li class="list-inline-item">
														<div class="img-size">
															<a href="#"><img class="img-size"
																src="assets/img/즐겨찾기%20별2.png"></a>
														</div>
														<div class="certify-list-info">
															<div>
																<div>
																	<a class="report" href="#">신고</a>
																</div>
																<p class="review-uploader">피자만두</p>
																<p class="review-comment">후기 : 피자만두는 너무 맛있었다</p>
															</div>
														</div>
													</li>
													<li class="list-inline-item">
														<div class="img-size">
															<a href="#"><img class="img-size"
																src="assets/img/즐겨찾기%20별2.png"></a>
														</div>
														<div class="certify-list-info">
															<div>
																<div>
																	<a class="report" href="#">신고</a>
																</div>
																<p class="review-uploader">피자만두</p>
																<p class="review-comment">후기 : 피자만두는 너무 맛있었다</p>
															</div>
														</div>
													</li>
													<li class="list-inline-item">
														<div class="img-size">
															<a href="#"><img class="img-size"
																src="assets/img/즐겨찾기%20별2.png"></a>
														</div>
														<div class="certify-list-info">
															<div>
																<div>
																	<a class="report" href="#">신고</a>
																</div>
																<p class="review-uploader">피자만두</p>
																<p class="review-comment">후기 : 피자만두는 너무 맛있었다</p>
															</div>
														</div>
													</li>
												</ul>
												<div class="paging-box">
													<nav>
														<ul class="pagination pagination-sm">
															<li class="page-item"><a class="page-link"
																aria-label="Previous" href="#"><span
																	aria-hidden="true">«</span></a></li>
															<li class="page-item"><a class="page-link" href="#">1</a></li>
															<li class="page-item"><a class="page-link" href="#">2</a></li>
															<li class="page-item"><a class="page-link" href="#">3</a></li>
															<li class="page-item"><a class="page-link" href="#">4</a></li>
															<li class="page-item"><a class="page-link" href="#">5</a></li>
															<li class="page-item"><a class="page-link"
																aria-label="Next" href="#"><span aria-hidden="true">»</span></a></li>
														</ul>
													</nav>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div id="rside" class="col-2">
					<div id="challenge-recommand">
						<div>
							<p>현재 인기의 챌린지</p>
							<ul class="list-inline text-center">
								<li class="list-inline-item">
									<div class="simple-slider" style="width: 240px; height: 160px;">
										<div class="swiper-container"
											style="width: 240px; height: 160px;">
											<div class="swiper-wrapper"
												style="width: 240px; height: 160px;">
												<div class="recommand-size swiper-slide"></div>
												<div class="recommand-size swiper-slide"></div>
												<div class="recommand-size swiper-slide"></div>
											</div>
											<div class="swiper-pagination"></div>
											<div class="swiper-button-prev"></div>
											<div class="swiper-button-next"></div>
										</div>
									</div>
								</li>
							</ul>
						</div>
						<div>
							<p>같은 태그의 챌린지</p>
							<ul class="list-inline text-center">
								<li class="list-inline-item">
									<div class="simple-slider" style="width: 240px; height: 160px;">
										<div class="swiper-container"
											style="width: 240px; height: 160px;">
											<div class="swiper-wrapper"
												style="width: 240px; height: 160px;">
												<div class="recommand-size swiper-slide"></div>
												<div class="recommand-size swiper-slide"></div>
												<div class="recommand-size swiper-slide"></div>
											</div>
											<div class="swiper-pagination"></div>
											<div class="swiper-button-prev"></div>
											<div class="swiper-button-next"></div>
										</div>
									</div>
								</li>
							</ul>
						</div>
						<div>
							<p>챌린지</p>
							<ul class="list-inline text-center">
								<li class="list-inline-item">
									<div class="simple-slider" style="width: 240px; height: 160px;">
										<div class="swiper-container"
											style="width: 240px; height: 160px;">
											<div class="swiper-wrapper"
												style="width: 240px; height: 160px;">
												<div class="recommand-size swiper-slide"></div>
												<div class="recommand-size swiper-slide"></div>
												<div class="recommand-size swiper-slide"></div>
											</div>
											<div class="swiper-pagination"></div>
											<div class="swiper-button-prev"></div>
											<div class="swiper-button-next"></div>
										</div>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</div>

			</div>

		</div>
	</main>



	<footer>
		<div class="footer-box text-center">
			<p class="footer-title">나대나 팀프로젝트 컴퍼니</p>

			<p class="footer-content">
				회사명 : (주)글로벌 아이티(IT) 인재개발원 사업자등록번호 : 119-99-54433 대표자명 : 정우성<br>
				서울시 관악구 남부순환로 1820,에그엘로우14층 전화번호 : 02-1234-5678 팩스번호 : 02-9876-5432<br>
			<p>
			<p class="footer-copyright">Copyright 2022 (주)글로벌아이티정보기술. ALL
				RIGHTS RESERVED.</p>
		</div>
	</footer>


</body>

</html>