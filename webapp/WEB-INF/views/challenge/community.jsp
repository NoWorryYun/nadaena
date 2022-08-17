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
									<li class="nav-item read-tab" role="presentation"><a id="introForm" 	class="nav-link" role="tab" href="${pageContext.request.contextPath}/challenge/${cMap.intro.challengeNo}/intro">소개글</a></li>
									<li class="nav-item read-tab" role="presentation"><a id="certifyForm" class="nav-link" role="tab" href="${pageContext.request.contextPath}/challenge/${cMap.intro.challengeNo}/certify">인증하기</a></li>
									<li class="nav-item read-tab" role="presentation"><a id="community"	 class="nav-link active" role="tab" href="${pageContext.request.contextPath}/challenge/${cMap.intro.challengeNo}/community">커뮤니티</a></li>
									<li class="nav-item read-tab" role="presentation"><a id="review"	 class="nav-link" role="tab" href="${pageContext.request.contextPath}/challenge/${cMap.intro.challengeNo}/review">후기글</a></li>
								</ul>
								<div id="read-board">
									<div>
										<div class="certify-board-header">
											<p class="certify-header">게시판</p>
										</div>
										<div>
											<div>
												<select>
													<optgroup label="카테고리">
														<option value="12" selected="selected">팁</option>
														<option value="13">응원</option>
														<option value="14">질문</option>
													</optgroup>
												</select>
												<div class="search-container search-board">
													<input class="search-input board-search-box" type="text" name="search-bar" placeholder="검색어를 입력하세요" />
													<button class="btn btn-light search-btn board-search-button" type="button">
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
														<div id="write-board-regist" class="text-right i-float">
															<input type="button" class="make-challenge certify" value="글쓰기">
														</div>
													</div>
												</div>
											</div>
											<div class="paging-box">
												<nav>
													<ul class="pagination pagination-sm">
														<li class="page-item"><a class="page-link" aria-label="Previous" href="#"><span aria-hidden="true">«</span></a></li>
														<li class="page-item"><a class="page-link" href="#">1</a></li>
														<li class="page-item"><a class="page-link" href="#">2</a></li>
														<li class="page-item"><a class="page-link" href="#">3</a></li>
														<li class="page-item"><a class="page-link" href="#">4</a></li>
														<li class="page-item"><a class="page-link" href="#">5</a></li>
														<li class="page-item"><a class="page-link" aria-label="Next" href="#"><span aria-hidden="true">»</span></a></li>
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






</html>