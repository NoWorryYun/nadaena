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
		
			<!-- aside -->
			<c:import url="/WEB-INF/views/includes/asideMyPage.jsp"></c:import>
			<!-- //aside -->
		
			
			<div id="content" class="col-10">
				<h3 class="mychallenge">나의 이벤트</h3>
				
				<div class="challenge-header">
					진행중 이벤트
					<ul>
						<li><a href="${pageContext.request.contextPath }/my/event">진행중</a></li>
						<li class="last-list"><a href="${pageContext.request.contextPath }/my/event/end">종료된</a></li>
					</ul>
				</div>
				<div class="challenge-images">
					<c:forEach items="${mcMap.meList2}" var="MyVo" varStatus="i">
					<div class="challenge-box">
						<div class="challenge-image">
							<a href="${pageContext.request.contextPath }/challenge/${MyVo.challengeNo}/intro">
								<img src="${pageContext.request.contextPath }/assets/img/search-img.jpg">
							</a>
						</div>
						<div class="challenge-info">
							<h4>${MyVo.clgTitle }</h4>
							<p class="c-inpo">진행기간 : <span>${MyVo.startday }</span> ~ <span>${MyVo.endday }</span> </p>
							<p>참여 인원 : ${MyVo.clgCnt }</p>
							<p>도전비용 : ${MyVo.payment }원</p>
							<p class="last-p">기대 성공금액 : 2~3%</p>
						</div>
					</div>
					</c:forEach>
					
					<c:set var="length" value="${fn:length(mcMap.meList2)}" />
					
					<%-- <c:forEach begin="1" end="${3-length}" step="1">
						<div class="challenge-box2">
							<div class="challenge-image2">
								<a href="${pageContext.request.contextPath }/main"><img src="${pageContext.request.contextPath }/assets/img/sea.jpg" class="none"></a>
							</div>
							<div class="none2">
								<a href="${pageContext.request.contextPath }/main">다른 이벤트 참가하기</a>
							</div>
						</div>
						
					</c:forEach> --%>							
				</div>
				
			
				<div id="afterComment-wrap">
					<div class="paging-box">
						<nav>
							<ul class="pagination pagination-sm">
								<c:if test="${mcMap.prev}">
									<li class="page-item"><a class="page-link" aria-label="Previous" href="${pageContext.request.contextPath }/my/event/end?crtPage=${mcMap.startPageBtnNo-1}"><span aria-hidden="true">«</span></a></li>
								</c:if>
								<c:forEach begin="${mcMap.startPageBtnNo}" end="${mcMap.endPageBtnNo}" step="1" var="page">	
									<c:choose>
										<c:when test="${param.crtPage==page}">
											<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath }/my/event/end?crtPage=${page}">${page}</a></li>
										</c:when>
										<c:otherwise>
											<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath }/my/event/end?crtPage=${page}">${page}</a></li>
										</c:otherwise>
									</c:choose>	
								</c:forEach>
								
								<c:if test="${mcMap.next}">
									<li class="page-item"><a class="page-link" aria-label="Next" href="${pageContext.request.contextPath }/my/event/end?crtPage=${mcMap.endPageBtnNo+1}"><span aria-hidden="true">»</span></a></li>
								</c:if>
							</ul>
						</nav>
					</div>
				</div> <!-- paging -->
			
			</div> <!-- content -->
			
		</div> <!-- row -->
		
	</div> <!-- main -->
</main>

<!----------------------------------------------------------------------->	
<!-- 모달 -->
<div id="review-modal" class="modal fade show" role="dialog">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<form action="${pageContext.request.contextPath}/my/writeReview" method="post" enctype="multipart/form-data">
			<div class="modal-header">
				<div>
					<h5></h5>
				</div>
				<button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button>
			</div>
			<div class="modal-body">
				<div class="modal-nicname-box">
					<p class="modal-upload-date">작성일 : <span class="writeday"></span></p>
					<input type="hidden" id="modal-challengeNo" name="challengeNo" value="">
				</div>
				<textarea class="modal-text" id="review-content" name="reviewContent" value=""></textarea>
				<input type="file" id="modal-upbutton" name="file" value="">
			</div>
			<div class="modal-footer">
				<button type="submit" id="modal-review-button" class="btn btn-primary">작성 및 리워드받기</button>
			</div>
				
			</form>	
		</div>
	</div>
</div>

<!--  모달 끝 -->


</body>
<script type="text/javascript">

//리뷰작성 모달창 호출 했을때
$(".modal-button").on("click", function(){
	
	//모달창 초기화
	$("#modal-challengeNo").val("");
	$("#review-modal h5").html("");
	$("#review-content").val("");
	
	//데이타수집
	var challengeNo = $(this).data("challengeno");
	var clgTitle = $(this).data("title");
	
	//오늘날짜
	const date = new Date();
	
	const year = date.getFullYear();
	const month = ('0' + (date.getMonth() + 1)).slice(-2);
	const day = ('0' + date.getDate()).slice(-2);
	const today = year + '-' + month + '-' + day;

	console.log(today);
	
	console.log(challengeNo);
	console.log(clgTitle);
	
	//챌린지번호 숨기기
	$("#modal-challengeNo").val(challengeNo);
	
	//첼린지타이틀 출력
	$("#review-modal h5").html(clgTitle);
	
	//리뷰 작성일 출력
	$("#review-modal .writeday").html(today);
	
	//모달 보이기
	$("#review-modal").modal("show");
	
});	


//리뷰작성 모달창 닫기 했을때
$(".btn-close").on("click", function(){
	
	$("#review-modal").fadeOut();	
});	 


      


</script>
</html>