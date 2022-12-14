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
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/my/mymodal.css">

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
								${rMap.intro.clgTitle }<br>${rMap.intro.recRD}~${rMap.intro.recRDP}<br>
							</h2>
							<div id="bookMark" class="i-float"></div>
						</div>

						<div id="read-content">
							<div id="read-tab">
								<ul class="nav nav-tabs" role="tablist">
									<li class="nav-item read-tab" role="presentation"><a id="introForm"   class="nav-link" role="tab" href="${pageContext.request.contextPath}/challenge/${rMap.intro.challengeNo}/intro">소개글</a></li>
									<li class="nav-item read-tab" role="presentation"><a id="certifyForm" class="nav-link" role="tab" href="${pageContext.request.contextPath}/challenge/${rMap.intro.challengeNo}/certify">인증하기</a></li>
									<li class="nav-item read-tab" role="presentation"><a id="community"	  class="nav-link" role="tab" href="${pageContext.request.contextPath}/challenge/${rMap.intro.challengeNo}/community">커뮤니티</a></li>
									<li class="nav-item read-tab" role="presentation"><a id="review"	  class="nav-link active" role="tab" href="${pageContext.request.contextPath}/challenge/${rMap.intro.challengeNo}/review">후기글</a></li>
								</ul>
								<div id="afterComment-wrap-review">
									<div>
										<ul class="list-inline">
											<c:forEach items="${rMap.rList}" var="ReviewVo" varStatus="i">
												<li class="list-inline-item" id="lii">
													<div class="img-size">
														<a href="#" class="modal-button" data-title="${ReviewVo.clgTitle}" data-reviewdate="${ReviewVo.reviewDate }" data-content="${ReviewVo.reviewContent }">
															<img class="img-size" src="${pageContext.request.contextPath }/upload/forNaDaeNa/${ReviewVo.reviewImg }">
														</a>
													</div>
													<div class="certify-list-info">
														<div>
															<div>
																<a class="report" href="">신고</a>
															</div>
															<p class="review-uploader">${ReviewVo.nickname }</p>
															<p id="review-comment" class="review-comment">${ReviewVo.reviewContent }</p>
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
									<li class="page-item"><a class="page-link" aria-label="Previous" href="${pageContext.request.contextPath }/my/my-review?crtPage=${rMap.startPageBtnNo-1}"><span aria-hidden="true">«</span></a></li>
								</c:if>
								<c:forEach begin="${rMap.startPageBtnNo}" end="${rMap.endPageBtnNo}" step="1" var="page">	
									<c:choose>
										<c:when test="${param.crtPage==page}">
											<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath }/my/my-review?crtPage=${page}">${page}</a></li>
										</c:when>
										<c:otherwise>
											<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath }/my/my-review?crtPage=${page}">${page}</a></li>
										</c:otherwise>
									</c:choose>	
								</c:forEach>
								
								<c:if test="${rMap.next}">
									<li class="page-item"><a class="page-link" aria-label="Next" href="${pageContext.request.contextPath }/my/my-review?crtPage=${rMap.endPageBtnNo+1}"><span aria-hidden="true">»</span></a></li>
								</c:if>
							</ul>
						</nav>
					</div>
				</div> <!-- paging -->
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>


<!-- ========================================================================================================================================================================================== -->

				<!-- 오른쪽 베스트 코너 -->
				<div id="rside" class="col-3">
					<div id="challenge-recommand">
						<div>
							<p>현재 인기의 챌린지</p>
							<ul class="list-inline text-center">
								<li class="list-inline-item">
									<div class="simple-slider">
										<div class="swiper-container">
											<div id="newOrderList" class="swiper-wrapper">
											
												<c:forEach items="${bestListMap.newOrderList}" var="item">
													<div class=" swiper-slide" style="position: relative;">
														<a href="${pageContext.request.contextPath}/challenge/${item.challengeNo}/intro"> 
															<img src="${pageContext.request.contextPath}/upload/forNaDaeNa/${item.img}">
														</a>
														<p class="s-title" style="position: absolute; top:20px; left: 16px; font-size: 16px">
															<a class="bestTitle" href="${pageContext.request.contextPath}/challenge/${item.challengeNo}/intro">
																${item.clgTitle}
															</a>
														</p>														
													</div>
												</c:forEach>
											
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
							<p>최근 등록된 챌린지</p>
							<ul class="list-inline text-center">
								<li class="list-inline-item">
									<div class=" simple-slider">
										<div class=" swiper-container">
											<div id="likeOrderList" class="swiper-wrapper">
											
												<c:forEach items="${bestListMap.likeOrderList}" var="item">
													<div class=" swiper-slide" style="position: relative;">
														<a href="${pageContext.request.contextPath}/challenge/${item.challengeNo}/intro"> 
															<img src="${pageContext.request.contextPath}/upload/forNaDaeNa/${item.img}">
														</a>
														<p class="s-title" style="position: absolute; top:20px; left: 16px; font-size: 16px">
															<a class="bestTitle" href="${pageContext.request.contextPath}/challenge/${item.challengeNo}/intro">
																${item.clgTitle}
															</a>
														</p>														
													</div>
												</c:forEach>
											
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
							<p>마감  임박 챌린지</p>
							<ul class="list-inline text-center">
								<li class="list-inline-item">
									<div class=" simple-slider">
										<div class=" swiper-container">
											<div id="recruitmentOrderList" class="swiper-wrapper">
											
												<c:forEach items="${bestListMap.recruitmentOrderList}" var="item">
													<div class=" swiper-slide" style="position: relative;">
														<a href="${pageContext.request.contextPath}/challenge/${item.challengeNo}/intro"> 
															<img src="${pageContext.request.contextPath}/upload/forNaDaeNa/${item.img}">
														</a>
														<p class="s-title" style="position: absolute; top:20px; left: 16px; font-size: 16px">
															<a class="bestTitle" href="${pageContext.request.contextPath}/challenge/${item.challengeNo}/intro">
																${item.clgTitle}
															</a>
														</p>														
													</div>
												</c:forEach>
											
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
				<!-- //오른쪽 베스트 코너 -->
				
			</div>
		</div>
	</main>



	<!-- footer -->
	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
	<!-- /footer -->







<!--  리뷰 모달창 
<div id="review-modal" class="modal" tabindex="-1">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Modal title</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
		<div id="modal-nicname-box">
					<p id="modal-upload-date">작성일 : <span class="readday"></span></p>
		</div>
		<div id="modal-image">
					<img src="">
		</div>
		<div class="modal-text" id="review-content">
					<p id="modal-content"></p>
		</div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" data-bs-dismiss="modal">닫기</button>
      </div>
    </div>
  </div>
</div>  -->



<div id="review-modal" class="modal fade show" role="dialog">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<div>
					<h5></h5>
				</div>
				<button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button>
			</div>
			<div id="modal-body">
				<div id="modal-nicname-box">
					<p id="modal-upload-date">작성일 : <span class="readday"></span></p>
				</div>
				<div id="modal-image">
					<img src="">
				</div>
				<div class="modal-text" id="review-content">
					<p id="modal-content"></p>
				</div>
			</div>
			<div class="modal-footer">
				<button id="modal-review-button" class="btn btn-primary" data-bs-dismiss="modal">닫기</button>
			</div>
		</div>
	</div>
</div>
 -->
<input type="hidden" id="challengeNo" name="challengeNo" value="${cMap.intro.challengeNo}">
<script>

$(function(){
	   if("${rMap.intro.challengeNo}" == ""){
	      alert("존재하지 않는 챌린지입니다.");
	      location.href = "${pageContext.request.contextPath }/main";
	   }
	});

$(function(){
	   if("${authUser}" == ""){
	      alert("로그인 후 이용할 수 있습니다.");
	      location.href = "${pageContext.request.contextPath }/loginForm";
	   }
	});


	
//리뷰작성 모달창 호출 했을때
$(".modal-button").on("click", function(){
	
	//모달창 초기화
	$("#review-modal h5").html("");
	$("#review-content").val("");
	
	//데이타수집
	var clgTitle = $(this).data("title");
	var reviewDate = $(this).data("reviewdate");
	var reviewContent = $(this).data("content");
	var reviewImg = $(this).children(".img-size").attr("src");
	
	console.log(clgTitle);
	console.log(reviewDate);
	console.log(reviewContent);
	console.log(reviewImg);
	
	//첼린지타이틀 출력
	$("#review-modal h5").html(clgTitle);
	
	//리뷰 작성일 출력
	$("#review-modal .readday").html(reviewDate);
	
	//모달본문
	$("#review-modal #modal-content").html(reviewContent);
	
	//이미지
	$("#modal-image>img").attr("src", reviewImg);
	
	//모달 보이기
	$("#review-modal").modal("show");
	
	
	
});	


//리뷰작성 모달창 닫기 했을때
$(".btn-close").on("click", function(){
	
	$("#review-modal").modal("fadeOut");	
});

$("#modal-review-button").on("click", function(){
	
	$("#review-modal").modal("fadeOut");	
});

//신고
$(".report").on("click", function(){
	
	var result = confirm("신고하시겠습니까?");
	
	if(result == true) {
		alert("신고 되었습니다");
		
	}
	else {
		alert("취소 되었습니다")
	}
});


	
	/* 	(function() {
			$(function() {
				// calendar element 취득
				var calendarEl = $('#calendar')[0];
				// full-calendar 생성하기
				var calendar = new FullCalendar.Calendar(
						calendarEl,
						{
							height : '700px', // calendar 높이 설정
							expandRows : true, // 화면에 맞게 높이 재설정
							slotMinTime : '08:00', // Day 캘린더에서 시작 시간
							slotMaxTime : '20:00', // Day 캘린더에서 종료 시간
							// 해더에 표시할 툴바
							headerToolbar : {
								left : 'prev,next today',
								center : 'title',
								right : 'dayGridMonth,timeGridWeek,timeGridDay,listWeek'
							},
							initialView : 'dayGridMonth', // 초기 로드 될때 보이는 캘린더 화면(기본 설정: 달)
							navLinks : true, // 날짜를 선택하면 Day 캘린더나 Week 캘린더로 링크
							editable : true, // 수정 가능?
							selectable : true, // 달력 일자 드래그 설정가능
							nowIndicator : true, // 현재 시간 마크
							dayMaxEvents : false, // 이벤트가 오버되면 높이 제한 (+ 몇 개식으로 표현)
							locale : 'ko', // 한국어 설정
							eventAdd : function(obj) { // 이벤트가 추가되면 발생하는 이벤트
								console.log(obj);
							},
							eventChange : function(obj) { // 이벤트가 수정되면 발생하는 이벤트
								console.log(obj);
							},
							eventRemove : function(obj) { // 이벤트가 삭제되면 발생하는 이벤트
								console.log(obj);
							},
							select : function(arg) { // 캘린더에서 드래그로 이벤트를 생성할 수 있다.
								var title = prompt('Event Title:');
								if (title) {
									calendar.addEvent({
										title : title,
										start : arg.start,
										end : arg.end,
										allDay : arg.allDay
									})
								}
								calendar.unselect()
							}
							// 이벤트
							,
							events : [ {
								title : 'All Day Event',
								start : '2022-08-11',
							}, {
								title : 'Long Event',
								start : '2021-08-07',
								end : '2022-08-10'
							}, {
								groupId : 999,
								title : 'Repeating Event',
								start : '2022-08-09T16:00:00'
							}, {
								groupId : 999,
								title : 'Repeating Event',
								start : '2022-08-16T16:00:00'
							}, {
								title : 'Conference',
								start : '2022-08-11',
								end : '2022-08-13'
							}, {
								title : 'Meeting',
								start : '2022-08-12T10:30:00',
								end : '2022-08-12T12:30:00'
							}, {
								title : 'Lunch',
								start : '2022-08-12T12:00:00'
							}, {
								title : 'Meeting',
								start : '2022-08-12T14:30:00'
							}, {
								title : 'Happy Hour',
								start : '2022-08-12T17:30:00'
							}, {
								title : 'Dinner',
								start : '2022-08-12T20:00:00'
							}, {
								title : 'Birthday Party',
								start : '2022-08-13T07:00:00'
							}, {
								title : 'Click for Google',
								url : 'http://google.com/', // 클릭시 해당 url로 이동
								start : '2022-08-28'
							} ]
						}); // 캘린더 랜더링
				calendar.render();
			});
		})(); */
		
		
		var challengeNo = $("#challengeNo").val();
		
		challengeNo = Number(challengeNo);
		
		console.log(challengeNo);
		
		var bookMarkData = {
				userNo : authUser,
				challengeNo : challengeNo
		}
		
		//북마크 확인하기
		var authUser = "${authUser.userNo}"
		function bkload(){
		if(authUser == "" && authUser == null){
				$("#bookMark").html('<button id="checkbookMark" class="btnNone i-float"><i class="fa fa-star fa-2x"></i></button>');		
			} else{
				$.ajax({
					contentType : 'application/json',     
					data : JSON.stringify(bookMarkData),
					url : '${pageContext.request.contextPath}/challenge/bookMark',
					type : 'POST',
					
					dataType : "json",
					success : function(result){
						if(result == 1){
							$("#bookMark").html('<button id="checkbookMark" class="btnNone i-float"><i class="fa fa-star fa-2x"></i></button>');		
						} else{
							$("#bookMark").html('<button id="unCheckbookMark" class="btnNone i-float"><i class="fa fa-star fa-star-o fa-2x"></i></button>');
						}
					}
				})
			}
		}

		$("#bookMark").on("click", "#unCheckbookMark", function(){
			if(authUser != null && authUser != ""){
			$.ajax({
				contentType : 'application/json',     
				data : JSON.stringify(bookMarkData),
				url : '${pageContext.request.contextPath}/challenge/chkBookMark',
				type : 'POST',
				
				dataType : "json",
				success : function(result){
					$("#bookMark").html('<button id="checkbookMark" class="btnNone i-float"><i class="fa fa-star fa-2x"></i></button>');
				}
			})
			} else{
				alert("로그인해 주세요");
				location.href = "${pageContext.request.contextPath}/loginForm";
				return false;
			}
		})

		$("#bookMark").on("click", "#checkbookMark", function(){
			if(authUser != null || authUser != ""){
				$.ajax({
					contentType : 'application/json',     
					data : JSON.stringify(bookMarkData),
					url : '${pageContext.request.contextPath}/challenge/unChkBookMark',
					type : 'POST',
					
					dataType : "json",
					success : function(result){
						$("#bookMark").html('<button id="unCheckbookMark" class="btnNone i-float"><i class="fa fa-star fa-star-o fa-2x"></i></button>');
					}
				})
			} else {
				alert("로그인해 주세요");
				location.href = "${pageContext.request.contextPath}/loginForm";
				return false;
			}
		})

		$(document).ready(function(){
			bkload();
		})
		

</script>


</body>

</html>