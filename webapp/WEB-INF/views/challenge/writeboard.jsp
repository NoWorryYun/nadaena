
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
						<div id="read-header-box">
							<h2 class="read-header">
								매일 10페이지 책 읽기<br>2022-08-06~2022-08-27<br>
							</h2>

							<i class="fa fa-star fa-2x i-float"></i> <i class="fa fa-star fa-star-o fa-2x i-float"></i>
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

									<div id="board-write-box">
										<div>
											<p class="fw-bold font-20">게시판</p>
											<div class="table-responsive table-writeform">
												<table class="table">
													<tbody class="table-none">
														<tr class="border-white-underline">
															<td class="line-height25 write-board-label">제목</td>
															<td class="write-table-content" colspan="3"><input type="text" class="write-title-shape"></td>
														</tr>
														<tr class="border-white-underline">
															<td class="write-board-label">카테고리 설정</td>
															<td class="write-board-content"><select class="select-width">
																	<option value="12" selected="">팁</option>
																	<option value="13">응원</option>
																	<option value="14">질문</option>
															</select>&nbsp;</td>
															<td class="write-board-label">비밀번호 설정</td>
															<td class="write-board-content"><input type="text" class="board-password"></td>
														</tr>
													</tbody>
												</table>
												<textarea class="write-table-content-text"></textarea>
												<div id="write-board-regist" class="text-right">
												<input type="button" class="make-challenge certify" value="등록">
												<a class="return-challenge certify" href="">목록</a>
											</div>
											</div>
											
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




	<!-- 
	//리뷰 모달창 
	<div id="review-modal" class="modal fade show" role="dialog" tabindex="-1" style="display: block;">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<div>
						<h4 class="modal-title">매일 10페이지 책 읽기</h4>
					</div>
					<button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<div class="modal-image-box">
						<div class="modal-image">
							<img src="bg-navbar-dropdown-themes.png" />
						</div>
					</div>
					<div class="review-text">
						<div>
							<p class="bold-underline">후기</p>
						</div>
						<p class="font-14">매일 10페이지 읽다가 9페이지 쯤 읽으면 잠듭니다. 대낮에 읽으세요. 가끔 펴자마자 잠듭니다. 리워드도 달달합니다. 두번하세요. 세번하세요.</p>
					</div>
				</div>
				<div class="modal-nicname-box">
					<p class="modal-nickname">작성자 : 배달의기마민족</p>
					<p class="modal-upload-date">작성일 : 2022-08-31</p>
				</div>
				<div class="modal-footer">
					<button class="btn btn-light" type="button" data-bs-dismiss="modal">닫기</button>
					<button class="btn btn-primary" type="button">삭제</button>
				</div>
			</div>
		</div>
	</div>
 -->



</body>







</html>
