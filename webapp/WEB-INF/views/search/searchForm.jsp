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
<link rel="stylesheet"href="${pageContext.request.contextPath }/assets/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/fonts/font-awesome.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/common.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/mainslider.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/saerch.css">



<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/searchForm-css/Dropdown-Login-with-Social-Logins-bootstrap-social.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/searchForm-css/Features-Boxed-Remixed.css">



<!-- js -->
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/bootstrap/js/bootstrap.min.js"></script>
</head>



<body>
	<!-- header -->
	<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
	<!-- //header -->



	<main>
		<div class="main-box">
			<div>
				<p class="search-title">&quot;검색어&quot; 에 대한 검색 결과</p>
				<div class="table-responsive">
				
					<table class="table">
						<tbody>
							<tr>
								<td class="table-name">
									<p class="select-name">
										카테고리<br />선택
									</p>
								</td>
								<td class="table-select">
									<div>
										<table class="category-letter">
											<tbody class="tbody">
												<tr>
													<td>
														<li class="list-inline-item"><input type="radio"
															name="category" />운동</li>
													</td>
													<td>
														<li class="list-inline-item"><input type="radio"
															name="category" />봉사활동</li>
													</td>
													<td>
														<li class="list-inline-item"><input type="radio"
															name="category" />독서</li>
													</td>
													<td>
														<li class="list-inline-item"><input type="radio"
															name="category" />건강</li>
													</td>
												</tr>
												<tr>
													<td>
														<li class="list-inline-item"><input type="radio"
															name="category" />생활</li>
													</td>
													<td>
														<li class="list-inline-item"><input type="radio"
															name="category" />그림</li>
													</td>
													<td>
														<li class="list-inline-item"><input type="radio"
															name="category" />공부</li>
													</td>
													<td>
														<li class="list-inline-item"><input type="radio"
															name="category" />반려동물</li>
													</td>
												</tr>
												<tr>
													<td>
														<li class="list-inline-item"><input type="radio"
															name="category" />음악</li>
													</td>
													<td>
														<li class="list-inline-item"><input type="radio"
															name="category" />식습관</li>
													</td>
													<td>
														<li class="list-inline-item"><input type="radio"
															name="category" />취미</li>
													</td>
													<td>
														<li class="list-inline-item"><input type="radio"
															name="category" />뷰티</li>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</td>
							</tr>
							
						</tbody>
					</table>
					<!--//table  -->
				</div>
				<!--//table-responsive -->
			</div>

			<div>
				<a href="#">인기순 </a>&gt; <a href="#">신규등록순 </a>&gt; <a href="#">마감일순
				</a>&gt; <a href="#">카테고리순</a>
			</div>

			<div class="features-boxed">
				<div>
					<div class="row features">
						<div class="col-sm-6 col-md-3 item">
							<div class="box">
								<div class="image-box">
									<img class="box-image img-responsive"
										src="${pageContext.request.contextPath}/assets/img/search-img.jpg" />
								</div>
								
								<div class="info-box">
					           	 	<p class="nadaena_name">마라톤</p>
					           	 	<p class="nadaena_limit">도전기한: 2222.01.02 ~ 2022.10.24</p>
					           	 	<p class="nadaena_incost">도전금액: 10000원</p>
				           		</div>
							</div>
						</div>
					
						<div class="col-sm-6 col-md-3 item">
							<div class="box">
								<div class="image-box">
									<img class="box-image img-responsive"
										src="${pageContext.request.contextPath}/assets/img/search-img.jpg" />
								</div>
								<div class="info-box">
									<h3 class="name">마라톤</h3>
									<div>
										<p class="c-inpo">챌린지 기간 : 2022.10.15 ~ 2022.11.13</p>
										<p>참여 인원 : 15</p>
										<p>최소 도전비용 : 20000원</p>
										<p>기대 성공금액 : 2~3%</p>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-6 col-md-3 item">
							<div class="box">
								<div class="image-box">
									<img class="box-image img-responsive"
										src="${pageContext.request.contextPath}/assets/img/search-img.jpg" />
								</div>
								<div class="info-box">
									<h3 class="name">하루 10페이지 책 읽기</h3>
									<div>
										<p class="c-inpo">챌린지 기간 : 2023.1.15 ~ 2022.2.10</p>
										<p>참여 인원 : 24</p>
										<p>최소 도전비용 : 10000원</p>
										<p>기대 성공금액 : 2~3%</p>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-6 col-md-3 item">
							<div class="box">
								<div class="image-box">
									<img class="box-image img-responsive"
										src="${pageContext.request.contextPath}/assets/img/search-img.jpg" />
								</div>
								<div class="info-box">
									<h3 class="name">하루 이빨 3번닦기</h3>
									<div>
										<p class="c-inpo">챌린지 기간 : 2022.1.26 ~ 2022.2.14</p>
										<p>참여 인원 : 65</p>
										<p>최소 도전비용 : 10000원</p>
										<p>기대 성공금액 : 2~3%</p>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-6 col-md-3 item">
							<div class="box">
								<div class="image-box">
									<img class="box-image img-responsive"
										src="${pageContext.request.contextPath}/assets/img/search-img.jpg" />
								</div>
								<div class="info-box">
									<h3 class="name">하루 팔굽혀펴기 100회</h3>
									<div>
										<p class="c-inpo">챌린지 기간 : 2022.5.16 ~ 2022.5.31</p>
										<p>참여 인원 : 85</p>
										<p>최소 도전비용 : 30000원</p>
										<p>기대 성공금액 : 2~3%</p>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-6 col-md-3 item">
							<div class="box">
								<div class="image-box">
									<img class="box-image img-responsive"
										src="${pageContext.request.contextPath}/assets/img/search-img.jpg" />
								</div>
								<div class="info-box">
									<h3 class="name">집안청소 하기</h3>
									<div>
										<p class="c-inpo">챌린지 기간 : 2022.7.26 ~ 2022.8.14</p>
										<p>참여 인원 : 9</p>
										<p>최소 도전비용 : 50000원</p>
										<p>기대 성공금액 : 2~3%</p>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-6 col-md-3 item">
							<div class="box">
								<div class="image-box">
									<img class="box-image img-responsive"
										src="${pageContext.request.contextPath}/assets/img/search-img.jpg" />
								</div>
								<div class="info-box">
									<h3 class="name">하루 1장 그림그리기</h3>
									<div>
										<p class="c-inpo">챌린지 기간 : 2022.4.26 ~ 2022.4.6</p>
										<p>참여 인원 : 105</p>
										<p>최소 도전비용 : 20000원</p>
										<p>기대 성공금액 : 2~3%</p>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-6 col-md-3 item">
							<div class="box">
								<div class="image-box">
									<img class="box-image img-responsive"
										src="${pageContext.request.contextPath}/assets/img/search-img.jpg" />
								</div>
								<div class="info-box">
									<h3 class="name">마라톤</h3>
									<div>
										<p class="c-inpo">챌린지 기간 : 2022.10.15 ~ 2022.11.13</p>
										<p>참여 인원 : 15</p>
										<p>최소 도전비용 : 20000원</p>
										<p>기대 성공금액 : 2~3%</p>
									</div>
								</div>
							</div>
						</div>
						</div>
					</div><!--  -->
				</div>
			</div>
		</div>
	</main>



	<!-- footer -->
	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
	<!-- //footer -->


</body>

</html>
