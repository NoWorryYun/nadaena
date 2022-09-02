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
								${cMap.intro.clgTitle}<br>${cMap.intro.recRD}~${cMap.intro.recRDP}<br>
							</h2>
							<div id="bookMark" class="i-float"></div>
						</div>

						<div id="read-content">
							<div id="read-tab">
								<ul class="nav nav-tabs" role="tablist">
									<li class="nav-item read-tab" role="presentation"><a id="introForm" class="nav-link" role="tab" href="${pageContext.request.contextPath}/challenge/${cMap.intro.challengeNo}/intro">소개글</a></li>
									<li class="nav-item read-tab" role="presentation"><a id="certifyForm" class="nav-link active" role="tab"
										href="${pageContext.request.contextPath}/challenge/${cMap.intro.challengeNo}/certify">인증하기</a></li>
									<li class="nav-item read-tab" role="presentation"><a id="community" class="nav-link" role="tab" href="${pageContext.request.contextPath}/challenge/${cMap.intro.challengeNo}/community">커뮤니티</a></li>
									<li class="nav-item read-tab" role="presentation"><a id="review" class="nav-link" role="tab" href="${pageContext.request.contextPath}/challenge/${cMap.intro.challengeNo}/review">후기글</a></li>
								</ul>
								<div class="tab-content">
									<div class="tab-pane active" role="tabpanel" id="tab-2">

										<div id="certify-wrap">
											<div id="certify-main">
												<div>
													<div>
														<div>
															<div id='calendar-container'>
																<div id='calendar'></div>
															</div>
														</div>
													</div>
													<div class="certify-graph-box">
														<div class="certify-graph">
															<p class="font-14">전체 챌린지 달성률</p>
															<div class="progress-bar">
																<div class="progress-all">
																	<p id="allprogress">72%</p>
																</div>
															</div>
														</div>
														<div class="certify-graph">
															<p class="font-14">나의 챌린지 달성률</p>
															<div class="progress-bar">
																<div class="progress-mine">
																	<p id="myprogress">82%</p>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div>
													<p class="certify-upload-header">인증업로드</p>
													
													<c:if test="${param.result == 'fail'}">
														<p class="failError">인증에 실패하셨습니다. <br>인증 사진을 확인해주세요</p>
													</c:if>
													
													<div class="table-responsive table-certify-form">
														<table class="table">
															<tbody>
																<tr>
																	<c:forEach  items="${cMap.certifyList}" var="ChallengeVo">
																		<td class="certify-label certify-label-none" colspan="">
																			<form id="certify-check" action="${pageContext.request.contextPath}/challenge/${ChallengeVo.challengeNo}/certified" method="post" enctype="multipart/form-data">
																				<div class="type-center table-certify-label">
																						<p class="word-wrap">${ChallengeVo.certifyTitle}</p>
																					<c:choose>
																						<c:when test="${ChallengeVo.subOn != '-1'}">
																							<p>
																								(${ChallengeVo.subOn}시)~(${ChallengeVo.subOff}시)<br>
																							</p>
																						</c:when>
																						<c:otherwise>
																							<p>
																								(시간제한없음)<br>
																							</p>
																						</c:otherwise>
																					</c:choose>
																				</div>
																				<div class="type-center table-certify-label">
																					<input type="file" name="imgs">
																				</div>
																				<div class="type-center table-certify-labels btn-certify">
																					<input type="hidden" class="certifyNo" name="certifyNo" value="${ChallengeVo.certifyNo}">
																					
																					<c:choose>
																						<c:when test="${ChallengeVo.certifyChk > 0 && ChallengeVo.certifyChk != null}">
																							<button class="make-challenge certify" type="submit">수정하기</button>
																							<input type="hidden" name="certifyChk" value="2">
																							<input type="hidden" name="certifiedNo" value="${ChallengeVo.certifiedNo}">
																						</c:when>
																						<c:otherwise>
																							<button class="make-challenge certify" type="submit">인증하기</button>
																							<input type="hidden" name="certifyChk" value="1">
																						</c:otherwise>
																					</c:choose>
																				</div>
																			</form>
																		</td>
																	</c:forEach>
																</tr>
															</tbody>
														</table>
													</div>
												</div>
											</div>
											<div class="certify-board">
												<div class="certify-board-header">
													<p class="certify-header">인증게시판</p>
													<ul class="list-inline" id="certify-all-mine">
														<li class="list-inline-item"><a href="#">전체</a></li>
														<li class="list-inline-item"><a href="#">내인증글</a></li>
													</ul>
												</div>
												<div id="certify-list">
													<ul class="list-inline text-center">
														<c:forEach items="${pMap.certifyIMGList}" var="ChallengeVo">
														<li class="list-inline-item">
																<a href="#"><img class="certify-img-size" src="${pageContext.request.contextPath}/upload/forNadaeNa/${ChallengeVo.certifiedIMG}"></a>
															<div class="certify-list-info">
																<div>
																	<div>
																		<a class="report" href="#">신고</a>
																	</div>
																	<p class="upload-date">인증제목 : ${ChallengeVo.certifyTitle}</p>
																	<p class="upload-date">업로드일 : ${ChallengeVo.certifieddate}</p>
																	<p class="nickname">${ChallengeVo.nickname} 님</p>
																</div>
															</div>
														</li>
														</c:forEach>
													</ul>
													<div class="paging-box">
														<nav>
															<nav>
																<ul class="pagination pagination-sm">
																	<c:if test="${pMap.prev}">
																		<li class="page-item"><a class="page-link" aria-label="Previous" href="${pageContext.request.contextPath }/certify?crtPage=${pMap.startPageBtnNo-1}"><span aria-hidden="true">«</span></a></li>
																	</c:if>
																	<c:forEach begin="${pMap.startPageBtnNo}" end="${pMap.endPageBtnNo}" step="1" var="page">	
																		<c:choose>
																			<c:when test="${param.crtPage==page}">
																				<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath }/challenge/${cMap.intro.challengeNo}/certify?crtPage=${page}">${page}</a></li>
																			</c:when>
																			<c:otherwise>
																				<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath }/challenge/${cMap.intro.challengeNo}/certify?crtPage=${page}">${page}</a></li>
																			</c:otherwise>
																		</c:choose>	
																	</c:forEach>
																	
																	<c:if test="${pMap.next}">
																		<li class="page-item"><a class="page-link" aria-label="Next" href="${pageContext.request.contextPath }/challenge/${cMap.intro.challengeNo}/certify?crtPage=${pMap.endPageBtnNo+1}"><span aria-hidden="true">»</span></a></li>
																	</c:if>
																</ul>
															</nav>
														</nav>
													</div>
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

	<input type="hidden" id="challengeNo" name="challengeNo" value="${cMap.intro.challengeNo}">
	<script>
		(function() {
			$(function() {
				// calendar element 취득
				var calendarEl = $('#calendar')[0];
				// full-calendar 생성하기
				var calendar = new FullCalendar.Calendar(
						calendarEl,
						{
							height : '700px', // calendar 높이 설정
							expandRows : true, // 화면에 맞게 높이 재설정
							slotMinTime : '00:00', // Day 캘린더에서 시작 시간
							slotMaxTime : '24:00', // Day 캘린더에서 종료 시간
							// 해더에 표시할 툴바
							headerToolbar : {
								left : 'prev,next today',
								center : 'title',
								right : 'dayGridMonth,timeGridWeek,timeGridDay,listWeek'
							},
							initialView : 'dayGridMonth', // 초기 로드 될때 보이는 캘린더 화면(기본 설정: 달)
							navLinks : true, // 날짜를 선택하면 Day 캘린더나 Week 캘린더로 링크
							editable : false, // 수정 가능?
							selectable : false, // 달력 일자 드래그 설정가능
							nowIndicator : false, // 현재 시간 마크
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
							events : renderList()

						}); // 캘린더 랜더링
				calendar.render();
			});
		})();
		
		
		var challengeNo = $("#challengeNo").val();
		var authUser = "${authUser.userNo}";
		
		authUser = Number(authUser);
		console.log(authUser);
		
		console.log(typeof(authUser));
		
		var dateChkData = {
			userNo : authUser,
			challengeNo : challengeNo
		}
		
		console.log(dateChkData);
		
		function renderList(){
			var dataList = [];
			
			$.ajax({
				contentType : 'application/json',
				data : JSON.stringify(dateChkData),
				url : '${pageContext.request.contextPath}/challenge/dateChk',
				type : 'POST',

				
				async: false,  //동기화
				dataType : "json",
				success : function(calDataList) {
					
					for(var i=0; i<calDataList.length; i++){
						var item = {};
						item.title = calDataList[i].certifyTitle;
						if(calDataList[i].subOn != -1){
							item.start = calDataList[i].toDay +'T'+calDataList[i].sbo;
							item.end = calDataList[i].toDay +'T'+calDataList[i].sbof; 
						} else{
							item.start = calDataList[i].toDay +'T'+ '00:00:00';
							item.end = calDataList[i].toDay +'T'+ '23:00:00'; 
						}
						dataList.push(item);
					}

					console.log(dataList);
					
					
					var cList = [];
					
					var today = new Date();
					today = today.toString();
					today = today.substring(4,15);
					
					console.log(today);
					
					for (var i = 0; i < dataList.length; i++) {
						cList[i] = dataList[i].start.substring(11,13) + dataList[i].start.substring(14,16);
						
					}
					
					console.log(cList);
					
					
				}
			})
			
			return dataList;
		}
		
		function makeRenderData(calDataList){
			
			
			return dataList;
			
			
		}
		
	</script>
	<script type="text/javascript">
		var authUser = "${authUser.userNo}";
		var challengeNo = $("#challengeNo").val();
		
		challengeNo = Number(challengeNo);
		authUser = Number(authUser);
		console.log(authUser);
		console.log(challengeNo);

		challengeVo = {
			userNo : authUser,
			challengeNo : challengeNo
		}
		
		if (authUser == "" || authUser == null) {
			alert("로그인해주세요");
			location.href = "${pageContext.request.contextPath}/loginForm"
		}
		
		var returnIntro = "${pageContext.request.contextPath}/challenge/"+challengeNo+"/intro";
		
		//참여유저 확인
		function joinChk(){
		$.ajax({
			contentType : 'application/json',
			data : JSON.stringify(challengeVo),
			url : '${pageContext.request.contextPath}/challenge/joinchk',
			type : 'POST',

			async: false,  //동기화
			dataType : "json",
			success : function(result) {
				if(result == 0){
					console.log(result);
					alert("참여한 유저만 이용 가능한 게시판입니다.");
					location.href = returnIntro;
				}
			
			}
		})
		}
		
		$("#certify-check").on("submit", function(){
			var inputFile = $(this).$('input[name="imgs"]');
			
			console.log(inputFile);
			return false;
			
			if(inputFile[0].files[0] == "" && inputFile[0].files[0] == null){
	  			alert("대표 사진을 설정해 주세요");
	  			return false;
	  		}
		})
		$(document).ready(function() {
			joinChk();
			bkload();
			myprogress();
			allprogress();
		})



		var bookMarkData = {
			userNo : authUser,
			challengeNo : challengeNo
		}

		//북마크 확인하기
		function bkload() {
			if (authUser == "" || authUser == null) {
				$("#bookMark").html('<button id="checkbookMark" class="btnNone i-float"><i class="fa fa-star fa-2x"></i></button>');
			} else {
				$.ajax({
					contentType : 'application/json',
					data : JSON.stringify(authUser),
					url : '${pageContext.request.contextPath}/challenge/bookMark',
					type : 'POST',
					async: false,  //동기화
					dataType : "json",
					success : function(result) {
						if (result == 1) {
							$("#bookMark").html('<button id="checkbookMark" class="btnNone i-float"><i class="fa fa-star fa-2x"></i></button>');
						} else {
							$("#bookMark").html('<button id="unCheckbookMark" class="btnNone i-float"><i class="fa fa-star fa-star-o fa-2x"></i></button>');
						}
					}
				})
			}
		}

		$("#bookMark").on("click", "#unCheckbookMark", function() {
			$.ajax({
				contentType : 'application/json',
				data : JSON.stringify(bookMarkData),
				url : '${pageContext.request.contextPath}/challenge/chkBookMark',
				type : 'POST',

				dataType : "json",
				success : function(result) {
					$("#bookMark").html('<button id="checkbookMark" class="btnNone i-float"><i class="fa fa-star fa-2x"></i></button>');
				}
			})
		})

		$("#bookMark").on("click", "#checkbookMark", function() {
			$.ajax({
				contentType : 'application/json',
				data : JSON.stringify(bookMarkData),
				url : '${pageContext.request.contextPath}/challenge/unChkBookMark',
				type : 'POST',
	
				dataType : "json",
				success : function(result) {
					$("#bookMark").html('<button id="unCheckbookMark" class="btnNone i-float"><i class="fa fa-star fa-star-o fa-2x"></i></button>');
				}
			})
		})
						
		
		
		console.log(challengeVo)
		
		function myprogress(){
			$.ajax({
				contentType : 'application/json',
				data : JSON.stringify(challengeVo),
				url : '${pageContext.request.contextPath}/challenge/myprogress',
				type : 'post',
				
				async: false,  //동기화
				dataType : "json",
				success : function(result){
					$("#myprogress").html(result+'%');
					$(".progress-mine").css('width', result+'%');
				}
			})
		}				

		function allprogress(){
			$.ajax({
				contentType : 'application/json',
				data : JSON.stringify(challengeVo),
				url : '${pageContext.request.contextPath}/challenge/allprogress',
				type : 'post',
				
				async: false,  //동기화
				dataType : "json",
				success : function(result){
					$("#allprogress").html(result+'%');
					$(".progress-all").css('width', result+'%');
				}
			})
		}		
		
		
		var Now = new Date(); // 현재 날짜 및 시간
	    var nowMonth = Now.getMonth() + 1; // 월
	    var nowDay = Now.getDate(); // 일
	    var nowHour = Now.getHours(); // 시
	    var nowMins = Now.getMinutes(); // 분
	
	 
	    function pluszero(time){
	        var time = time.toString(); // 시간을 숫자에서 문자로 바꿈
	        if(time.length < 2){ //2자리 보다 작다면
	            time = '0' + time; //숫자앞 0을 붙여줌
	            return time; //값을 내보냄
	    }else{
	        return time; //2자리라면 값을 내보냄
	    }
	    }
	    nowMonth = pluszero(nowMonth); //만들었던 함수 적용
	    nowDay = pluszero(nowDay);
	    nowHour = pluszero(nowHour);
	    nowMins = pluszero(nowMins);
	 
	    var nowtime = nowMonth + nowDay + nowHour + nowMins; // 월+일+시+분
		
	
	
		
		var startDate = "${cMap.intro.startDate}"
		var endDate = "${cMap.intro.endDate}"
		
		console.log("startDate");
		console.log(startDate);
		console.log(typeof(startDate));
		console.log("endDate");
		console.log(endDate);
		console.log(typeof(endDate));
		

		
	    if(startDate > nowtime || endDate < nowtime ){ //지금이 시작시간보다 작거나, 종류시간보다 크면         $('.call_btn img').attr('src', 'icon_off.png');  //이미지 주소 변경    }
		   $('.make-challenge').css('display', 'none');  //이미지 주소 변경   
		}
		
		

	</script>

</body>






</html>