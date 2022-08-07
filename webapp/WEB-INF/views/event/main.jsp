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
		<h2>이벤트</h2>
			<div class="container py-5">
				<div class="row mx-auto" style="/*max-width: 700px;*/">
					<div class="col">
						<div data-reflow-type="product-list" data-reflow-layout="cards" data-reflow-order="date_desc" data-reflow-product-link="/product.html?product={id}">
							<div class="reflow-product-list cards">
								<div class="products">
									<a class="product" href="${pageContext.request.contextPath }/event/read"><img class="image" src="${pageContext.request.contextPath }/assets/img/event1.jpg">
								        <div class="product-data">
								            <div class="product-info">
								                <h5 class="name">몽쉘 신제품 발매!!</h5>
								                <p class="excerpt">#신제품 #내돈내산 #SNS #후기</p>
								            </div>
								        </div>
								    </a>
								    <a class="product" href=""><img class="image" src="${pageContext.request.contextPath }/assets/img/event1.jpg">
								        <div class="product-data">
								            <div class="product-info">
								                <h5 class="name">이벤트 제목</h5>
								                <p class="excerpt">이벤트 태그</p>
								            </div>
								        </div>
								    </a>
								    <a class="product" href=""><img class="image" src="${pageContext.request.contextPath }/assets/img/event1.jpg">
								        <div class="product-data">
								            <div class="product-info">
								                <h5 class="name">이벤트 제목</h5>
								                <p class="excerpt">이벤트 태그</p>
								            </div>
								        </div>
								    </a>
								    <a class="product" href=""><img class="image" src="${pageContext.request.contextPath }/assets/img/event1.jpg">
								        <div class="product-data">
								            <div class="product-info">
								                <h5 class="name">이벤트 제목</h5>
								                <p class="excerpt">이벤트 태그</p>
								            </div>
								        </div>
								    </a>
								    <a class="product" href=""><img class="image" src="${pageContext.request.contextPath }/assets/img/event1.jpg">
								        <div class="product-data">
								            <div class="product-info">
								                <h5 class="name">이벤트 제목</h5>
								                <p class="excerpt">이벤트 태그</p>
								            </div>
								        </div>
								    </a>
								    <a class="product" href=""><img class="image" src="${pageContext.request.contextPath }/assets/img/event1.jpg">
								        <div class="product-data">
								            <div class="product-info">
								                <h5 class="name">이벤트 제목</h5>
								                <p class="excerpt">이벤트 태그</p>
								            </div>
								        </div>
								    </a>
								    <a class="product" href=""><img class="image" src="${pageContext.request.contextPath }/assets/img/event1.jpg">
								        <div class="product-data">
								            <div class="product-info">
								                <h5 class="name">이벤트 제목</h5>
								                <p class="excerpt">이벤트 태그</p>
								            </div>
								        </div>
								    </a>
								    <a class="product" href=""><img class="image" src="${pageContext.request.contextPath }/assets/img/event1.jpg">
								        <div class="product-data">
								            <div class="product-info">
								                <h5 class="name">이벤트 제목</h5>
								                <p class="excerpt">이벤트 태그</p>
								            </div>
								        </div>
								    </a>
								    <a class="product" href=""><img class="image" src="${pageContext.request.contextPath }/assets/img/event1.jpg">
								        <div class="product-data">
								            <div class="product-info">
								                <h5 class="name">이벤트 제목</h5>
								                <p class="excerpt">이벤트 태그</p>
								            </div>
								        </div>
								    </a>
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