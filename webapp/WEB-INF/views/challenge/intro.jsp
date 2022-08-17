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
								${cMap.intro.clgTitle}<br>2022-08-06~2022-08-27<br>
							</h2>

							<i class="fa fa-star fa-2x i-float"></i> <i class="fa fa-star fa-star-o fa-2x i-float"></i>
						</div>

						<div id="read-content">
							<div id="read-tab">
								<ul class="nav nav-tabs" role="tablist">
									<li class="nav-item read-tab" role="presentation"><a id="introForm" 	class="nav-link active" role="tab" href="${pageContext.request.contextPath}/challenge/${cMap.intro.challengeNo}/intro">소개글</a></li>
									<li class="nav-item read-tab" role="presentation"><a id="certifyForm"	 class="nav-link" role="tab" href="${pageContext.request.contextPath}/challenge/${cMap.intro.challengeNo}/certify">인증하기</a></li>
									<li class="nav-item read-tab" role="presentation"><a id="community"	 class="nav-link" role="tab" href="${pageContext.request.contextPath}/challenge/${cMap.intro.challengeNo}/community">커뮤니티</a></li>
									<li class="nav-item read-tab" role="presentation"><a id="review"	 class="nav-link" role="tab" href="${pageContext.request.contextPath}/challenge/${cMap.intro.challengeNo}/review">후기글</a></li>
								</ul>
								<div class="tab-content">
									<div id="introduce-wrap">
										<div>
											<div class="float-l">
												<img class="picture-size" src="${pageContext.request.contextPath}/assets/img/bg-navbar-dropdown-themes.png">
												<div>
													<div>
														<p class="font-12 fw-bold">카테고리 : ${cMap.intro.interestName}</p>
													</div>
													<ul class="list-inline font-12">
														<li class="list-inline-item"><a href="#">${cMap.intro.tag1}</a></li>
														<li class="list-inline-item"><a href="#">${cMap.intro.tag2}</a></li>
														<li class="list-inline-item"><a href="#">${cMap.intro.tag3}</a></li>
														<li class="list-inline-item"><a href="#">${cMap.intro.tag4}</a></li>
														<li class="list-inline-item"><a href="#">${cMap.intro.tag5}</a></li>
													</ul>
												</div>
											</div>
											<div class="content-introduce">
												<div class="table-responsive" id="table-writeform">
													<form id="joinForm" method="post" action="${pageContext.request.contextPath}/challenge/joinchallenge">
														<table class="table">
															<tbody style="border-style: none;">
																<tr style="border-style: none;">
																	<td class="write-table-label">모집기간</td>
																	<td class="font-12">
																		<p>
																			<span id="startPeriod"></span>2022-08-01 ~ <span id="recruitPeriod"></span>2022-08-06 (${intro.recuritment})
																		</p>
																	</td>
																</tr>
																<tr class="intro-cell">
																	<td class="write-table-label">인증횟수</td>
																	<td class="font-12">
																		<p>주 ${cMap.intro.certifyDay}회, 1일 ${cMap.intro.upload}회</p>
																	</td>
																</tr>
																<tr class="intro-cell">
																	<td class="write-table-label">인증방법</td>
																	<td class="font-12"><c:forEach items="${cMap.certifyList}" var="CertifyVo">
																			<p>
																				${CertifyVo.certifyTitle}(${CertifyVo.subOn}시)~(${CertifyVo.subOff}시)<br>
																			</p>
																		</c:forEach></td>
																</tr>
																<tr class="intro-cell">
																	<td class="write-table-label">난이도</td>
																	<td class="font-12">
																	<c:choose>
																		<c:when test="${cMap.intro.clgLevel == 3}">
																		<p class="clgLevel">하</p>
																		</c:when>
																		<c:when test="${cMap.intro.clgLevel == 2}">
																		<p class="clgLevel">중</p>
																		</c:when>
																		<c:otherwise>
																		<p class="clgLevel">상</p>
																		</c:otherwise>
																		</c:choose>
																	</td>
																</tr>
																<tr class="intro-cell">

																	<td class="write-table-label">참가비용</td>
																	<td class="font-12 table-none">
																	<c:choose>
																			<c:when test="${cMap.intro.clgLevel == 1}">
																				<select name="payment">
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
																				</select>
																			</c:when>
																			<c:when test="${cMap.intro.clgLevel == 2}">
																				<select name="payment">
																					<option value="0" selected="selected">금액설정</option>
																					<option value="10,000">10,000</option>
																					<option value="20,000">20,000</option>
																					<option value="30,000">30,000</option>
																					<option value="40,000">40,000</option>
																					<option value="50,000">50,000</option>
																				</select>
																			</c:when>
																			<c:otherwise>
																				<select name="payment">
																					<option value="0" selected="selected">금액설정</option>
																					<option value="10,000">10,000</option>
																					<option value="20,000">20,000</option>
																					<option value="30,000">30,000</option>
																				</select>
																			</c:otherwise>
																		</c:choose> &nbsp;원</td>
																</tr>
																<tr style="border-style: none;">
																	<td id="enter-challenge-cell" class="type-center" colspan="2">
																		<button id="btnSubmit" class="font-12" type="submit">챌린지 참여하기</button>
																	</td>
																</tr>
															</tbody>
														</table>
														<input type="hidden" id="authUserNo" name="userNo" value="${authUser.userNo}">
													</form>
													<!-- //form -->
												</div>
											</div>
										</div>
										<div id="intro-detail">
											<div class="back-color">
												<p class="fw-bold">소개글</p>
											</div>
											<div id="intro-content" class="font-12">${cMap.intro.content}</div>
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


<script type="text/javascript">

	var authUser = $("#authUserNo").val();

	$("#joinForm").on("submit", function(){
		
		console.log(authUser);
		
 		if(authUser == "" || authuser == null){
 			alert("로그인 해주세요");
 			location.href = "${pageContext.request.contextPath}/user/login";
 			return false;
 		} 
		var payment = $("[name='payment']").val();
		console.log(payment);
		if(payment < 1){
			alert("금액을 선택해 주세요");
			return false;
 		}
	})
	

</script>

</body>


 
</html>