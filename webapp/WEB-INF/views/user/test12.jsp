<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
<title>검색결과</title>

<!-- css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/assets/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/assets/fonts/font-awesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/assets/css/common.css">
	<link rel="stylesheet"
	href="${pageContext.request.contextPath }/assets/css/test12.css">

<!-- js -->
<script type="text/javascript"
	src="${pageContext.request.contextPath }/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/assets/bootstrap/js/bootstrap.min.js"></script>
</head>



<body>
	<!-- header -->
	<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
	<!-- //header -->


	<main>
		<div class="main-box">
			<div class="row">

				<!-- header -->
				<c:import url="/WEB-INF/views/includes/asideMyPage.jsp"></c:import>
				<!-- //header -->


				<div id="content" class="col-10">

					<div id="content" class="col-10">
						<h3>업적게시판</h3>

						<div class="container">



							<div class="row">

								<div class="userP">
									<div class="fs-3 fw-bold">
										<div class="name">박찬희</div>
									</div>
									<span>뱃지 : </span>
									<div class="badge">
										<img class="rounded-circle mb-3 mt-2" src="badge/아이유123.jpg"
											width="50" height="50" href="">

									</div>
								</div>
								<div class="userPoint">리워드 : 000</div>
							</div>
							<div class="mb-3 badgebtn">
								<button class="btn btn-primary " type="button">뱃지변경</button>
							</div>
							<div class="mylevel">LV.1</div>



							<div class="row align-items-center no-gutters">
								<div class="col-xxl-11 me-2">
									<div class="fw-bold mb-1">
										<span>레벨2까지 남은 경험치<span>&nbsp;70</span> 
										</span>
									</div>
								</div>
							</div>


							<span>경험치20</span>

							<div class="offset-xxl-0 mb-4 levelbar">

								<div class="progress mb-4">

									<div class="progress-bar " style="width: 30%;"
										aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
										<span>30%</span>
									</div>


								</div>
							</div>
							<div id="navcol-1" class="catg">
								<ul class="navbar-navv">
									<li class="gorytop"><a class="catcor" href="">업적목록</a></li>
									<li class="gorytop"><a class="catcor" href="">완료</a></li>
								</ul>
							</div>
							1회성공하기
							<div class="level1">
								경험치10XP
								<div class="leveldiv">
									획득 보상 <img class="rounded-circle" src="badge/아이유123.jpg"
										width="50" height="50" href="">
								</div>
								<div class="progress mb-4">

									<div class="progress-bar  progress-bar-striped"
										aria-valuenow="0" aria-valuemin="0" aria-valuemax="100">
										<span class="barNum">1/1</span>
									</div>



								</div>
								<a class="shortcut" href="www.">챌린지 바로가기</a>
							</div>
							2회 성공
							<div class="level1">
								경험치10XP
								<div class="leveldiv">
									획득 보상 <img class="rounded-circle" src="badge/아이유123.jpg"
										width="50" height="50" href="">
								</div>
								<div class="progress mb-4">

									<div class="progress-bar progress-bar-striped"
										aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"
										style="width: 50%;"></div>
									<span class="barNum">1/2</span>

								</div>
								<a class="shortcut" href="www.">챌린지 바로가기</a>
							</div>

						</div>



					</div>

				</div>

			</div>
		</div>

		</div>

		</div>
	</main>



	<!-- footer -->
	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
	<!-- //footer -->



</body>

</html>