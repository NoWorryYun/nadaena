<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
<title>나대나헤더</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/nadena.css">
</head>

<body>
	<div class="header-cate">
		<header>
			<div class="header-top">
				<img class="logo-img" src="나대나로고.png" />
				<div class="search-container">
					<input class="search-input" type="text" name="search-bar"
						placeholder="검색어를 입력하세요" />
					<button class="btn btn-light search-btn" type="button">
						<i class="fa fa-search"></i>
					</button>
				</div>
				<button id="join-button" class="btn btn-primary btn-float" type="button">회원가입</button>
				<button id="login-button" class="btn btn-primary btn-float" type="button">로그인</button>
			</div>
		</header>
		<div>
			<nav id="primary_nav_wrap">
				<div id="nav-main">
					<ul>
						<li><a href="#">전체카테고리</a>
							<ul>
								<li><a href="#">Sub Menu 1</a></li>
								<li><a href="#">Sub Menu 2</a></li>
								<li><a href="#">Sub Menu 3</a></li>
								<li><a href="#">Sub Menu 4</a>
									<ul>
										<li><a href="#">Deep Menu 1</a>
											<ul>
												<li><a href="#">Sub Deep 1</a></li>
												<li><a href="#">Sub Deep 2</a></li>
												<li><a href="#">Sub Deep 3</a></li>
												<li><a href="#">Sub Deep 4</a></li>
											</ul></li>
										<li><a href="#">Deep Menu 2</a></li>
									</ul></li>
								<li><a href="#">Sub Menu 5</a></li>
							</ul></li>
						<li><a href="#">챌린지</a>
							<ul>
								<li><a href="#">Sub Menu 1</a></li>
								<li><a href="#">Sub Menu 2</a></li>
								<li><a href="#">Sub Menu 3</a></li>
							</ul></li>
						<li><a href="#">이벤트</a>
							<ul>
								<li class="dir"><a href="#">Sub Menu 1</a></li>
								<li class="dir"><a href="#">Sub Menu 2 THIS IS SO LONG
										IT MIGHT CAUSE AN ISSEUE BUT MAYBE NOT?</a>
									<ul>
										<li><a href="#">Category 1</a></li>
										<li><a href="#">Category 2</a></li>
										<li><a href="#">Category 3</a></li>
										<li><a href="#">Category 4</a></li>
										<li><a href="#">Category 5</a></li>
									</ul></li>
								<li><a href="#">Sub Menu 3</a></li>
								<li><a href="#">Sub Menu 4</a></li>
								<li><a href="#">Sub Menu 5</a></li>
							</ul></li>
						<li><a href="#">포인트몰</a>
					</ul>
					<button class="make-challenge btn-float" type="button">챌린지 개설하기</button>
				</div>
			</nav>
		</div>
	</div>

	<script
		src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/jquery-3.6.0.js"></script>
</body>

</html>