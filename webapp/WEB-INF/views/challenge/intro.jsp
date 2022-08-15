<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
<title>도전중인챌린지</title>



<!-- css -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/fonts/font-awesome.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/common.css">

<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/readFormCSS.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/Simple-Slider-Simple-Slider.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/icon-star-empty.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery.tablesorter/2.31.2/css/theme.bootstrap_4.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/6.4.8/swiper-bundle.min.css">

<!-- Full Calender CSS -->

<link href='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/main.min.css' rel='stylesheet' />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/fullCalendar.css">

<!-- js -->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.min.js"></script>

<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/6.4.8/swiper-bundle.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/Simple-Slider.js"></script>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<!-- Full Calendar JS -->
<script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/main.min.js'></script>
<!-- full Calendar 언어 CDN -->
<script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/locales-all.min.js'></script>

</head>



<body>



	<!-- header -->
	<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
	<!-- /header -->



	<main>
		<div class="main-box">
			<div class="row">

				<div id="content" class="col-9">

					<div id="read-main">
						<div id="read-header-box">
							<h2 class="read-header">
								매일 10페이지 책 읽기<br>2022-08-06~2022-08-27<br>
							</h2>

							<i class="fa fa-star fa-2x i-float"></i> <i class="fa fa-star fa-star-o fa-2x i-float"></i>
						</div>

						<div id="read-content">
							<div id="read-tab">
								<ul class="nav nav-tabs" role="tablist">
									<li class="nav-item read-tab" role="presentation"><a class="nav-link active" role="tab" href="${pageContext.request.contextPath}/challenge/intro">소개글</a></li>
									<li class="nav-item read-tab" role="presentation"><a class="nav-link" role="tab" href="${pageContext.request.contextPath}/challenge/certify">인증하기</a></li>
									<li class="nav-item read-tab" role="presentation"><a class="nav-link" role="tab" href="${pageContext.request.contextPath}/challenge/community">커뮤니티</a></li>
									<li class="nav-item read-tab" role="presentation"><a class="nav-link" role="tab" href="${pageContext.request.contextPath}/challenge/review">후기글</a></li>
								</ul>
								<div class="tab-content">
									<div id="introduce-wrap">
										<div>
											<div class="float-l">
												<img class="picture-size" src="${pageContext.request.contextPath}/assets/img/bg-navbar-dropdown-themes.png">
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
													<form method="post" action="${pageContext.request.contextPath}/challenge/joinchallenge">
														<table class="table">
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
																	<td class="font-12 table-none"><select name="payment">
																			<option value="0" selected="selected">금액설정</option>
																			<option value="10,000">10,000</option>
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
																	<td id="enter-challenge-cell" class="type-center" colspan="2"><button id="btnSubmit" class="font-12" type="submit">챌린지 참여하기</button></td>
																</tr>
															</tbody>
														</table>
													</form>
													<!-- //form -->
												</div>
											</div>
										</div>
										<div id="intro-detail">
											<div class="back-color">
												<p class="fw-bold">소개글</p>
											</div>
											<p id="intro-content" class="font-12">매일 책 10페이지씩 읽고 인증하시면 됩니다. 인증은 오전 9시부터 10시까지만 가능하며 책의 표지와 첫페이지와 끝페이지를 찍어서 올리시면 됩니다. 블라블라~</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div id="rside" class="col-3">
					<div id="challenge-recommand">
						<div>
							<p>현재 인기의 챌린지</p>
							<ul class="list-inline text-center">
								<li class="list-inline-item">
									<div class="simple-slider">
										<div class="swiper-container">
											<div class="swiper-wrapper">
												<div class="swiper-slide"></div>
												<div class="swiper-slide">
													<a href="#"> <img src="${pageContext.request.contextPath}/assets/img/logo.png">
													</a>
												</div>
												<div class="swiper-slide"></div>
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
									<div class=" simple-slider">
										<div class=" swiper-container">
											<div class=" swiper-wrapper">
												<div class=" swiper-slide"></div>
												<div class=" swiper-slide">
													<a href="#"> <img src="${pageContext.request.contextPath}/assets/img/logo.png">
													</a>
												</div>
												<div class=" swiper-slide"></div>
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
									<div class=" simple-slider">
										<div class=" swiper-container">
											<div class=" swiper-wrapper">
												<div class=" swiper-slide">
													<a href="#"> <img src="${pageContext.request.contextPath}/assets/img/logo.png">
													</a>
												</div>
												<div class=" swiper-slide"></div>
												<div class=" swiper-slide"></div>
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



	<!-- footer -->
	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
	<!-- /footer -->



</body>

<script type="text/javascript">

	$(document).ready(function(){
		intro();
	})
	
	function intro(){
		$.ajax({
			
			url : "${pageContext.request.contextPath }/challenge/getIntro",
			type : "post",
			contentType : "application/json",
			data : JSON.stringify(challengeNo),

			dataType : "json",
			success : function(result) {
					render(guestList[i]); //vo --> 화면에 그린다
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}

		});
	}

</script>

</html>