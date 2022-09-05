
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
								<div id="board-read" class="tab-content">
									<div id="board-read-box">
										<div>
											<div class="board-read-header">
												<p class="fw-bold font-20">게시판</p>
											</div>
											<div>
												<div class="board-content-box">
													<div class="table-responsive">
														<table class="table">
															<colgroup>
																<col style="width: 10%;">
																<col style="width: 30%;">
																<col style="width: 10%;">
																<col style="width: 10%;">
																<col style="width: 10%;">
																<col style="width: 30%;">
															</colgroup>
															<tbody class="table-top-bottom">
																<tr class="border-white-underline">
																	<td class="board-read-cell10" style="">작성자</td>
																	<td class="board-read-cell">${cMap.boardVo.nickName}</td>
																	<td class="board-read-cell10">조회수</td>
																	<td class="board-read-cell">${cMap.boardVo.hit}</td>
																	<td class="board-read-cell10">작성일</td>
																	<td class="board-read-cell">${cMap.boardVo.boardDate}</td>
																</tr>
																<tr>
																	<td class="board-read-cell10">제목</td>
																	<td class="board-read-cell" colspan="5">${cMap.boardVo.title}</td>
																</tr>
															</tbody>
														</table>
													</div>
													<div class="border-content">
														<p>
															${cMap.boardVo.boardContent}
														</p>
													</div>
												</div>
												
												<div id="write-board-regist" class="text-right">
													<a id="btn-goEditForm" class="make-challenge certify" href="${pageContext.request.contextPath}/challenge/${cMap.intro.challengeNo}/community/modiboard/${BoardVo.boardNo}">수정</a>
													<a class="btn-nomal certify" href="${pageContext.request.contextPath}/challenge/${cMap.intro.challengeNo}/community">목록</a>
												</div>
												
												<div>
													<div class="fw-bold font-20">
														<p>댓글</p>
													</div>
													<div class="table-responsive" style="font-size: 12px;">
														<table id="reply-area" class="table">
															<tbody style="border: none;">
																<c:forEach var="commentVo" items="${cMap.replyList}">
																	<tr>
																		<td class="board-read-label">${commentVo.nickName}
																			<div>
																				<a class="report2" href="#">신고</a>
																				<p class="upload-date">
																					<span style="color: rgb(33, 37, 41);">${commentVo.commentDate}</span><br>
																				</p>
																			</div>
																		</td>
																		<td class="board-read-cell">${commentVo.comments}<br></td>
																	</tr>
																</c:forEach>
															</tbody>
														</table>
													</div>
													<div class="board-read-comment-box">
														<div class="board-read-comment-textbox">
															<input type="text" class="comment-text" name="replyContent">
														</div>
														<div class="button-area">
															<button id="btn-replyWrite" class="btn btn-primary comment-button" type="button">댓글등록</button>
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




	<!-- 
	//리뷰 모달창 
	<div id="review-modal" class="modal fade show" role="dialog" tabindex="-1" style="display: block;">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<div>
						<h4 class="modal-title">매일 10페이지 책 읽기</h4>
					</div>
					<button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<div class="modal-image-box">
						<div class="modal-image">
							<img src="bg-navbar-dropdown-themes.png" />
						</div>
					</div>
					<div class="review-text">
						<div>
							<p class="bold-underline">후기</p>
						</div>
						<p class="font-14">매일 10페이지 읽다가 9페이지 쯤 읽으면 잠듭니다. 대낮에 읽으세요. 가끔 펴자마자 잠듭니다. 리워드도 달달합니다. 두번하세요. 세번하세요.</p>
					</div>
				</div>
				<div class="modal-nicname-box">
					<p class="modal-nickname">작성자 : 배달의기마민족</p>
					<p class="modal-upload-date">작성일 : 2022-08-31</p>
				</div>
				<div class="modal-footer">
					<button class="btn btn-light" type="button" data-bs-dismiss="modal">닫기</button>
					<button class="btn btn-primary" type="button">삭제</button>
				</div>
			</div>
		</div>
	</div>
 -->



</body>

<script>

$("#btn-replyWrite").on("click", function(){
	
	var commentVo = {};
	commentVo.comments = $("[name='replyContent']").val();
	commentVo.boardNo = "${cMap.boardVo.boardNo}";
		
	$.ajax({
		url : "${pageContext.request.contextPath }/api/community/replyWrite",		
		type : "post",
		//contentType : "application/json",
		data : commentVo,
		dataType : "json",
		success : function(commentVo){
			console.log(commentVo);
			render(commentVo, "up");
			$("[name='replyContent']").val("");
			
		},
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}
	});
	
	
});





/* 리스트 그리기 1개씩*/
function render(commentVo, opt){
	
	console.log("render()");
	
	var str = '';
	
	str += '<tr>' ;
	str += '    <td class="board-read-label">'+ commentVo.nickName ;
	str += '        <div>' ;
	
	str += '            <a class="report2" href="#">신고</a>' ;
	str += '            <p class="upload-date">' ;
	str += '                <span style="color: rgb(33, 37, 41);">'+ commentVo.commentDate + '</span><br>' ;
	str += '            <p>' ;
	
	str += '        </div>' ;
	str += '    </td>' ;
	str += '    <td class="board-read-cell">'+ commentVo.comments  + '<br></td>' ;
	str += '<tr>' ;
	
	if(opt == "down"){
		$("#reply-area tbody").append(str);	
	
	}else if(opt == "up"){
		$("#reply-area tbody").prepend(str);
	
	}else {
		console.log("opt오류");
	}
}
	

authUser = "${authUser.userNo}";

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
