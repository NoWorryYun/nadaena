<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
<title>검색결과</title>

<!-- css -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/fonts/font-awesome.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/common.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/find.css">

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
			<div class="container">

				<div class="p-5">
					<div class="text-center">
						<h4 class="text-dark mb-4">아이디/비밀번호찾기</h4>

						<div class="card align-middle qwer" style="width: 25rem;">
							<div class="card-title" style="margin-top: 30px;">
								<div class="id-head">아이디 찾기</div>
							</div>

							<div class="card-body">
								<form>
									<div class="mb-3">
										<input id="exampleFirstName" class="form-control form-control-user" type="text" placeholder="이름" name="first_name" />
									</div>


									<div class="mb-3">
										<input id="phoneNumber" class="form-control form-control-user" type="text" placeholder="휴대폰번호 (-) 없이 입력해주세요" name="phn" />
									</div>
									<span class="idpw-text">본인인증 받으신 정보를 입력해 주세요.</span>

									<button id="" class="id-btn btn   btn-user w-100" type="submit">아이디 찾기</button>
									<br>


								</form>

							</div>
						</div>
					</div>
				</div>
				<div class="p-5 password-main">
					<div class="text-center">

						<div class="card align-middle qwer" style="width: 25rem;">
							<div class="card-title" style="margin-top: 30px;">
								<div class="id-head">비밀번호 찾기</div>
							</div>

							<div class="card-body">
								<form>
									<div class="mb-3">
										<input id="exampleInputEmail" class="form-control form-control-user" type="email" aria-describedby="emailHelp" placeholder="이메일" name="email" />
									</div>

									<span class="idpw-text">본인인증 받으신 정보를 입력해 주세요.</span>
									<button id="password-btn" class="id-btn btn   btn-user w-100" type="submit">비밀번호 찾기</button>




								</form>

							</div>

						</div>
						<div class="text-center logpw">
							<a class="login-btn" href="">로그인</a> | <a class="join-btn" href="">회원가입</a>

						</div>
					</div>
				</div>
			</div>







		</div>
	</main>



	<!-- footer -->
	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
	<!-- //footer -->


</body>

</html>
