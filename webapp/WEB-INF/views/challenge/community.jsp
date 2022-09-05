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
								<div id="board-list" class="tab-content">
									
									<div id="board-write-box">
										<div class="certify-board-header">
											<p class="certify-header">게시판</p>
										</div>
										<div>
											<div>
												<form action="${pageContext.request.contextPath}/challenge/${cMap.intro.challengeNo}/community" method="get">
												<select name="category">
													<optgroup label="카테고리" >
														<option value="" selected="selected">전체</option>
														<option value="1">팁</option>
														<option value="2">응원</option>
														<option value="3">질문</option>
													</optgroup>
												
												</select>
												<div class="search-container search-board">
													
													<input class="search-input board-search-box" type="text" name="keyword" placeholder="검색어를 입력하세요" />
													<button class="btn btn-light search-btn board-search-button" type="submit">
														<i class="fa fa-search"></i>
													</button>
												
												</div>
												</form>
												
												<div id="read-board-main">
													<div class="font-14">
														<table class="table">
															<colgroup>
																<col style="width: 10%;">
																<col >
																<col style="width: 10%;">
																<col style="width: 10%;">
																<col style="width: 15%;">
															</colgroup>
															<thead>
																<tr>
																	<th class="board-category-size">카테고리</th>
																	<th class="title-size">제목</th>
																	<th class="writer-size">작성자</th>
																	<th class="board-hit-size">조회수</th>
																	<th class="board-upload-size">시간</th>
																</tr>
															</thead>
															<tbody>
																<c:forEach var="BoardVo" items="${cMap.boardList}">
																	<tr style="cursor:pointer;">
																		<c:if test="${BoardVo.category == 1}">
																			<td>팁</td>
																		</c:if>
																		<c:if test="${BoardVo.category == 2}">
																			<td>응원</td>
																		</c:if>
																		<c:if test="${BoardVo.category == 3}">
																			<td>질문</td>
																		</c:if>
																		
																		<td><a href="${pageContext.request.contextPath}/challenge/${BoardVo.challengeNo}/community/readboard/${BoardVo.boardNo}">${BoardVo.title}</a></td>
																		<td>${BoardVo.nickName}</td>
																		<td>${BoardVo.hit}</td>
																		<td>${BoardVo.boardDate2}</td>
																	</tr>
																</c:forEach>
																
															</tbody>
														</table>
														<div id="write-board-regist" class="text-right i-float">
															<c:if test="${cMap.joinChk.userCount > 0}">
																<a id="btn-goWriteForm" href="${pageContext.request.contextPath}/challenge/${cMap.intro.challengeNo}/community/writeboardForm" class="make-challenge certify" >글쓰기</a>
															</c:if>
														</div>
													</div>
												</div>
											</div>
											
											
											<div class="paging-box">
												<nav>
													<ul class="pagination pagination-sm">
														<c:if test="${cMap.prev}">
															<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/challenge/${cMap.intro.challengeNo}/community?crtPage=${cMap.startPageBtnNo-1}">◀</a></li>
														</c:if>
														
														<c:forEach begin="${cMap.startPageBtnNo}" end="${cMap.endPageBtnNo}" step="1" var="page">							
															<c:choose>
																<c:when test="${param.crtPage==page}">
																	<li class="page-item active"><a class="page-link" href="${pageContext.request.contextPath}/challenge/${cMap.intro.challengeNo}/community?crtPage=${page}">${page}</a></li>
																</c:when>
																<c:otherwise>
																	<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/challenge/${cMap.intro.challengeNo}/community?crtPage=${page}">${page}</a></li>
																</c:otherwise>
															</c:choose>	
														</c:forEach>
														
														<c:if test="${cMap.next}">
															<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/challenge/${cMap.intro.challengeNo}/community?crtPage=${cMap.endPageBtnNo+1}">▶</a></li>
														</c:if>
													</ul>
												</nav>
											</div>
											
											
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
															<img src="${pageContext.request.contextPath}/${item.img}">
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
															<img src="${pageContext.request.contextPath}/${item.img}">
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
															<img src="${pageContext.request.contextPath}/${item.img}">
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




</body>
<script type="text/javascript">

$(function(){
	   if("${cMap.intro.challengeNo}" == ""){
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