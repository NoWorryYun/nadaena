<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>나대나 이벤트</title>
   <!-- <link rel="stylesheet" href="https://cdn.reflowhq.com/v1/toolkit.min.css"> -->
    <!-- <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Inter:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800&amp;display=swap"> -->
    
	<!-- css -->
	<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/fonts/font-awesome.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/common.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/event.css">
	
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
		<h3>이벤트 나대나</h3>
		
		<div class="event-banner">
			<a href="">
				<img id="banner-img" src="${pageContext.request.contextPath }/assets/img/challenge-img/img/패스티벌.PNG">
			</a>
		</div>
		
			<div id="evListArea" class="container py-5">
				<div class="row mx-auto">
					<div class="col">
						<div data-reflow-type="product-list" data-reflow-layout="cards" data-reflow-order="date_desc" data-reflow-product-link="/product.html?product={id}">
							<div class="reflow-product-list cards">
								<div class="products">
								<c:forEach items="${evMap.eventListForm}" var="MainTitleVo">
									<a class="product" href="${pageContext.request.contextPath }/${MainTitleVo.challengeNo}/event/read">
										<img class="image" src="${pageContext.request.contextPath }/assets/img/challenge-img/img/건강2.PNG">
								        <div class="product-data">
								            <div class="product-info">
								                <p class="nadaena_name">${MainTitleVo.clgTitle}</p>
								           	 	<p class="nadaena_period">도전기한: ${MainTitleVo.period}</p>
								           	 	<p class="nadaena_count_user">참여인원: ${MainTitleVo.count_user}</p>
								           	 	<p class="nadaena_payment">도전금액: ${MainTitleVo.payment}</p>
								                <p class="nadaena_period">${MainTitleVo.tag1} ${MainTitleVo.tag2} ${MainTitleVo.tag3}</p>
								            </div>
								        </div>
								    </a>
								 </c:forEach>   
							    </div>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			
			
	</div>
	<!-- //main-box -->
</main>



<!-- footer -->
<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
<!-- //footer -->


</body>


<script type="text/javascript">












</script>



</html>