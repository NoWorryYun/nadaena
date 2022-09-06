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
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/join.css">

<!-- js -->
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/bootstrap/js/bootstrap.min.js"></script>
<style>
.id_ok{
color:#008000;
display: none;
}

.id_already{
color:#6A82FB; 
display: none;
}
</style>
<link rel="icon" href="data:;base64,iVBORw0KGgo=">
</head>



<body>
	<!-- header -->
	<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
	<!-- //header -->



	<main>



		<div class="main-box">
			<form class="user" id="joinForm" method="post" action="${pageContext.request.contextPath}/join">
				<div class="container">

					<div class="card-body p-0">

						<div class="p-3">

							<div class="text-center">
								<h4 class="mb-4">회원가입</h4>
							</div>



							<div class="row mb-3">

								<div class="mb-3">
									<input id="exampleInputEmail" class="form-control form-control-user" type="email" aria-describedby="emailHelp" placeholder="사용할 이메일" name="email" id="email"  required />
						<input type="button" class="addbtn" id="emailcheck" value="중복체크">
								</div>
							

								<div class="mb-3">
									<input id="exampleInputId" class="form-control form-control-user " type="text" placeholder="닉네임" name="nickName" required/>
								</div>

								<div class="mb-3">
									<input id="examplePasswordInput" class="form-control form-control-user" type="password" placeholder="비밀번호" name="pasword" required/>
									<!-- <span id="pwtext">사용불가</span> -->
								</div>

								<!-- <div class="mb-3">
									<input id="exampleRepeatPasswordInput" class="form-control form-control-user" type="password" placeholder="비밀번호 확인" name="password_repeat" />
								</div> -->

								<div class=" mb-3">
									<input id="exampleFirstName" class="form-control form-control-user" type="text" placeholder="이름" name="name" required/>
									
								</div>
								
								<div class=" mb-3">
									<input id="exbirth" class="form-control form-control-user" type="text" placeholder="생년월일" name="birth" required/>
								</div>

							<!-- 	<div class="info" id="info__birth">
									<select class="box  form-control" id="birth-year">
										<option disabled selected>출생 연도</option>
									</select> <select class="box  form-control" id="birth-month">
										<option disabled selected>월</option>
									</select> <select class="box mb-3 form-control" id="birth-day">
										<option disabled selected>일</option>
									</select>
								</div> -->

								<div class=" mb-3">
									<input id="phoneNumber" class="form-control form-control-user" type="text" placeholder="휴대폰번호 (-) 없이 입력해주세요" name="hp" required/>
								</div>

								<div class=" mb-3">
									<input id="sample6_postcode" class="form-control-user form-control" type="text" placeholder="우편번호" name="postNo" required/>
									 <input type="button" class="addbtn"onclick="sample6_execDaumPostcode()"value="주소찾기">
								</div>
								<div class=" mb-3">
									<input id="sample6_address" class="form-control form-control-user" type="text" placeholder="주소" name="address1" required/>
								</div>

								<div class=" mb-3">
									<input id="sample6_detailAddress" class="form-control form-control-user" type="text" placeholder="상세주소" name="address2" required/>
								</div>
								

							</div>

						</div>
					</div>
				</div>
				


				<div class="">

					<div class="hobby-check">

						<h4 class="hobby-head">관심분야</h4>
							
						<ul class="">
							<li class="cata"><input type="checkbox" id="cbcheck1" name='interestName' value="건강"> <label for="cbcheck1"><p class="istp">건강</p> <img src="${pageContext.request.contextPath}/assets/img/interest/건강.jpg" /></label></li>
							<li class="cata"><input type="checkbox" id="cbcheck2" name='interestName' value="공부" /> <label for="cbcheck2"><p class="istp">공부</p> <img src="${pageContext.request.contextPath}/assets/img/interest/공부.jpg" /></label></li>
							<li class="cata"><input type="checkbox" id="cbcheck3" name='interestName' value="그림"/> <label for="cbcheck3"><p class="istp">그림</p> <img src="${pageContext.request.contextPath}/assets/img/interest/그림.jpg" /></label></li>
							<li class="cata"><input type="checkbox" id="cbcheck4" name='interestName' value="독서"/> <label for="cbcheck4"><p class="istp">독서</p> <img src="${pageContext.request.contextPath}/assets/img/interest/독서.jpg" /></label></li>
							<li class="cata"><input type="checkbox" id="cbcheck5" name='interestName' value="반려"/> <label for="cbcheck5"><p class="istp">반려</p> <img src="${pageContext.request.contextPath}/assets/img/interest/반려동물.jpg" /></label></li>
							<li class="cata"><input type="checkbox" id="cbcheck6" name='interestName' value="뷰티"/> <label for="cbcheck6"><p class="istp">뷰티</p> <img src="${pageContext.request.contextPath}/assets/img/interest/뷰티.jpg" /></label></li>
							<li class="cata"><input type="checkbox" id="cbcheck7" name='interestName' value="생활" /> <label for="cbcheck7"><p class="istp">생활</p> <img src="${pageContext.request.contextPath}/assets/img/interest/생활습관.jpg" /></label></li>
							<li class="cata"><input type="checkbox" id="cbcheck8" name='interestName' value="식습"/> <label for="cbcheck8"><p class="istp">식습</p> <img src="${pageContext.request.contextPath}/assets/img/interest/식습관.jpg" /></label></li>
							<li class="cata"><input type="checkbox" id="cbcheck9" name='interestName' value="봉사"/> <label for="cbcheck9"><p class="istp">봉사</p> <img src="${pageContext.request.contextPath}/assets/img/interest/봉사.jpg" /></label></li>
							<li class="cata"><input type="checkbox" id="cbcheck10" name='interestName' value="운동"/> <label for="cbcheck10"><p class="istp">운동</p> <img src="${pageContext.request.contextPath}/assets/img/interest/운동.jpg" /></label></li>
							<li class="cata"><input type="checkbox" id="cbcheck11" name='interestName' value="음악"/> <label for="cbcheck11"><p class="istp">음악</p> <img src="${pageContext.request.contextPath}/assets/img/interest/음악.jpg" /></label></li>
							<li class="cata"><input type="checkbox" id="cbcheck12" name='interestName' value="취미"/> <label for="cbcheck12"><p class="istp">취미</p> <img src="${pageContext.request.contextPath}/assets/img/interest/취미.jpg" /></label></li>
						</ul>
						<button class="membership-btn" type=submit id="btnSubmit">회원가입</button>
					</div>
				</div>
			</form>
		</div>
		

	</main>







	<!-- footer -->
<%--  <c:import url="/WEB-INF/views/includes/footer.jsp"></c:import> --%>
	<!-- //footer -->


</body>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript">

/*
$("#btnSubmit").on("click", function(){
	console.log("회원버튼 클릭");
	
	var send={}
	 var chk =[];
     $('input:checkbox[name="interestName"]:checked').each(function(){
    	 chk.push($(this).val());
     })
     send["interestName"]=chk.toString();
	$.ajax({
		url : "${pageContext.request.contextPath}/join/hobby",		
		type : "post",
		contentType : "application/json",
		data : JSON.stringify(send),   //js객체를 JSON문자열로 변경
		dataType : "text",
		success : function(gVo){
			//1개데이터 리스트 추가(그리기)하기

		},
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}
	});
     document.getElementById("joinForm").submit();
}); 

*/

function sample6_execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ''; // 주소 변수
            var extraAddr = ''; // 참고항목 변수

            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
            if(data.userSelectedType === 'R'){
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraAddr !== ''){
                    extraAddr = ' (' + extraAddr + ')';
                }
                // 조합된 참고항목을 해당 필드에 넣는다.

            
            } 

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('sample6_postcode').value = data.zonecode;
            document.getElementById("sample6_address").value = addr;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById("sample6_detailAddress").focus();
        }
    }).open();
}

			$("#emailcheck").on("click",function(){
				var email = $("[name='email']").val();
				$.ajax({
					url : "${pageContext.request.contextPath }/emailcheck",		
					type : "post",
					contentType : "application/json",
					data : JSON.stringify(email),
					dataType : "json",
					success : function(result){
						console.log(result)
						if(result == 1){
							alert("중복된 아이디입니다.");
						}else if(result == 0){
							$("#idChk").attr("value", "Y");
							alert("사용가능한 아이디입니다.");
						}
					},
					error : function(XHR, status, error) {
						console.error(status + " : " + error);
					}
				});
				 
			});
			
		
		

</script>
</html>
