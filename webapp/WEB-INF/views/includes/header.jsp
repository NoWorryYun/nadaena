<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<header>
	<div class="header-box">
		<div class="header-top">
			<div class="row">
				<div id="logbox" class="col-2">
					<h1>나대나</h1>
					<a href="#"> <img class="logo-img"
						src="../../assets/img/logo.png">
					</a>
				</div>
				<form id="searchbox" class="col-8 text-center" action=""
					method="get">
					<input id="text-search" type="text" class="">
					<button id="btn-search" type="submit">
						<i class="fa fa-search"></i>
					</button>
				</form>
				<div id="userbox" class="col-2 text-end">
					<a id="btn-login" class="btn btn-light btn-sm" href="#">로그인</a> <a
						id="btn-join" class="btn btn-light btn-sm" href="#">회원가입</a>
				</div>
			</div>
			<!-- //row -->

		</div>
		<!-- //header-top -->

		<nav id="navbox" class="row">
			<ul class="nav col-10">
				<li class="nav-item"><a id="text-cate" href="#"
					class="btn dropdown-toggle" data-bs-toggle="dropdown"
					aria-expanded="false">전체카테고리</a>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item" href="#">구분1</a></li>
						<li><a class="dropdown-item" href="#">구분2</a></li>
						<li><a class="dropdown-item" href="#">구분3</a></li>
						<li><a class="dropdown-item" href="#">구분4</a></li>
					</ul></li>
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