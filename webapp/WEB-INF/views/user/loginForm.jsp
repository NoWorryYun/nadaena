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
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
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
								
									<div class="p-5">
										<div class="text-center">
											
										</div>
										<form class="user" method="post" action="${pageContext.request.contextPath}/login">
											<div class="mb-3">
												<input id="ex   ampleInputEmail"
													class="form-control form-control-user" type="email"
													aria-describedby="emailHelp" placeholder="이메일" name="email" />
											</div>

											<div class="mb-3">
												<input id="exampleInputPassword"
													class="form-control form-control-user" type="password"
													placeholder="비밀번호" name="pasword" />
											</div>
											<div class="mb-3">
												<div class="custom-control custom-checkbox small">
													<div class="form-check">
														<input id="formCheck-1"
															class="form-check-input custom-control-input"
															type="checkbox" /><label
															class="form-check-label custom-control-label"
															for="formCheck-1">로그인유지</label>
															<a class="find" href="">/비밀번호찾기</a> <a class="find" href="">아이디찾기</a>
													</div>
										
												</div>

											</div>
											
											<button class="btn btn-primary d-block btn-user w-100"
												type="submit">로그인</button>
											<div class="hr-sect">또는</div>
											
								
											 
											 
											<div class="login-sns">
											<a href="https://www.naver.com/"> <img class="btn-naver"
												role="button" src="assets/img/loginimg/pngwing.com.png" />
											</a>
											 <!-- <div id="naver_id_login"></div> -->
											 <a href="www.naver.com"> <img class="btn-naver"
												role="button" src="assets/img/loginimg/kakaobtn.png" />
											</a>
											</div>
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
<!-- <script type="text/javascript">
  	var naver_id_login = new naver_id_login("3hoLbYqi3ghHKHkF0Qsz", "http://localhost:8088/nadaena/naver_callback");
  	var state = naver_id_login.getUniqState();
  	naver_id_login.setButton("white", 2,40);
  	naver_id_login.setDomain("http://localhost:8088/nadaena/loginForm");
  	naver_id_login.setState(state);
  	naver_id_login.setPopup();
  	naver_id_login.init_naver_id_login();
  </script>
 -->
</html>
