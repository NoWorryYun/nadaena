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
					<p class="search-title"><a herd="">&quot;${param.keyword}&quot;</a> 에 대한 검색 결과</p>
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
				
				
				<div class="clear"></div>
			</div>
			


		</div>
</main>



	<!-- footer -->
	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
	<!-- //footer -->


</body>

<script type="text/javascript">



var searchVo = {
	keyword: "",
	interestNo: -1,
	crtPage: 1,
	orderType: "regDate"
};


/* 준비가 끝났을때 */
$(document).ready(function(){
	/* 리스트 요청+그리기 */
	
	searchVo.keyword =  "${param.keyword}";
	if(${param.interestNo != null}){
		searchVo.interestNo = "${param.interestNo}";
	}
	searchVo.crtPage = 1;
	
	fetchList(searchVo);
});


/* 카테고리를 클릭했을때 */
$("[name='category']").on("click", function(){
	
	var interestNo = $(this).val()
	searchVo.interestNo = interestNo
		
	fetchList(searchVo);
});

/* 인기순 클릭했을때 */
$("#likeOrder").on("click", function(){
	console.log("클릭");
	
	
	searchVo.orderType ="likeOrder";
	
	fetchList(searchVo);
	
	
});
/* 신규등록순 클릭했을때 */
$("#newOrder").on("click", function(){
	console.log("newOrder클릭");
	
	searchVo.orderType ="newOrder";
	
	fetchList(searchVo);
	
});
/* 마감일순 클릭했을때 */
$("#recruitmentOrder").on("click", function(){
	console.log("recruitmentOrder클릭");
	
	searchVo.orderType ="recruitmentOrder";
	
	fetchList(searchVo);
	
});
/* 리스트 요청 */
function fetchList(searchVo){
	$.ajax({
		url : "${pageContext.request.contextPath }/search/getClgList",		
		type : "post",
		//contentType : "application/json",
		data : searchVo,
		
		dataType : "json",
		success : function(cMap){
			
			console.log(cMap);
			var clgList = cMap.clgList;
			
			for(var i=0; i<clgList.length; i++){
				render(clgList[i], "down");
			}
			
			pagingRender(cMap);
			
			
		},
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}
	});
}



/* 리스트 그리기 1개씩*/
function render(clgVo, opt){
	
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



function pagingRender(cMap){
	console.log("pagingRender");
	console.log(cMap.startPageBtnNo);
	console.log(cMap.endPageBtnNo);
	var str = '';
	str += '<ul class="pagination pagination-sm">' ;
	
	str += '	<li class="page-item"><a class="page-link" aria-label="Previous" href="${pageContext.request.contextPath }/search/searchForm?crtPage=${rMap.startPageBtnNo-1}"><span aria-hidden="true">«</span></a></li>';
	
	for(var i=cMap.startPageBtnNo; i<=cMap.endPageBtnNo; i++){
		str += '	<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath }/search/searchForm?crtPage='+ i +'">' + i + '</a></li>';
	
	}
	
	str += '	<li class="page-item"><a class="page-link" aria-label="Next" href="${pageContext.request.contextPath }/search/searchForm?crtPage=${rMap.endPageBtnNo+1}"><span aria-hidden="true">»</span></a></li>'
	
	str += '</ul>' ;	
	
	$("#paging").append(str);	
	
	
	/* str += '    <li class=""><a href="${pageContext.request.contextPath }/search/searchForm?crtPage='+ i +'>aaaa</a></li>' ; */
	/* str += '    <li><a href="${pageContext.request.contextPath }/search/searchForm?crtPage=${cMap.endPageBtnNo+1}">▶</a></li>' ; */
	

}

</script>







</html>
