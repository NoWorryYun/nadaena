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
	<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/mainTitle.css">
	
	<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/main-css/4-Col-Small-Slider-small.slider.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/main-css/BSB-Slider-3-Products.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/main-css/Media-Slider-Bootstrap-3.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/main-css/MUSA_carousel-product-cart-slider-carousel-product-cart-slider.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/main-css/Responsive-Product-Slider.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/6.4.8/swiper-bundle.min.css">
	
	<!-- js -->
	<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/jquery/jquery-1.12.4.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/assets/bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/jquery.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/main/jquery.min.js"></script>
</head>



<body>

<!-- header -->
<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
<!-- //header -->
<div class="main-box">
	<div class="container">
	
	
	        <div class="main-title">
	            챌린지 No.1 나대나에서<br />
	            나만의 챌린지를 도전해보세요!
	            <br /><br />
	        </div>
	        <div class="search">
	            <div class="card-body">
	                <form class="d-flex align-items-center"><input class="form-control form-control-lg flex-shrink-1 form-control-borderless" type="search" placeholder="검색어를 입력해주세요." name="searchbar" /><button class="btn btn-success btn-lg" type="submit">Search</button></form>
	            </div>
	        </div>
	        <div class="slide-banner" style="width: 450px;height: 250px;background-image: url(https://cdn.bootstrapstudio.io/placeholders/1400x800.png);background-position: center;background-size: cover;padding-left: 0px;">
	            <div id="carousel-1" class="carousel slide" data-bs-ride="carousel">
	                <div class="carousel-inner">
	                    <div class="carousel-item active"><img class="w-100 d-block" src="https://cdn.bootstrapstudio.io/placeholders/1400x800.png" alt="Slide Image" style="padding-right: 0px;padding-left: 0px;" /></div>
	                    <div class="carousel-item"><img class="w-100 d-block" src="https://cdn.bootstrapstudio.io/placeholders/1400x800.png" alt="Slide Image" /></div>
	                    <div class="carousel-item"><img class="w-100 d-block" src="https://cdn.bootstrapstudio.io/placeholders/1400x800.png" alt="Slide Image" /></div>
	                </div>
	                <div><a class="carousel-control-prev" href="#carousel-1" role="button" data-bs-slide="prev"><span class="carousel-control-prev-icon"></span><span class="visually-hidden">Previous</span></a><a class="carousel-control-next" href="#carousel-1" role="button" data-bs-slide="next"><span class="carousel-control-next-icon"></span><span class="visually-hidden">Next</span></a></div>
	                <ol class="carousel-indicators">
	                    <li class="active" data-bs-target="#carousel-1" data-bs-slide-to="0"></li>
	                    <li data-bs-target="#carousel-1" data-bs-slide-to="1"></li>
	                    <li data-bs-target="#carousel-1" data-bs-slide-to="2"></li>
	                </ol>
	            </div>
	        </div>
	    </div>
	    <div>
	        <div class="main-c">진행중인 이벤트챌린지</div>
	        <div class="swiper-container">
	            <div class="swiper-wrapper">
	                <div class="swiper-slide"><img src="http://ktsmemo.cdn3.cafe24.com/p/0023.jpg" /></div>
	                <div class="swiper-slide"><img src="https://ktsmemo.cafe24.com/p/0799.jpg" /></div>
	                <div class="swiper-slide"><img src="http://oldmidi.cdn3.cafe24.com/p/0441.jpg" /></div>
	                <div class="swiper-slide"><img src="http://ktsmemo.cdn3.cafe24.com/p/0225.jpg" /></div>
	                <div class="swiper-slide"><img src="https://ktsmemo.cafe24.com/p/0743.jpg" /></div>
	                <div class="swiper-slide"><img src="http://oldmidi.cdn3.cafe24.com/p/0060.jpg" /></div>
	                <div class="swiper-slide"><img src="http://ktsmemo.cdn3.cafe24.com/p/0652.jpg" /></div>
	                <div class="swiper-slide"><img src="http://ktsmemo.cdn3.cafe24.com/p/0649.jpg" /></div>
	                <div class="swiper-slide"><img src="http://ktsmemo.cdn3.cafe24.com/p/0833.jpg" /></div>
	                <div class="swiper-slide"><img src="http://ktsmemo.cdn3.cafe24.com/p/0725.jpg" /></div>
	                <div class="swiper-slide"><img src="https://ktsmemo.cafe24.com/p/0118.jpg" /></div>
	                <div class="swiper-slide"><img src="https://ktsmemo.cafe24.com/p/0805.jpg" /></div>
	                <div class="swiper-slide"><img src="http://oldmidi.cdn3.cafe24.com/p/0815.jpg" /></div>
	                <div class="swiper-slide"><img src="http://oldmidi.cdn3.cafe24.com/p/0152.jpg" /></div>
	                <div class="swiper-slide"><img src="http://oldmidi.cdn3.cafe24.com/p/0545.jpg" /></div>
	                <div class="swiper-slide" style="font-size: 50pt;">- 끝 -</div>
	            </div>
	            <div class="swiper-button-next"></div>
	            <div class="swiper-button-prev"></div>
	            <div class="swiper-pagination"></div>
	        </div>
	    </div>
	    <div>
	        <div class="main-c">나대나 추천 챌린지</div>
	        <div class="swiper-container">
	            <div class="swiper-wrapper">
	                <div class="swiper-slide"><img src="http://ktsmemo.cdn3.cafe24.com/p/0023.jpg" /></div>
	                <div class="swiper-slide"><img src="https://ktsmemo.cafe24.com/p/0799.jpg" /></div>
	                <div class="swiper-slide"><img src="http://oldmidi.cdn3.cafe24.com/p/0441.jpg" /></div>
	                <div class="swiper-slide"><img src="http://ktsmemo.cdn3.cafe24.com/p/0225.jpg" /></div>
	                <div class="swiper-slide"><img src="https://ktsmemo.cafe24.com/p/0743.jpg" /></div>
	                <div class="swiper-slide"><img src="http://oldmidi.cdn3.cafe24.com/p/0060.jpg" /></div>
	                <div class="swiper-slide"><img src="http://ktsmemo.cdn3.cafe24.com/p/0652.jpg" /></div>
	                <div class="swiper-slide"><img src="http://ktsmemo.cdn3.cafe24.com/p/0649.jpg" /></div>
	                <div class="swiper-slide"><img src="http://ktsmemo.cdn3.cafe24.com/p/0833.jpg" /></div>
	                <div class="swiper-slide"><img src="http://ktsmemo.cdn3.cafe24.com/p/0725.jpg" /></div>
	                <div class="swiper-slide"><img src="https://ktsmemo.cafe24.com/p/0118.jpg" /></div>
	                <div class="swiper-slide"><img src="https://ktsmemo.cafe24.com/p/0805.jpg" /></div>
	                <div class="swiper-slide"><img src="http://oldmidi.cdn3.cafe24.com/p/0815.jpg" /></div>
	                <div class="swiper-slide"><img src="http://oldmidi.cdn3.cafe24.com/p/0152.jpg" /></div>
	                <div class="swiper-slide"><img src="http://oldmidi.cdn3.cafe24.com/p/0545.jpg" /></div>
	                <div class="swiper-slide" style="font-size: 50pt;">- 끝 -</div>
	            </div>
	            <div class="swiper-button-next"></div>
	            <div class="swiper-button-prev"></div>
	            <div class="swiper-pagination"></div>
	        </div>
	    </div>
	    <div>
	        <div class="main-c">나대나 듀토리얼 챌린지</div>
	        <div class="swiper-container">
	            <div class="swiper-wrapper">
	                <div class="swiper-slide"><img src="http://ktsmemo.cdn3.cafe24.com/p/0023.jpg" /></div>
	                <div class="swiper-slide"><img src="https://ktsmemo.cafe24.com/p/0799.jpg" /></div>
	                <div class="swiper-slide"><img src="http://oldmidi.cdn3.cafe24.com/p/0441.jpg" /></div>
	                <div class="swiper-slide"><img src="http://ktsmemo.cdn3.cafe24.com/p/0225.jpg" /></div>
	                <div class="swiper-slide"><img src="https://ktsmemo.cafe24.com/p/0743.jpg" /></div>
	                <div class="swiper-slide"><img src="http://oldmidi.cdn3.cafe24.com/p/0060.jpg" /></div>
	                <div class="swiper-slide"><img src="http://ktsmemo.cdn3.cafe24.com/p/0652.jpg" /></div>
	                <div class="swiper-slide"><img src="http://ktsmemo.cdn3.cafe24.com/p/0649.jpg" /></div>
	                <div class="swiper-slide"><img src="http://ktsmemo.cdn3.cafe24.com/p/0833.jpg" /></div>
	                <div class="swiper-slide"><img src="http://ktsmemo.cdn3.cafe24.com/p/0725.jpg" /></div>
	                <div class="swiper-slide"><img src="https://ktsmemo.cafe24.com/p/0118.jpg" /></div>
	                <div class="swiper-slide"><img src="https://ktsmemo.cafe24.com/p/0805.jpg" /></div>
	                <div class="swiper-slide"><img src="http://oldmidi.cdn3.cafe24.com/p/0815.jpg" /></div>
	                <div class="swiper-slide"><img src="http://oldmidi.cdn3.cafe24.com/p/0152.jpg" /></div>
	                <div class="swiper-slide"><img src="http://oldmidi.cdn3.cafe24.com/p/0545.jpg" /></div>
	                <div class="swiper-slide" style="font-size: 50pt;">- 끝 -</div>
	            </div>
	            <div class="swiper-button-next"></div>
	            <div class="swiper-button-prev"></div>
	            <div class="swiper-pagination"></div>
	        </div>
	    </div>
</div>
    
    <!-- footer -->
<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
<!-- //footer -->
    
    
</body>

</html>
