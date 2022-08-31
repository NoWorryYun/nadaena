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
						<h4 class="text-dark mb-4">아이디찾기</h4>

						<div class="card align-middle qwer" style="width: 25rem;">
							<div class="card-title" style="margin-top: 30px;">
								<div class="id-head">아이디 찾기</div>
							</div>

							<div class="card-body">
								<form id="findId" action="${pageContext.request.contextPath}/findId" method="post">
									<div class="mb-3">
									<c:if test="${check == 1}">
										<input id="exampleFirstName" class="form-control form-control-user" type="text" placeholder="일치하는 정보가 없습니다." />
										</c:if>
									</div>


									<div class="mb-3">
									<c:if test="${check == 0 }">
										<input id="phoneNumber" class="form-control form-control-user" type="text" value="찾으시는 아이디는 ${email} 입니다." />
										</c:if>
									</div>

									<br>


								</form>

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
