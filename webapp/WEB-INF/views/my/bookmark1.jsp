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
	<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/my/my.css">
	
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
				<h3 class="mychallenge">즐겨찾기</h3>
				
				<div class="challenge-header">관심있는 챌린지
					<ul>
						<li><a href="${pageContext.request.contextPath }/my/bookmark1">챌린지</a></li>
						<li class="last-list"><a href="${pageContext.request.contextPath }/my/bookmark2">이벤트</a></li>
					</ul>		
				</div>			
				<div class="challenge-images">
					<c:forEach items="${mbMap.mbList1}" var="MyVo" varStatus="i">
					<div class="challenge-box">
						<div class="challenge-image">
							<a href="${pageContext.request.contextPath }/challenge/${MyVo.challengeNo}/intro">
								<img src="${pageContext.request.contextPath }/upload/forNaDaeNa/${MyVo.img }">
							</a>
						</div>
						<div class="challenge-info">
							<h4>${MyVo.clgTitle }</h4>
							<p class="c-inpo">진행기간 : <span>${MyVo.startday }</span> ~ <span>${MyVo.endday }</span> </p>
							<p>참여 인원 : ${MyVo.clgCnt }</p>
							<p>챌린지 난이도 : 
								<c:choose>
									<c:when test="${MyVo.clgLevel == 1 }">하</c:when>
									<c:when test="${MyVo.clgLevel == 2 }">중</c:when>
									<c:when test="${MyVo.clgLevel == 3 }">상</c:when>
								</c:choose>
							</p>
							<p class="last-p">참가가능금액 :
								<c:choose>
									<c:when test="${MyVo.clgLevel == 1 }">10000 ~ 30000P</c:when>
									<c:when test="${MyVo.clgLevel == 2 }">10000 ~ 50000P</c:when>
									<c:when test="${MyVo.clgLevel == 3 }">10000 ~ 100000P</c:when>
								</c:choose>
							</p>
						</div>
					</div>	
					</c:forEach>
					
					<c:set var="length" value="${fn:length(mbMap.mbList1)}" />
					
					<c:forEach begin="1" end="${3-length}" step="1">
						<div class="challenge-box2">
							<div class="challenge-image2">
								<a href="${pageContext.request.contextPath }/main"><img src="${pageContext.request.contextPath }/assets/img/marathon.jpg" class="none"></a>
							</div>
							<div class="none2">
								<a href="${pageContext.request.contextPath }/main">다른 챌린지 참가하기</a>
							</div>
						</div>
					</c:forEach>
				</div>
				
				
				<div id="afterComment-wrap">
					<div class="paging-box">
						<nav>
							<ul class="pagination pagination-sm">
								<c:if test="${mbMap.prev}">
									<li class="page-item"><a class="page-link" aria-label="Previous" href="${pageContext.request.contextPath }/my/bookmark1?crtPage=${mbMap.startPageBtnNo-1}"><span aria-hidden="true">«</span></a></li>
								</c:if>
								<c:forEach begin="${mbMap.startPageBtnNo}" end="${mbMap.endPageBtnNo}" step="1" var="page">	
									<c:choose>
										<c:when test="${param.crtPage==page}">
											<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath }/my/bookmark1?crtPage=${page}">${page}</a></li>
										</c:when>
										<c:otherwise>
											<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath }/my/bookmark1?crtPage=${page}">${page}</a></li>
										</c:otherwise>
									</c:choose>	
								</c:forEach>
								
								<c:if test="${mbMap.next}">
									<li class="page-item"><a class="page-link" aria-label="Next" href="${pageContext.request.contextPath }/my/bookmark1?crtPage=${mbMap.endPageBtnNo+1}"><span aria-hidden="true">»</span></a></li>
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
<script type="text/javascript">

$(function(){
	   if("${authUser}" == ""){
	      alert("로그인 후 이용할 수 있습니다.");
	      location.href = "${pageContext.request.contextPath }/loginForm";
	   }
	});


</script>
</html>