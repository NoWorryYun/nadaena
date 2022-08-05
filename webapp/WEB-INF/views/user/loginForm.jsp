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
	href="${pageContext.request.contextPath}/assets/css/login.css">

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
				<div class="row justify-content-center">
					<div class="col-md-9 col-lg-12 col-xl-12">

						<div class="card-body p-0">
							<div class="row">
								<div class="col-lg-6 d-none d-lg-flex">
									<img class="login-img" src="${pageContext.request.contextPath}/assets/img/icant.jpg"/>
								</div>
								<div class="col-lg-6">
								<h4 class="mb-4 login-head">로그인</h4>
									<div class="p-5">
										<div class="text-center">
											
										</div>
										<form class="user">
											<div class="mb-3">
												<input id="exampleInputEmail"
													class="form-control form-control-user" type="email"
													aria-describedby="emailHelp" placeholder="이메일" name="email" />
											</div>

											<div class="mb-3">
												<input id="exampleInputPassword"
													class="form-control form-control-user" type="password"
													placeholder="비밀번호" name="password" />
											</div>
											<div class="mb-3">
												<div class="custom-control custom-checkbox small">
													<div class="form-check">
														<input id="formCheck-1"
															class="form-check-input custom-control-input"
															type="checkbox" /><label
															class="form-check-label custom-control-label"
															for="formCheck-1">로그인유지</label>
													</div>
													<a class="find" href=""> 아이디 /</a> <a class="find" href="">비밀번호찾기</a>
												</div>

											</div>
											<button class="btn btn-primary d-block btn-user w-100"
												type="submit">로그인</button>
											<div class="hr-sect">또는</div>
											<a href="www.naver.com"> <img class="btn-naver"
												role="button" src="assets/img/loginimg/pngwing.com.png" />
											</a> <a href="www.naver.com"> <img class="btn-naver"
												role="button" src="assets/img/loginimg/btn_naver1.png" />
											</a> <a href="www.naver.com"> <img class="btn-naver"
												role="button" src="assets/img/loginimg/kakaobtn.png" />
											</a>
											<hr />
											<p class="pp">나대나 회원이 되어라.</p>
											<button
												class="btn btn-primary d-block signup w-100 btn-user mb-2 ">회원가입</button>
										</form>
										<div class="text-center"></div>
										<div class="mb-3">
											<div></div>

										</div>
									</div>
								</div>
							</div>
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
