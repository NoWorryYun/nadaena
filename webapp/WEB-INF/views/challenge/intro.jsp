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
								${cMap.intro.clgTitle}<br>${cMap.intro.recRD}~${cMap.intro.recRDP}<br>
							</h2>
							<div id="bookMark" class="i-float"></div>
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
										<div class="introduce-size">
											<div class="float-l">
												<div>
													<img class="photograph" alt="" src="${pageContext.request.contextPath}/upload/forNaDaeNa/${cMap.intro.img}">
												</div>
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
													<form id="joinForm" method="post" action="${pageContext.request.contextPath}/challenge/clginout">
														<table class="table">
															<tbody style="border-style: none;">
																<tr style="border-style: none;">
																	<td class="write-table-label">모집기간</td>
																	<td class="font-12">
																		<p>
																			<span id="startPeriod"></span>${cMap.intro.regDate} ~ <span id="recruitPeriod"></span>${cMap.intro.recRDM} (${cMap.intro.recruitment}일)
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
																	<td class="font-12">
																		<c:forEach items="${cMap.certifyList}" var="ChallengeVo">
																			<c:choose>
																				<c:when test="${ChallengeVo.subOn != '-1'}">
																					<p>
																						${ChallengeVo.certifyTitle}(${ChallengeVo.subOn}시)~(${ChallengeVo.subOff}시)<br>
																					</p>
																				</c:when>
																				<c:otherwise>
																					<p>
																						${ChallengeVo.certifyTitle} (시간제한없음)<br>
																					</p>
																				</c:otherwise>
																			</c:choose>
																		</c:forEach>
																	</td>
																</tr>
																<tr class="intro-cell">
																	<td class="write-table-label">난이도</td>
																	<td class="font-12">
																	<c:choose>
																		<c:when test="${cMap.intro.clgLevel == 1}">
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
																		<div class="textPay">
																		<div class="removeSelect">
																		<c:choose>
																			<c:when test="${cMap.joinChk.payment > 500}">
																				${cMap.joinChk.payment} &nbsp;원
																			</c:when>
																			<c:otherwise>
																				<c:choose>
																					<c:when test="${cMap.intro.clgLevel == 3}">
																						<select name="payment">
																							<option value="0">금액설정</option>
																							<option value="10000">10,000</option>
																							<option value="20000">20,000</option>
																							<option value="30000">30,000</option>
																							<option value="40000">40,000</option>
																							<option value="50000">50,000</option>
																							<option value="60000">60,000</option>
																							<option value="70000">70,000</option>
																							<option value="80000">80,000</option>
																							<option value="90000">90,000</option>
																							<option value="100000">100,000</option>
																						</select>
																					</c:when>
																					<c:when test="${cMap.intro.clgLevel == 2}">
																						<select name="payment">
																							<option value="0">금액설정</option>
																							<option value="10000">10,000</option>
																							<option value="20000">20,000</option>
																							<option value="30000">30,000</option>
																							<option value="40000">40,000</option>
																							<option value="50000">50,000</option>
																						</select>
																					</c:when>
																					<c:otherwise>
																						<select name="payment">
																							<option value="0">금액설정</option>
																							<option value="10000">10,000</option>
																							<option value="20000">20,000</option>
																							<option value="30000">30,000</option>
																						</select>
																					</c:otherwise>
																				</c:choose> &nbsp;원
																			</c:otherwise>
																		</c:choose>
																		</div>
																		</div>
																	</td>
																</tr>
																<tr style="border-style: none;">
																	<td id="enter-challenge-cell" class="type-center" colspan="2">
																		<c:choose>
																			<c:when test="${cMap.joinChk.userCount > 0}">
																				<c:choose>
																					<c:when test="${cMap.joinChk.founder == 2}">
																						<input type="hidden" name="clgInOutChk" value="2">
																						<button id="btnSubmit" class="font-12 btnjoin" type="submit">참여 취소하기</button>
																					</c:when>
																					<c:otherwise>
																						<input type="hidden" name="clgInOutChk" value="3">
																						<button id="btnSubmit" class="font-12 btnjoin" type="submit">챌린지 삭제하기</button>
																					</c:otherwise>
																				</c:choose>
																			</c:when>
																			<c:otherwise>
																				<input type="hidden" name="clgInOutChk" value="1">
																				<button id="btnSubmit" class="font-12 btnjoin" type="submit">챌린지 참여하기</button>
																			</c:otherwise>
																		</c:choose>
																		
																	</td>
																</tr>
															</tbody>
														</table>
														<input type="hidden" id="challengeNo" name="challengeNo" value="${cMap.intro.challengeNo}">
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


<script type="text/javascript">
	var authUser = "${authUser.userNo}"
		
	console.log(authUser);
	
	//회원 참여 갯수 체크하기
	function joinCount(){
		var userNo = "${authUser.userNo}";
		var reVals = true;
		
		$.ajax({
			contentType : 'application/json',     
			data : JSON.stringify(userNo),
			url : '${pageContext.request.contextPath}/joinCount',
			type : 'POST',
			
			async: false,  //동기화
			dataType : "json",
			success : function(result){
				if(result >= 3){
					alert("참여 가능한 챌린지 갯수가 초과하였습니다. (3개까지 가능)");
					reVals = false;
				} else{
					console.log(result);
					reVals = true;
				}
			}
		})
		return reVals;
		console.log(reVals);
	}
	
	//회원 포인트 체크하기
	function pointChk(){
		var reVal = true;
		
		var userNo = "${authUser.userNo}";
		console.log(userNo);
		var payment = $('select[name="payment"]').val();
		console.log(payment);
		$.ajax({
			contentType : 'application/json',     
			data : JSON.stringify(userNo),
			url : '${pageContext.request.contextPath}/pointChk',
			type : 'POST',
			
			async: false,  //동기화
			dataType : "json",
			success : function(result){
				if(result < payment){
					console.log(result);
					alert("포인트가 모자랍니다.");
					reVal = false;
				} else{
					console.log(result);
					reVal = true;
				}
			} 
		})
		return reVal;
		console.log(reVal);
	}
	
	
	$("#joinForm").on("submit", function(){
		var payment = $('select[name="payment"]').val();
		var clgOutChk = $("[name='clgInOutChk']").val();
		
		console.log("clgOutchk = " + clgOutChk);
		
		if(clgOutChk == 1 ){
			if(authUser == "" || authUser == null){
				alert("로그인 해주세요");
				location.href = "${pageContext.request.contextPath}/loginForm";
				return false;
			} 
			
			if(payment == "" || payment == null || payment < 1){
				alert("금액을 설정해 주세요.");
				return false;
			}
			
	  		if( joinCount() == false) {
	  			return false;
	  		}
	  		
	  		if( pointChk() == false) {
	  			return false;
	  		}
	  		
	  		alert("참여가 완료되었습니다!");
	  		
		} else{
			
			alert("참여가 취소되었습니다!");
		}
  		
	})
	
	
	var challengeNo = $("#challengeNo").val();
	
	challengeNo = Number(challengeNo);
	
	console.log(challengeNo);
	
	var bookMarkData = {
			userNo : authUser,
			challengeNo : challengeNo
	}
	
	$(document).ready(function(){
		clgChk();
		
		bkload();
		
		display();
		
	})
	
	//북마크 확인하기
	function bkload(){
	if(authUser == "" && authUser == null){
			$("#bookMark").html('<button id="checkbookMark" class="btnNone i-float"><i class="fa fa-star fa-2x"></i></button>');		
		} else{
			$.ajax({
				contentType : 'application/json',     
				data : JSON.stringify(authUser),
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
	
	
	function clgChk(){
	$.ajax({
			contentType : 'application/json',     
			data : JSON.stringify(challengeNo),
			url : '${pageContext.request.contextPath}/clgChk',
			type : 'POST',
			
			async: false,  //동기화
			dataType : "json",
			success : function(result){
				if(result < 1){
					console.log(result);
					alert("존재하지 않는 챌린지입니다.");
					location.href = "${pageContext.request.contextPath}/main";
				}
			}
		})
	}

	
	
	var Now = new Date(); // 현재 날짜 및 시간
    var nowYear = Now.getFullYear(); // 년
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
    nowYear = pluszero(nowYear); //만들었던 함수 적용
    nowMonth = pluszero(nowMonth); //만들었던 함수 적용
    nowDay = pluszero(nowDay);
    nowHour = pluszero(nowHour);
    nowMins = pluszero(nowMins);
 
    var nowtime = nowYear + nowMonth + nowDay; // 월+일+시+분
	
	nowtime = Number(nowtime);
	console.log(nowtime);
	
	var startDate = "${cMap.intro.startDate}"
	var endDate = "${cMap.intro.endDate}"
	startDate = Number(startDate);
	console.log(startDate);
	
	function display(){
	  if(startDate <= nowtime){ //지금이 시작시간보다 작거나, 종류시간보다 크면      
		    $('.btnjoin').css('display', 'none'); 
			$(".removeSelect").remove();
			$('.textPay').append('<span>이미 시작된 챌린지입니다.</span>');
		}
	}
  
</script>

</body>


 
</html>