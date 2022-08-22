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
				<div class="search-result">
					<p class="search-title"><a herd="">&quot;${searchbar}&quot;</a> 에 대한 검색 결과</p>
				</div>
				
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
									<div class="div-name">
										<table class="category-letter">
											<tbody class="tbody">
												<tr>
													<td>
														<li class="list-inline-item"><input type="radio"
															value="1"  name="category" />운동</li>
													</td>
													<td>
														<li class="list-inline-item"><input type="radio"
															value="2" onclick="radioClick()" name="category" />봉사활동</li>
													</td>
													<td>
														<li class="list-inline-item"><input type="radio"
															value="3" onclick="radioClick()" name="category" />독서</li>
													</td>
													<td>
														<li class="list-inline-item"><input type="radio"
															value="4" onclick="radioClick()" name="category" />건강</li>
													</td>
												</tr>
												<tr>
													<td>
														<li class="list-inline-item"><input type="radio"
															value="5" onclick="radioClick()" name="category" />생활</li>
													</td>
													<td>
														<li class="list-inline-item"><input type="radio"
														 	value="6" onclick="radioClick()" name="category" />그림</li>
													</td>
													<td>
														<li class="list-inline-item"><input type="radio"
															value="7" onclick="radioClick()" name="category" />공부</li>
													</td>
													<td>
														<li class="list-inline-item"><input type="radio"
															value="8" onclick="radioClick()" name="category" />반려동물</li>
													</td>
												</tr>
												<tr>
													<td>
														<li class="list-inline-item"><input type="radio"
															value="9" onclick="radioClick()" name="category" />음악</li>
													</td>
													<td>
														<li class="list-inline-item"><input type="radio"
															value="10" onclick="radioClick()" name="category" />식습관</li>
													</td>
													<td>
														<li class="list-inline-item"><input type="radio"
															value="11" onclick="radioClick()" name="category" />취미</li>
													</td>
													<td>
														<li class="list-inline-item"><input type="radio"
															value="12" onclick="radioClick()" name="category" />뷰티</li>
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




			<div class="search-type">
				<div class="search-type-select">
					<div class="search-type-select-culm">
						<div class="search-type-select-culm-img">
							<span class="check-img"></span>
						</div>
						<span>인기순</span>
					</div>
					<div class="search-type-select-culm">
						<div class="search-type-select-culm-img">
							<span class="check-img"></span>
						</div>
						<span>신규등록순</span>
					</div>
					<div class="search-type-select-culm">
						<div class="search-type-select-culm-img">
							<span class="check-img"></span>
						</div>
						<span>마감일순</span>
					</div>
				</div>
			</div>


			<div class="features-boxed">
				<div>
					<div class="row features">
					
					
					<!-- 검색값 넣어야함 -->
						<c:forEach var="MainTitleVo" items="${cMap.searchList}">
							<div class="col-sm-6 col-md-3 item">
								<a href="${pageContext.request.contextPath}/challenge/${MainTitleVo.challengeNo}/intro">
									<div class="box">
										<div class="image-box">
											<img class="box-image img-responsive"
												src="${pageContext.request.contextPath}/assets/img/search-img.jpg<%-- ${pageContext.request.contextPath}/${MainTitleVo.img} --%>" alt="" />
										</div>
										
										<div class="info-box">
							           	 	<p class="nadaena_name">${MainTitleVo.clgTitle}</p>
							           	 	<p class="nadaena_limit">도전기한: ${MainTitleVo.period}</p>
							           	 	<p class="nadaena_limit">신청인원: ${MainTitleVo.count_user}</p>
							           	 	<p class="nadaena_incost">도전금액: ${MainTitleVo.payment}</p>
						           		</div>
									</div>
								</a>
							</div>
						</c:forEach>
						
					</div>
					<!-- //row features -->
				</div><!--  -->
			</div>
		</div>
</main>



	<!-- footer -->
	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
	<!-- //footer -->


</body>



			
<!-- <div class="ccheck">
	<input type="checkbox" id="check_test">
	<label for="check_test">
		<div class="chk_img">체크</div>
	</label>
</div> -->
			
			
<%-- <div class="col-sm-6 col-md-3 item">
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
		</div> --%>







</html>
