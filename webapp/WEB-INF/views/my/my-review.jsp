<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%> 

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

<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/test11.css">
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
<!-- //header -->


<main>
	<div class="main-box">
		<div class="row">
		
			<!-- header -->
			<c:import url="/WEB-INF/views/includes/asideMyPage.jsp"></c:import>
			<!-- //header -->
		
			
			<div id="content" class="col-9">
				<h3>나의 리뷰</h3>
				
				<ul class="list-inline">
					<c:forEach items="${rMap.rList}" var="ReviewVo" varStatus="i">
						<li class="list-inline-item">
							<div class="img-size">
								<a href="#"><img class="img-size" src="${pageContext.request.contextPath }/upload/${ReviewVo.reviewImg }"></a>
							</div>
							<div class="certify-list-info">
								<div>
									<div>
										<a class="report" href="${pageContext.request.contextPath}/my/deleteReview?reviewNo=${ReviewVo.reviewNo}">삭제</a>
									</div>
									<p class="review-uploader">${ReviewVo.nickname }</p>
									<p class="review-comment">${ReviewVo.reviewContent }</p>
								</div>
							</div>
						</li>
					</c:forEach>
				</ul>
				
				<div id="afterComment-wrap">
					<div class="paging-box">
						<nav>
							<ul class="pagination pagination-sm">
								<c:if test="${rMap.prev}">
									<li class="page-item"><a class="page-link" aria-label="Previous" href="${pageContext.request.contextPath }/my/review?crtPage=${rMap.startPageBtnNo-1}"><span aria-hidden="true">«</span></a></li>
								</c:if>
								<c:forEach begin="${rMap.startPageBtnNo}" end="${rMap.endPageBtnNo}" step="1" var="page">	
									<c:choose>
										<c:when test="${param.crtPage==page}">
											<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath }/my/review?crtPage=${page}">${page}</a></li>
										</c:when>
										<c:otherwise>
											<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath }/my/review?crtPage=${page}">${page}</a></li>
										</c:otherwise>
									</c:choose>	
								</c:forEach>
								
								<c:if test="${rMap.next}">
									<li class="page-item"><a class="page-link" aria-label="Next" href="${pageContext.request.contextPath }/my/review?crtPage=${rMap.endPageBtnNo+1}"><span aria-hidden="true">»</span></a></li>
								</c:if>
							</ul>
						</nav>
					</div>
				</div> <!-- paging -->
				
			</div> <!-- content -->
		</div> <!-- row -->
	</div>	<!-- mainbox -->
</main>



<!-- footer -->
<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
<!-- //footer -->



</body>

</html>