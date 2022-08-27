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
					<c:if test="${empty param.keyword}">
						<h2>챌린지</h2>
					</c:if>
					<c:if test="${!empty param.keyword}">
						<p class="search-title">&quot;${param.keyword}&quot;에 대한 검색 결과</p>	
					</c:if>
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
														<li class="list-inline-item"><input type="radio" value="1" name="category" />운동</li>
													</td>
													<td>
														<li class="list-inline-item"><input type="radio" value="2" name="category" />봉사활동</li>
													</td>
													<td>
														<li class="list-inline-item"><input type="radio" value="3"name="category" />독서</li>
													</td>
													<td>
														<li class="list-inline-item"><input type="radio" value="4" name="category" />건강</li>
													</td>
												</tr>
												<tr>
													<td>
														<li class="list-inline-item"><input type="radio" value="5" name="category" />생활</li>
													</td>
													<td>
														<li class="list-inline-item"><input type="radio" value="6" name="category" />그림</li>
													</td>
													<td>
														<li class="list-inline-item"><input type="radio" value="7" name="category" />공부</li>
													</td>
													<td>
														<li class="list-inline-item"><input type="radio" value="8" name="category" />반려동물</li>
													</td>
												</tr>
												<tr>
													<td>
														<li class="list-inline-item"><input type="radio" value="9" name="category" />음악</li>
													</td>
													<td>
														<li class="list-inline-item"><input type="radio" value="10" name="category" />식습관</li>
													</td>
													<td>
														<li class="list-inline-item"><input type="radio" value="11" name="category" />취미</li>
													</td>
													<td>
														<li class="list-inline-item"><input type="radio" value="12" name="category" />뷰티</li>
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
						<span id="newOrder" class="orderType fw-bolder"  data-ordertype="newOrder">신규등록순</span>
					</div>
					<div class="search-type-select-culm">
						<div class="search-type-select-culm-img">
							<span class="check-img"></span>
						</div>
						<span id="likeOrder" class="orderType" data-ordertype="likeOrder" >인기순</span>
					</div>
					<div class="search-type-select-culm">
						<div class="search-type-select-culm-img">
							<span class="check-img"></span>
						</div>
						<span id="recruitmentOrder" class="orderType"  data-ordertype="recruitmentOrder">마감일순</span>
					</div>
				</div>
				
			</div>

			<div id="clgListArea" class="row">
				<!-- 챌린지 리스트 -->
			</div>
			
			
			<div id="paging">
				<!-- 페이징 버튼 -->					
			</div>
			

		</div>
</main>



	<!-- footer -->
	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
	<!-- //footer -->


</body>

<script type="text/javascript">
var searchVo = {};

/* 준비가 끝났을때 */
$(document).ready(function(){
	//리스트를 가져오기 위한 초기값 설정
	initSearchVo();
	
	//리스트 요청+그리기 
	fetchList(searchVo);
});


/* 카테고리를 클릭했을때 */
$("[name='category']").on("click", function(){
	
	var interestNo = $(this).val()
	searchVo.interestNo = interestNo;
	
	searchVo.crtPage = 1;
	searchVo.orderType = "newOrder";
	
	
	//선택한 정렬순 두껍게 표현
	//기본글씨로
	$("#likeOrder").removeClass("fw-bolder");
	$("#newOrder").removeClass("fw-bolder");
	$("#recruitmentOrder").removeClass("fw-bolder");
	
	//선택한 정렬만 두껍께
	$("#newOrder").addClass("fw-bolder");
	
	//리스트 요청+그리기 
	fetchList(searchVo);
});


/* 정렬순을  클릭했을때 */
$(".orderType").on("click", function(){
	
	var orderType = $(this).data("ordertype");
	searchVo.orderType = orderType;
	
	
	//선택한 정렬순 두껍게 표현
	//기본글씨로
	$("#likeOrder").removeClass("fw-bolder");
	$("#newOrder").removeClass("fw-bolder");
	$("#recruitmentOrder").removeClass("fw-bolder");
	
	//선택한 정렬만 두껍께
	$("#"+orderType).addClass("fw-bolder");
	
	
	//리스트 요청+그리기 
	fetchList(searchVo);
});

//페이징 버튼을 클릭했을때
$("#paging").on("click" ,".page-link", function(e){
	e.preventDefault();
	
	var $this = $(this);
	var crtPage = $this.data("crtpage");
	
	searchVo.crtPage = crtPage;
	
	//리스트 요청+그리기 
	fetchList(searchVo);
});



//리스트를 가져오기 위한 초기값 설정
function initSearchVo(){
	//키워드
	searchVo.keyword =  "${param.keyword}";
	
	//카테고리번호
	var interestNo = "${param.interestNo}";
	
	if((interestNo == null) || (interestNo == "")){
		interestNo = -1;
	}
	searchVo.interestNo = interestNo;
	
	//카테고리 라디오 버튼 선택된걸로 표시
	$("[value='"+interestNo+"']").attr("checked", "checked")
	
	
	//현재페이지
	var crtPage = "${param.crtPage}";
	
	if(crtPage < 1){
		crtPage = 1;
	}
	searchVo.crtPage = crtPage;
	
	
	//정렬순
	var orderType = "${param.orderType}";
	
	if((orderType == null) || (orderType == "")){
		orderType = "newOrder";
	}
	searchVo.orderType = orderType;
	
	
	
}


/* 리스트 요청 */
function fetchList(searchVo){
	
	console.log(searchVo);
	
	$.ajax({
		url : "${pageContext.request.contextPath }/search/getClgList",		
		type : "post",
		//contentType : "application/json",
		data : searchVo,
		
		dataType : "json",
		success : function(cMap){
			
			console.log(cMap);
			var clgList = cMap.clgList;
			
			//이전리스트 삭제
			$("#clgListArea").html("");
			
			//리스트그리기
			for(var i=0; i<clgList.length; i++){
				render(clgList[i], "down");
			}

			//이전 페이징 삭제
			$("#paging").html("");
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
	
	var str = '';
	str += '<ul class="pagination pagination-sm">' ;
	
	if(cMap.prev == true){
		str += '	<li class="page-item" ><a class="page-link" data-crtpage="'+(cMap.startPageBtnNo-1)+'" aria-label="Previous" href=""><span aria-hidden="true">«</span></a></li>';
	}
	
	for(var i=cMap.startPageBtnNo; i<=cMap.endPageBtnNo; i++){
		
		if(cMap.crtPage == i){
			str += '	<li class="page-item active" ><a class="page-link" data-crtpage="'+ i +'"  href="">' + i + '</a></li>';
		}else{
			str += '	<li class="page-item" ><a class="page-link" data-crtpage="'+ i +'"  href="">' + i + '</a></li>';
		}
		
	}
	
	if(cMap.next == true){
		str += '	<li class="page-item" ><a class="page-link" data-crtpage="'+(cMap.endPageBtnNo+1)+'" aria-label="Next" href=""><span aria-hidden="true">»</span></a></li>'
	}
	
	str += '</ul>' ;	
	
	$("#paging").append(str);	

}

</script>






</html>
