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
<link rel="stylesheet"href="${pageContext.request.contextPath }/assets/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/fonts/font-awesome.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/common.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/mainslider.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/saerch.css">



<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/searchForm-css/Dropdown-Login-with-Social-Logins-bootstrap-social.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/searchForm-css/Features-Boxed-Remixed.css">



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
		
		
		
			<div class="search-list">
				<div class="search-clum">
					<div class="search-clum-box">
						<div class="search-clum-box-info">
							<div class="search-clum-box-img">
								<img src="${pageContext.request.contextPath}/assets/img/search-img.jpg">
							</div><!-- search-clum-box-img -->
						</div><!-- search-clum-box-info -->
					</div><!-- search-clum-box -->
				</div><!-- search-clum -->
			</div><!-- search-list -->
			
			
			
			
		</div><!-- main-box -->
	</main>



	<!-- footer -->
	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
	<!-- //footer -->


</body>

</html>
