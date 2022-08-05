<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<header>
	<div class="header-box">
		<div class="header-top">
			<div class="row">
				<div id="logbox" class="col-2">
					<h1>나대나</h1>
					<a href="#"> <img class="logo-img" src="${pageContext.request.contextPath}/assets/img/logo.png">
					</a>
				</div>
				<form id="searchbox" class="col-7 text-center" action="" method="get">
					<input id="text-search" type="text" class="">
					<button id="btn-search" type="submit">
						<i class="fa fa-search"></i>
					</button>
				</form>
				
				<div id="userbox" class="col-3 text-end">
				
					
					<div id="btn-user" class="btn btn-sm dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
						<span id="lv-user" class="badge bg-secondary rounded-pill">Lv.999</span>
						<span id="txt-nick">황일영님 안녕하세요</span>
					</div>
					<ul id="btn-user-list" class="dropdown-menu">
						<li><a class="dropdown-item" href="#">마이페이지</a></li>
						<li><a class="dropdown-item" href="#">로그아웃</a></li>
					</ul>
					 
					
					<!-- 
					<a id="btn-login" class="btn btn-light btn-sm" href="#">로그인</a>
					<a id="btn-join" class="btn btn-light btn-sm" href="#">회원가입</a>
					-->
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
						<li><a class="dropdown-item" href="#">운동</a></li>
						<li><a class="dropdown-item" href="#">독서</a></li>
						<li><a class="dropdown-item" href="#">건강</a></li>
						<li><a class="dropdown-item" href="#">생활</a></li>
						<li><a class="dropdown-item" href="#">그림</a></li>
						<li><a class="dropdown-item" href="#">공부</a></li>
						<li><a class="dropdown-item" href="#">봉사활동</a></li>
						<li><a class="dropdown-item" href="#">반려동물</a></li>
						<li><a class="dropdown-item" href="#">음악</a></li>
						<li><a class="dropdown-item" href="#">식습관</a></li>
						<li><a class="dropdown-item" href="#">취미</a></li>
						<li><a class="dropdown-item" href="#">뷰티</a></li>
					</ul>
				</li>
				<li class="nav-item"><a href="#">챌린지</a></li>
				<li class="nav-item"><a href="#">이벤트</a></li>
				<li class="nav-item"><a href="#">포인트몰</a></li>
			</ul>

			<div id="btnbox" class="col-2">
				<a id="btn-makeChallenge" class="btn btn-danger btn-lg pull-right" href="#">챌린지 개설하기</a>
			</div>
		</nav>
		<!-- nav -->
	</div>
	<!-- //header-box -->

</header>