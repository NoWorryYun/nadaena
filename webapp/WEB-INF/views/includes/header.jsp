<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<header>
	<div class="header-box">
		<div class="header-top">
			<div class="row">
				<div id="logbox" class="col-2">
					<h1>나대나</h1>
					<a href="http://localhost:8088/nadaena/main"> <img class="logo-img" src="${pageContext.request.contextPath}/assets/img/logo.png">
					</a>
				</div>
				<form id="searchbox" class="col-7 text-center" action="${pageContext.request.contextPath}/search/searchForm" method="get">
					<input id="text-search" type="text" class="" name="keyword">
					<button id="btn-search" type="submit">
						<i class="fa fa-search"></i>
					</button>
				</form>
				
				<div id="userbox" class="col-3 text-end">   
				<c:if test="${not empty authUser }">
					
					<div id="btn-user" class="btn btn-sm dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
						<!-- <span id="lv-user" class="badge bg-secondary rounded-pill">Lv.999</span> -->
						<span id="txt-nick">${authUser.nickName}님 안녕하세요</span>
					</div>
					<ul id="btn-user-list" class="dropdown-menu">
						<li><a class="dropdown-item" href="${pageContext.request.contextPath }/my/challenge">마이페이지</a></li>
						<li><a class="dropdown-item" href="${pageContext.request.contextPath }/logout">로그아웃</a></li>
					</ul>
				</c:if>
					
				<c:if test="${empty authUser }">
				<a id="btn-login" class="btn btn-light btn-sm" href="${pageContext.request.contextPath }/loginForm">로그인</a>
					<a id="btn-join" class="btn btn-light btn-sm" href="${pageContext.request.contextPath }/joinForm">회원가입</a>
				 </c:if>
				</div>
			</div>
			<!-- //row -->


		</div>
		<!-- //header-top -->

		<nav id="navbox" class="row">
			<ul class="nav col-10">
				<li class="nav-item">
					<a id="text-cate" href="#" class="dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
						전체카테고리
					</a>
					<ul id="text-cate-list" class="dropdown-menu">
						<li><a class="dropdown-item" href="${pageContext.request.contextPath}/search/searchForm?interestNo=1">운동</a></li>
						<li><a class="dropdown-item" href="${pageContext.request.contextPath}/search/searchForm?interestNo=3">독서</a></li>
						<li><a class="dropdown-item" href="${pageContext.request.contextPath}/search/searchForm?interestNo=4">건강</a></li>
						<li><a class="dropdown-item" href="${pageContext.request.contextPath}/search/searchForm?interestNo=5">생활</a></li>
						<li><a class="dropdown-item" href="${pageContext.request.contextPath}/search/searchForm?interestNo=6">그림</a></li>
						<li><a class="dropdown-item" href="${pageContext.request.contextPath}/search/searchForm?interestNo=7">공부</a></li>
						<li><a class="dropdown-item" href="${pageContext.request.contextPath}/search/searchForm?interestNo=2">봉사활동</a></li>
						<li><a class="dropdown-item" href="${pageContext.request.contextPath}/search/searchForm?interestNo=8">반려동물</a></li>
						<li><a class="dropdown-item" href="${pageContext.request.contextPath}/search/searchForm?interestNo=9">음악</a></li>
						<li><a class="dropdown-item" href="${pageContext.request.contextPath}/search/searchForm?interestNo=10">식습관</a></li>
						<li><a class="dropdown-item" href="${pageContext.request.contextPath}/search/searchForm?interestNo=11">취미</a></li>
						<li><a class="dropdown-item" href="${pageContext.request.contextPath}/search/searchForm?interestNo=12">뷰티</a></li>
					</ul>
				</li>
				<li class="nav-item"><a href="${pageContext.request.contextPath}/search/searchForm">챌린지</a></li>
				<%-- <li class="nav-item"><a href="${pageContext.request.contextPath}/event">이벤트</a></li> --%>
				<li class="nav-item"><a href="${pageContext.request.contextPath}/shop">포인트몰</a></li>
			</ul>
			<c:if test="${sessionScope.authUser.userNo != 1}">
				<div id="btnbox" class="col-2">
					<a id="btn-makeChallenge" class="btn btn-danger btn-lg pull-right" href="${pageContext.request.contextPath}/challenge/write">챌린지 개설하기</a>
				</div>
			</c:if>
			<c:if test="${sessionScope.authUser.userNo==1}">
				<div id="btnbox" class="col-2">
					<a id="btn-makeChallenge" class="btn btn-danger btn-lg pull-right" href="${pageContext.request.contextPath}/event/uploadForm">이벤트 개설하기</a>
				</div>
			</c:if>
		</nav>
		<!-- nav -->
	</div>
	<!-- //header-box -->
	
	
	
	
	
	
	
	
	
	

<script>
	$("#searchbox").on("submit", function(){
	    var keyword = $("#text-search").val()
		console.log(keyword);
		
	    if(keyword == '' || keyword == null){
	    	  alert("검색어를 입력해주세요.");
	          return false;
	    }
	    
	    return true;
	  });

</script>


</header>