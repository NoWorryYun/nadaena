<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>검색결과</title>

	<!-- css -->
	<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/fonts/font-awesome.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/common.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/my.css">
	
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
		<div class="row">
		
			<!-- header -->
			<c:import url="/WEB-INF/views/includes/asideMyPage.jsp"></c:import>
			<!-- //aside -->
		
			
			<div id="content" class="col-10">
				<h3>즐겨찾기</h3>
				
				<div class="challenge-header">관심있는 챌린지
					<ul>
						<li><a href="${pageContext.request.contextPath }/my/my-bookmark1">챌린지</a></li>
						<li class="last-list"><a href="${pageContext.request.contextPath }/my/my-bookmark2">이벤트</a></li>
					</ul>		
				</div>			
				<div class="challenge-images">
					<c:forEach items="${mbMap.mbList1}" var="MyVo" varStatus="i">
					<div class="challenge-box">
						<div class="challenge-image"><img src="${pageContext.request.contextPath }/assets/img/search-img.jpg"></div>
						<div class="challenge-info">
							<h4>마라톤</h4>
							<p class="c-inpo">챌린지 기간 : 2022.10.15 ~ 2022.11.13</p>
							<p>참여 인원 : 15</p>
							<p>최소 도전비용 : 20000원</p>
							<p class="last-p">기대 성공금액 : 2~3%</p>
						</div>
					</div>	
					</c:forEach>
					
					<c:set var="length" value="${fn:length(mbMap.mbList1)}" />
					
					<c:forEach begin="1" end="${3-length}" step="1">
						<div class="challenge-box2">
							<div class="challenge-image2">
								<a href="#"><img src="${pageContext.request.contextPath }/assets/img/pluscircle.svg" class="none"></a>
							</div>
							<div class="none2">
								<a href="#">챌린지 참여하기</a>
							</div>
						</div>
					</c:forEach>
				</div>
				
				
				<div id="afterComment-wrap">
					<div class="paging-box">
						<nav>
							<ul class="pagination pagination-sm">
								<c:if test="${mbMap.prev}">
									<li class="page-item"><a class="page-link" aria-label="Previous" href="${pageContext.request.contextPath }/my/my-bookmark1?crtPage=${mbMap.startPageBtnNo-1}"><span aria-hidden="true">«</span></a></li>
								</c:if>
								<c:forEach begin="${mbMap.startPageBtnNo}" end="${mbMap.endPageBtnNo}" step="1" var="page">	
									<c:choose>
										<c:when test="${param.crtPage==page}">
											<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath }/my/my-bookmark1?crtPage=${page}">${page}</a></li>
										</c:when>
										<c:otherwise>
											<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath }/my/my-bookmark1?crtPage=${page}">${page}</a></li>
										</c:otherwise>
									</c:choose>	
								</c:forEach>
								
								<c:if test="${mbMap.next}">
									<li class="page-item"><a class="page-link" aria-label="Next" href="${pageContext.request.contextPath }/my/my-bookmark1?crtPage=${mbMap.endPageBtnNo+1}"><span aria-hidden="true">»</span></a></li>
								</c:if>
							</ul>
						</nav>
					</div>
				</div> <!-- paging -->
				
				
				
			</div>
			
		</div>
		
	</div>
</main>



<!-- footer -->
<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
<!-- //footer -->



</body>

</html>