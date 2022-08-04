<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
<title>검색결과</title>

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



<!-- js -->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.min.js"></script>

<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/6.4.8/swiper-bundle.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/Simple-Slider.js"></script>

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
						<div>
							<h2 id="read-header">
								<i class="fa fa-star fa-star-o i-float"></i>매일 10페이지 책 읽기<i class="fa fa-star i-float"></i><br>2022-08-06~2022-08-27<br>
							</h2>
						</div>
						<div id="read-content">
							<div id="read-tab">
								<ul class="nav nav-tabs" role="tablist">
									<li class="nav-item read-tab" role="presentation"><a class="nav-link" role="tab" data-bs-toggle="tab" href="#tab-1">소개글</a></li>
									<li class="nav-item read-tab" role="presentation"><a class="nav-link active" role="tab" data-bs-toggle="tab" href="#tab-2">인증하기</a></li>
									<li class="nav-item read-tab" role="presentation"><a class="nav-link" role="tab" data-bs-toggle="tab" href="#tab-3">커뮤니티</a></li>
									<li class="nav-item read-tab" role="presentation"><a class="nav-link" role="tab" data-bs-toggle="tab" href="#tab-4">후기글</a></li>
								</ul>
								<div class="tab-content">
									<div class="tab-pane" role="tabpanel" id="tab-1">
										<c:import url="/WEB-INF/views/challenge/intro.jsp"></c:import>
									</div>
									<div class="tab-pane active" role="tabpanel" id="tab-2">
										<c:import url="/WEB-INF/views/challenge/certify.jsp"></c:import>
									</div>
									<div class="tab-pane" role="tabpanel" id="tab-3">
										<c:import url="/WEB-INF/views/challenge/community.jsp"></c:import>
									</div>
									<div class="tab-pane" role="tabpanel" id="tab-4">
										<c:import url="/WEB-INF/views/challenge/review.jsp"></c:import>
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
									<div class="simple-slider" style="width: 240px; height: 160px;">
										<div class="swiper-container" style="width: 240px; height: 160px;">
											<div class="swiper-wrapper" style="width: 240px; height: 160px;">
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
										<div class="swiper-container" style="width: 240px; height: 160px;">
											<div class="swiper-wrapper" style="width: 240px; height: 160px;">
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
										<div class="swiper-container" style="width: 240px; height: 160px;">
											<div class="swiper-wrapper" style="width: 240px; height: 160px;">
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



	<!-- footer -->
	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
	<!-- /footer -->

</body>

</html>