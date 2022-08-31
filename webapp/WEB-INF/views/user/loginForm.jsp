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
														<input id="formCheck-1" name ="formCheck-1"class="form-check-input custom-control-input" type="checkbox" />
														<label class="form-check-label custom-control-label" for="formCheck-1">아이디저장</label>
															<a class="find" href="${pageContext.request.contextPath}/findForm">아이디/비밀번호찾기</a> 
													</div>
										
												</div>

											</div>
											
											<button class="btn btn-primary d-block btn-user w-100"
												type="submit">로그인</button>
												</form>
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
											<a href="${pageContext.request.contextPath}/joinForm"><button
												class="btn btn-primary d-block signup w-100 btn-user mb-2 ">회원가입</button></a>
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
<script type="text/javascript">
$(document).ready(function(){
	 
    // 저장된 쿠키값을 가져와서 ID 칸에 넣어준다. 없으면 공백으로 들어감.
    var key = getCookie("key");
    $("#email").val(key); 
     
    if($("#email").val() != ""){ // 그 전에 ID를 저장해서 처음 페이지 로딩 시, 입력 칸에 저장된 ID가 표시된 상태라면,
        $("#formCheck-1").attr("checked", true); // ID 저장하기를 체크 상태로 두기.
    }
     
    $("#formCheck-1").change(function(){ // 체크박스에 변화가 있다면,
        if($("#formCheck-1").is(":checked")){ // ID 저장하기 체크했을 때,
            setCookie("key", $("#email").val(), 7); // 7일 동안 쿠키 보관
        }else{ // ID 저장하기 체크 해제 시,
            deleteCookie("key");
        }
    });
     
    // ID 저장하기를 체크한 상태에서 ID를 입력하는 경우, 이럴 때도 쿠키 저장.
    $("#email").keyup(function(){ // ID 입력 칸에 ID를 입력할 때,
        if($("#formCheck-1").is(":checked")){ // ID 저장하기를 체크한 상태라면,
            setCookie("key", $("#email").val(), 7); // 7일 동안 쿠키 보관
        }
    });
});
 
function setCookie(cookieName, value, exdays){
    var exdate = new Date();
    exdate.setDate(exdate.getDate() + exdays);
    var cookieValue = escape(value) + ((exdays==null) ? "" : "; expires=" + exdate.toGMTString());
    document.cookie = cookieName + "=" + cookieValue;
}
 
function deleteCookie(cookieName){
    var expireDate = new Date();
    expireDate.setDate(expireDate.getDate() - 1);
    document.cookie = cookieName + "= " + "; expires=" + expireDate.toGMTString();
}
 
function getCookie(cookieName) {
    cookieName = cookieName + '=';
    var cookieData = document.cookie;
    var start = cookieData.indexOf(cookieName);
    var cookieValue = '';
    if(start != -1){
        start += cookieName.length;
        var end = cookieData.indexOf(';', start);
        if(end == -1)end = cookieData.length;
        cookieValue = cookieData.substring(start, end);
    }
    return unescape(cookieValue);
}
  </script>
 
</html>
