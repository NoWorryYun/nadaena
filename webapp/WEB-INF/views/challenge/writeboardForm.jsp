
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

<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/community.css">

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
									<li class="nav-item read-tab" role="presentation"><a id="certifyForm" class="nav-link" role="tab"
										href="${pageContext.request.contextPath}/challenge/${cMap.intro.challengeNo}/certify">인증하기</a></li>
									<li class="nav-item read-tab" role="presentation"><a id="community" class="nav-link  active" role="tab" href="${pageContext.request.contextPath}/challenge/${cMap.intro.challengeNo}/community">커뮤니티</a></li>
									<li class="nav-item read-tab" role="presentation"><a id="review" class="nav-link" role="tab" href="${pageContext.request.contextPath}/challenge/${cMap.intro.challengeNo}/review">후기글</a></li>
								</ul>
								<div id="board-writeForm" class="tab-content">

									<div id="board-write-box">
										<div class="certify-board-header">
											<p class="fw-bold font-20">게시판</p>
										</div>
										<div>
											<div>
												<form action="${pageContext.request.contextPath}/challenge/${cMap.intro.challengeNo}/community/writeboard" method="post">
													<table class="table">
														<tbody class="table-none">
															<tr class="border-white-underline">
																<td class="line-height25 write-board-label">제목</td>
																<td class="write-table-content" colspan="3">
																	<input type="text" class="write-title-shape" name="title" value="">
																</td>
															</tr>

															<tr class="border-white-underline">
																<td class="line-height25 write-board-label">카테고리 설정</td>
																<td class="write-board-content">
																	<select class="select-width" name="category">
																			<option value="1" selected="selected">팁</option>
																			<option value="2">응원</option>
																			<option value="3">질문</option>
																	</select>
																</td>
																<td class="line-height25 write-board-label">비밀번호 설정</td>
																<td class="write-board-content">
																	<input type="password" class="board-password" name="boardPass" value="">
																</td>
																
															</tr>


														</tbody>
													</table>
													
												
													<textarea class="write-table-content-text" name="boardContent"></textarea>	
													
													<div class="pull-right">
														<button type="submit" class="make-challenge certify">등록</button>
														<a class="btn-nomal certify" href="${pageContext.request.contextPath}/challenge/${cMap.intro.challengeNo}/community">목록</a>
													</div>
													
													<input type="hidden" class="board-password" name="challengeNo" value="${cMap.intro.challengeNo}">	
												</form>
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
											<div id="newOrderList" class="swiper-wrapper">
											
												<c:forEach items="${bestListMap.newOrderList}" var="item">
													<div class=" swiper-slide" style="position: relative;">
														<a href="${pageContext.request.contextPath}/challenge/${item.challengeNo}/intro"> 
															<img src="${pageContext.request.contextPath}/${item.img}">
														</a>
														<p class="s-title" style="position: absolute; top:20px; left: 16px; font-size: 16px">
															<a href="${pageContext.request.contextPath}/challenge/${item.challengeNo}/intro">
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
											
												<c:forEach items="${bestListMap.newOrderList}" var="item">
													<div class=" swiper-slide" style="position: relative;">
														<a href="${pageContext.request.contextPath}/challenge/${item.challengeNo}/intro"> 
															<img src="${pageContext.request.contextPath}/${item.img}">
														</a>
														<p class="s-title" style="position: absolute; top:20px; left: 16px; font-size: 16px">
															<a href="${pageContext.request.contextPath}/challenge/${item.challengeNo}/intro">
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
											
												<c:forEach items="${bestListMap.newOrderList}" var="item">
													<div class=" swiper-slide" style="position: relative;">
														<a href="${pageContext.request.contextPath}/challenge/${item.challengeNo}/intro"> 
															<img src="${pageContext.request.contextPath}/${item.img}">
														</a>
														<p class="s-title" style="position: absolute; top:20px; left: 16px; font-size: 16px">
															<a href="${pageContext.request.contextPath}/challenge/${item.challengeNo}/intro">
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
				
				
			</div>
		</div>
	</main>



	<!-- footer -->
	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
	<!-- /footer -->


</body>
<script type="text/javascript">

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

$(document).ready(function(){
	bkload();
})





</script>






</html>
