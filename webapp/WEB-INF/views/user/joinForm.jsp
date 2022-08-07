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
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/assets/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/assets/fonts/font-awesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/assets/css/common.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/assets/css/join.css">

<!-- js -->
<script type="text/javascript"
	src="${pageContext.request.contextPath }/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/assets/bootstrap/js/bootstrap.min.js"></script>
</head>



<body>
	<!-- header -->
	<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
	<!-- //header -->



	<main>
		<div class="main-box">
			<div class="container">

				<div class="card-body p-0">



					<div class="p-3">
						<div class="text-center">
							<h4 class="mb-4">회원가입</h4>
						</div>
						<form class="user">
							<div class="row mb-3">
								<div class="mb-3">
									<input id="exampleInputEmail" class="form-control form-control-user" type="email" aria-describedby="emailHelp" placeholder="사용할 이메일" name="email" />
								</div>
                                <div class="mb-3">
									<input id="exampleInputEmail"
										class="form-control form-control-user" type="text"
										placeholder="닉네임"
										name="username" />
								</div>


								<div class="mb-3">
									<input id="examplePasswordInput" class="form-control form-control-user" type="password" placeholder="비밀번호" name="password" />
								</div>

								<div class="mb-3">
									<input id="exampleRepeatPasswordInput" class="form-control form-control-user" type="password" placeholder="비밀번호 확인" name="password_repeat" />
								</div>

								<div class=" mb-3">
									<input id="exampleFirstName" class="form-control form-control-user" type="text" placeholder="이름" name="first_name" />
								</div>

								<div class=" mb-3">
									<input id="birthDate" class="form-control form-control-user" type="text" placeholder="생년월일" name="bdate" />
								</div>
								<div class="info" id="info__birth">
									<select class="box  form-control" id="birth-year">
										<option disabled selected>출생 연도</option>
									</select> <select class="box  form-control" id="birth-month">
										<option disabled selected>월</option>
									</select> <select class="box mb-3 form-control" id="birth-day">
										<option disabled selected>일</option>
									</select>
								</div>

								<div class=" mb-3">
									<input id="phoneNumber" class="form-control form-control-user" type="text" placeholder="휴대폰번호 (-) 없이 입력해주세요" name="phn" />
								</div>

								<div class=" mb-3">
									<input id="address" class="asdf form-control-user form-control" type="text" placeholder="주소를 입력해주세요" name="joinaddress" /> <input type="button" class="addbtn" value="주소찾기">
								</div>
                                <div class=" mb-3">
									<input id="address2" class="form-control form-control-user"
										type="text" placeholder="상세주소" name="" />
								</div>
							</div>

						
                        </form>
                            </div>
</div>
</div>

							<div class="">

								<div class="hobby-check">
									<h4 class="hobby-head">관심분야</h4>

									<ul class="">
										<li><input type="checkbox" id="cb1" /> <label for="cb1"><p class="istp">건강</p> <img src="${pageContext.request.contextPath}/assets/img/interest/건강.jpg" /></label></li>
										<li><input type="checkbox" id="cb2" /> <label for="cb2"><p class="istp">공부</p> <img src="${pageContext.request.contextPath}/assets/img/interest/공부.jpg" /></label></li>
										<li><input type="checkbox" id="cb3" /> <label for="cb3"><p class="istp">그림</p> <img src="${pageContext.request.contextPath}/assets/img/interest/그림.jpg" /></label></li>
										<li><input type="checkbox" id="cb4" /> <label for="cb4"><p class="istp">독서</p> <img src="${pageContext.request.contextPath}/assets/img/interest/독서.jpg" /></label></li>
										<li><input type="checkbox" id="cb5" /> <label for="cb5"><p class="istp">반려</p> <img src="${pageContext.request.contextPath}/assets/img/interest/반려동물.jpg" /></label></li>
										<li><input type="checkbox" id="cb6" /> <label for="cb6"><p class="istp">뷰티</p> <img src="${pageContext.request.contextPath}/assets/img/interest/뷰티.jpg" /></label></li>
										<li><input type="checkbox" id="cb7" /> <label for="cb7"><p class="istp">생활</p> <img src="${pageContext.request.contextPath}/assets/img/interest/생활습관.jpg" /></label></li>
										<li><input type="checkbox" id="cb8" /> <label for="cb8"><p class="istp">식습</p> <img src="${pageContext.request.contextPath}/assets/img/interest/식습관.jpg" /></label></li>
										<li><input type="checkbox" id="cb9" /> <label for="cb9"><p class="istp">요리</p> <img src="${pageContext.request.contextPath}/assets/img/interest/요리.jpg" /></label></li>
										<li><input type="checkbox" id="cb10" /> <label for="cb10"><p class="istp">운동</p> <img src="${pageContext.request.contextPath}/assets/img/interest/운동.jpg" /></label></li>
										<li><input type="checkbox" id="cb11" /> <label for="cb11"><p class="istp">음악</p> <img src="${pageContext.request.contextPath}/assets/img/interest/음악.jpg" /></label></li>
										<li><input type="checkbox" id="cb12" /> <label for="cb12"><p class="istp">취미</p> <img src="${pageContext.request.contextPath}/assets/img/interest/취미.jpg" /></label></li>
									</ul>
                                    <button class="membership-btn" type="submit">회원가입</button>
								</div>
							</div>
					
		</div>
	</main>







	<!-- footer -->
	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
	<!-- //footer -->


</body>

</html>
