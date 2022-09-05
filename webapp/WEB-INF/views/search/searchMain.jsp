<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
<title>검색결과</title>

<!-- css -->
<link rel="stylesheet"href="${pageContext.request.contextPath }/assets/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/fonts/font-awesome.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/common.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/mainslider.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/saerch.css">


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
			<div>
				<div class="search-result">
					<p class="search-title">나대나 모든 챌린지를 확인해보세요!</p>
				</div>
				
				<div class="table-responsive">
				
					<table class="table">
						<tbody>
							<tr>
								<td class="table-name">
									<p class="select-name">
										카테고리<br />선택
									</p>
								</td>
								<td class="table-select">
									<div class="div-name">
										<table class="category-letter">
											<tbody class="tbody">
												<tr>
													<td>
														<li class="list-inline-item"><input type="radio"
															value="1"  name="category" />운동</li>
													</td>
													<td>
														<li class="list-inline-item"><input type="radio"
															value="2" name="category" />봉사활동</li>
													</td>
													<td>
														<li class="list-inline-item"><input type="radio"
															value="3"name="category" />독서</li>
													</td>
													<td>
														<li class="list-inline-item"><input type="radio"
															value="4" name="category" />건강</li>
													</td>
												</tr>
												<tr>
													<td>
														<li class="list-inline-item"><input type="radio"
															value="5" name="category" />생활</li>
													</td>
													<td>
														<li class="list-inline-item"><input type="radio"
														 	value="6" name="category" />그림</li>
													</td>
													<td>
														<li class="list-inline-item"><input type="radio"
															value="7" name="category" />공부</li>
													</td>
													<td>
														<li class="list-inline-item"><input type="radio"
															value="8" name="category" />반려동물</li>
													</td>
												</tr>
												<tr>
													<td>
														<li class="list-inline-item"><input type="radio"
															value="9" name="category" />음악</li>
													</td>
													<td>
														<li class="list-inline-item"><input type="radio"
															value="10" name="category" />식습관</li>
													</td>
													<td>
														<li class="list-inline-item"><input type="radio"
															value="11" name="category" />취미</li>
													</td>
													<td>
														<li class="list-inline-item"><input type="radio"
															value="12" name="category" />뷰티</li>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</td>
							</tr>
							
						</tbody>
					</table>
					<!--//table  -->
				</div>
				<!--//table-responsive -->
			</div>




			<div class="search-type">
				<div class="search-type-select">
					<div class="search-type-select-culm">
						<div class="search-type-select-culm-img">
							<span class="check-img"></span>
						</div>
						<span id="likeOrder">인기순</span>
					</div>
					<div class="search-type-select-culm">
						<div class="search-type-select-culm-img">
							<span class="check-img"></span>
						</div>
						<span id="newOrder">신규등록순</span>
					</div>
					<div class="search-type-select-culm">
						<div class="search-type-select-culm-img">
							<span class="check-img"></span>
						</div>
						<span id="recruitmentOrder">마감일순</span>
					</div>
				</div>
				
			</div>

			<div id="clgListArea" class="row">
				<!-- 챌린지 리스트 -->
			</div>
			
			
			
			<div id="paging">
				<ul>
					<c:if test="${cMap.prev}">
						<li><a href="${pageContext.request.contextPath }/search/searchForm?crtPage=${cMap.startPageBtnNo-1}">◀</a></li>
					</c:if>
					
					<c:forEach begin="${cMap.startPageBtnNo}" end="${cMap.endPageBtnNo}" step="1" var="page">							
						<c:choose>
							<c:when test="${param.crtPage==page}">
								<li class="active"><a href="${pageContext.request.contextPath }/search/searchForm?crtPage=${page}">${page}</a></li>
							</c:when>
							<c:otherwise>
								<li><a href="${pageContext.request.contextPath }/search/searchForm?crtPage=${page}">${page}</a></li>
							</c:otherwise>
						</c:choose>	
					</c:forEach>
					
					<c:if test="${cMap.next}">
						<li><a href="${pageContext.request.contextPath }/search/searchForm?crtPage=${cMap.endPageBtnNo+1}">▶</a></li>
					</c:if>
				</ul>
				
				
				<div class="clear"></div>
			</div>
			


		</div>
</main>



	<!-- footer -->
	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
	<!-- //footer -->


</body>

<script type="text/javascript">

var serchVo = {
	keyword: "",
	interestNo: -1,
	orderType: "regDate"
};


/* 준비가 끝났을때 */
$(document).ready(function(){
	/* 리스트 요청+그리기 */
	
	serchVo.keyword =  "${param.keyword}";
	if(${param.interestNo != null}){
		serchVo.interestNo = "${param.interestNo}"
	}
	orderType: "regDate"
	
	fetchList(serchVo);
});


/* 카테고리를 클릭했을때 */
$("[name='category']").on("click", function(){
	
	var interestNo = $(this).val()
	serchVo.interestNo = interestNo
		
	fetchList(serchVo);
});

/* 인기순 클릭했을때 */
$("#likeOrder").on("click", function(){
	console.log("클릭");
	
	
	serchVo.orderType ="likeOrder";
	
	fetchList(serchVo);
	
	
});
/* 신규등록순 클릭했을때 */
$("#newOrder").on("click", function(){
	console.log("newOrder클릭");
	
	serchVo.orderType ="newOrder";
	
	fetchList(serchVo);
	
});
/* 마감일순 클릭했을때 */
$("#recruitmentOrder").on("click", function(){
	console.log("recruitmentOrder클릭");
	
	serchVo.orderType ="recruitmentOrder";
	
	fetchList(serchVo);
	
});
/* 리스트 요청 */
function fetchList(serchVo){
	console.log(serchVo);
	$.ajax({
		url : "${pageContext.request.contextPath }/search/getClgList",		
		type : "post",
		//contentType : "application/json",
		data : serchVo,
		
		
		dataType : "json",
		success : function(clgList){
			
			//리스트영역 초기화
			$("#clgListArea").text("");
			
			//화면 data + html 그린다
			for(var i=0; i<clgList.length; i++){
				render(clgList[i], "down");  //vo --> 화면에 그린다.
			}
		},
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}
	});
}



/* 리스트 그리기 1개씩*/
function render(clgVo, opt){
	console.log("render()");
	
	var str = '';
	str += '<div class="clgItem" >' ;
	str += '    <a href="${pageContext.request.contextPath}/challenge/'+clgVo.challengeNo+'/intro">' ;
	str += '        <div class="inner-box">' ;
	str += '        	<div class="image-box">' ;
	str += '        		<img class="clg-image img-responsive" src="${pageContext.request.contextPath}/assets/img/search-img.jpg" alt="" />' ;
	str += '        	</div>' ;
	str += '    		<div class="info-box">' ;
	str += '    			<p class="nadaena_name">'+clgVo.clgTitle+'</p>' ;
	str += '        		<p class="nadaena_period">도전기한: '+clgVo.period+'</p>' ;
	str += '        		<p class="nadaena_count_user">참여인원: '+clgVo.count_user+'</p>' ;
	str += '        		<p class="nadaena_payment">도전금액: '+clgVo.payment+' 원</p>' ;
	str += '        	</div>' ;
	str += '    	</div>' ;
	str += '    </a>' ;
	str += '</div>' ;
	
	if(opt == "down"){
		$("#clgListArea").append(str);	
	
	}else if(opt == "up"){
		$("#clgListArea").prepend(str);
	
	}else {
		console.log("opt오류");
	}
}
</script>







</html>
