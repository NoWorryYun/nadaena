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
	
	<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/searchForm-css/search.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
	
	<!-- js -->
	<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/jquery/jquery-1.12.4.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/assets/bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>
</head>



<body>

<!-- header -->
<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
<!-- //header -->

<div class="main-box">

	<div class="banner-box">
	
		<div class="main-banner">
			
			<div class="row">
			
				<div class="col-7">
				
					<div class="main-title ">
		            	챌린지 No.1 나대나에서<br>
		            	나만의 챌린지를 도전해보세요!
	           		</div>
	           		<!--  //main-title -->
	           		
	           		<div class="title-search">
	           			<div>
	                		<form class="d-flex align-items-center"><input class="form-control form-control-lg flex-shrink-1 form-control-borderless" type="search" placeholder="검색어를 입력해주세요." name="searchbar" /><button class="btn btn-success btn-lg" type="submit">Search</button></form>
	            		</div>
	       			</div>
	        		 <!-- //search -->
				</div>
				
				<div class="col-5">
				
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
			            <!-- //slide-banner -->
			        </div>
			        
				</div>
			
			</div>
		</div>
	    <!-- //main-banner -->
	</div>
    <!-- //banner-box -->
    
    
        <h3 class="main-list">이벤트 나대나</h2>
        <div class="swiper-container">
			<div class="swiper-wrapper">
				<div class="swiper-slide">
					<a href="">
						<div>
							<img src="${pageContext.request.contextPath}/assets/img/search-img.jpg">
							<div id="" class="swiper-mix">도전기간 : 2021.10.29 ~ 2021.11.15</div>
							<div id="" class="swiper-mix">신청인원 : 89명</div>
							<div id="" class="swiper-mix">도전 금액 : 10000원</div>
							<div id="" class="swiper-mix">예상 리워드 : 2~3%</div>
						</div>
					</a>
				</div>
				<div class="swiper-slide">
				<div>
					<a href="">
						<div>
							<img src="${pageContext.request.contextPath}/assets/img/search-img.jpg">
							<div id="" class="swiper-mix">도전기간 : 2021.10.29 ~ 2021.11.15</div>
							<div id="" class="swiper-mix">신청인원 : 89명</div>
							<div id="" class="swiper-mix">도전 금액 : 10000원</div>
							<div id="" class="swiper-mix">예상 리워드 : 2~3%</div>
						</div>
					</a>
				</div>
				</div>
				<div class="swiper-slide">
					<a href="">
						<div>
							<img src="${pageContext.request.contextPath}/assets/img/search-img.jpg">
							<div id="" class="swiper-mix">도전기간 : 2021.10.29 ~ 2021.11.15</div>
							<div id="" class="swiper-mix">신청인원 : 89명</div>
							<div id="" class="swiper-mix">도전 금액 : 10000원</div>
							<div id="" class="swiper-mix">예상 리워드 : 2~3%</div>
						</div>
					</a>
				</div>
				<div class="swiper-slide">
				<a href="">
						<div>
							<img src="${pageContext.request.contextPath}/assets/img/search-img.jpg">
							<div id="" class="swiper-mix">도전기간 : 2021.10.29 ~ 2021.11.15</div>
							<div id="" class="swiper-mix">신청인원 : 89명</div>
							<div id="" class="swiper-mix">도전 금액 : 10000원</div>
							<div id="" class="swiper-mix">예상 리워드 : 2~3%</div>
						</div>
					</a>
				</div>
				<div class="swiper-slide">
				<a href="">
						<div>
							<img src="${pageContext.request.contextPath}/assets/img/search-img.jpg">
							<div id="" class="swiper-mix">도전기간 : 2021.10.29 ~ 2021.11.15</div>
							<div id="" class="swiper-mix">신청인원 : 89명</div>
							<div id="" class="swiper-mix">도전 금액 : 10000원</div>
							<div id="" class="swiper-mix">예상 리워드 : 2~3%</div>
						</div>
					</a>
				</div>
				<div class="swiper-slide">
				<a href="">
						<div>
							<img src="${pageContext.request.contextPath}/assets/img/search-img.jpg">
							<div id="" class="swiper-mix">도전기간 : 2021.10.29 ~ 2021.11.15</div>
							<div id="" class="swiper-mix">신청인원 : 89명</div>
							<div id="" class="swiper-mix">도전 금액 : 10000원</div>
							<div id="" class="swiper-mix">예상 리워드 : 2~3%</div>
						</div>
					</a>
				</div>
				<div class="swiper-slide">
				<a href="">
						<div>
							<img src="${pageContext.request.contextPath}/assets/img/search-img.jpg">
							<div id="" class="swiper-mix">도전기간 : 2021.10.29 ~ 2021.11.15</div>
							<div id="" class="swiper-mix">신청인원 : 89명</div>
							<div id="" class="swiper-mix">도전 금액 : 10000원</div>
							<div id="" class="swiper-mix">예상 리워드 : 2~3%</div>
						</div>
					</a>
				</div>
				<div class="swiper-slide">
				<a href="">
						<div>
							<img src="${pageContext.request.contextPath}/assets/img/search-img.jpg">
							<div id="" class="swiper-mix">도전기간 : 2021.10.29 ~ 2021.11.15</div>
							<div id="" class="swiper-mix">신청인원 : 89명</div>
							<div id="" class="swiper-mix">도전 금액 : 10000원</div>
							<div id="" class="swiper-mix">예상 리워드 : 2~3%</div>
						</div>
					</a>
				</div>
				<div class="swiper-slide">
				<a href="">
						<div>
							<img src="${pageContext.request.contextPath}/assets/img/search-img.jpg">
							<div id="" class="swiper-mix">도전기간 : 2021.10.29 ~ 2021.11.15</div>
							<div id="" class="swiper-mix">신청인원 : 89명</div>
							<div id="" class="swiper-mix">도전 금액 : 10000원</div>
							<div id="" class="swiper-mix">예상 리워드 : 2~3%</div>
						</div>
					</a>
				</div>
				<div class="swiper-slide">
				<a href="">
						<div>
							<img src="${pageContext.request.contextPath}/assets/img/search-img.jpg">
							<div id="" class="swiper-mix">도전기간 : 2021.10.29 ~ 2021.11.15</div>
							<div id="" class="swiper-mix">신청인원 : 89명</div>
							<div id="" class="swiper-mix">도전 금액 : 10000원</div>
							<div id="" class="swiper-mix">예상 리워드 : 2~3%</div>
						</div>
					</a>
				</div>
			</div>
	
			<!-- 네비게이션 -->
			<div class="swiper-button-next"></div><!-- 다음 버튼 (오른쪽에 있는 버튼) -->
			<div class="swiper-button-prev"></div><!-- 이전 버튼 -->
		
			<!-- 페이징 -->
			<div class="swiper-pagination"></div>
		</div>
		
		
		
		<h2 class="main-list">인기 나대나</h2>
        <div class="swiper-container">
			<div class="swiper-wrapper">
				<div class="swiper-slide">
					<a href="">
						<div>
							<img src="${pageContext.request.contextPath}/assets/img/search-img.jpg">
							<div id="" class="swiper-mix">도전기간 : 2021.10.29 ~ 2021.11.15</div>
							<div id="" class="swiper-mix">신청인원 : 89명</div>
							<div id="" class="swiper-mix">도전 금액 : 10000원</div>
							<div id="" class="swiper-mix">예상 리워드 : 2~3%</div>
						</div>
					</a>
				</div>
				<div class="swiper-slide">
				<div>
					<a href="">
						<div>
							<img src="${pageContext.request.contextPath}/assets/img/search-img.jpg">
							<div id="" class="swiper-mix">도전기간 : 2021.10.29 ~ 2021.11.15</div>
							<div id="" class="swiper-mix">신청인원 : 89명</div>
							<div id="" class="swiper-mix">도전 금액 : 10000원</div>
							<div id="" class="swiper-mix">예상 리워드 : 2~3%</div>
						</div>
					</a>
				</div>
				</div>
				<div class="swiper-slide">
					<a href="">
						<div>
							<img src="${pageContext.request.contextPath}/assets/img/search-img.jpg">
							<div id="" class="swiper-mix">도전기간 : 2021.10.29 ~ 2021.11.15</div>
							<div id="" class="swiper-mix">신청인원 : 89명</div>
							<div id="" class="swiper-mix">도전 금액 : 10000원</div>
							<div id="" class="swiper-mix">예상 리워드 : 2~3%</div>
						</div>
					</a>
				</div>
				<div class="swiper-slide">
				<a href="">
						<div>
							<img src="${pageContext.request.contextPath}/assets/img/search-img.jpg">
							<div id="" class="swiper-mix">도전기간 : 2021.10.29 ~ 2021.11.15</div>
							<div id="" class="swiper-mix">신청인원 : 89명</div>
							<div id="" class="swiper-mix">도전 금액 : 10000원</div>
							<div id="" class="swiper-mix">예상 리워드 : 2~3%</div>
						</div>
					</a>
				</div>
				<div class="swiper-slide">
				<a href="">
						<div>
							<img src="${pageContext.request.contextPath}/assets/img/search-img.jpg">
							<div id="" class="swiper-mix">도전기간 : 2021.10.29 ~ 2021.11.15</div>
							<div id="" class="swiper-mix">신청인원 : 89명</div>
							<div id="" class="swiper-mix">도전 금액 : 10000원</div>
							<div id="" class="swiper-mix">예상 리워드 : 2~3%</div>
						</div>
					</a>
				</div>
		
	
			
		</div>
			<!-- 네비게이션 -->
			<div class="swiper-button-next"></div><!-- 다음 버튼 (오른쪽에 있는 버튼) -->
			<div class="swiper-button-prev"></div><!-- 이전 버튼 -->
		
			<!-- 페이징 -->
			<div class="swiper-pagination"></div>
	</div>
	
	<h2 class="main-list">듀토리얼 나대나</h2>
	 <div class="swiper-container">
			<div class="swiper-wrapper">
				<div class="swiper-slide">
				<div>
					<a href="">
						<div>
							<img src="${pageContext.request.contextPath}/assets/img/search-img.jpg">
							<div id="" class="swiper-mix">도전기간 : 2021.10.29 ~ 2021.11.15</div>
							<div id="" class="swiper-mix">신청인원 : 89명</div>
							<div id="" class="swiper-mix">도전 금액 : 10000원</div>
							<div id="" class="swiper-mix">예상 리워드 : 2~3%</div>
						</div>
					</a>
				</div>
				</div>
				<div class="swiper-slide">
				<a href="">
						<div>
							<img src="${pageContext.request.contextPath}/assets/img/search-img.jpg">
							<div id="" class="swiper-mix">도전기간 : 2021.10.29 ~ 2021.11.15</div>
							<div id="" class="swiper-mix">신청인원 : 89명</div>
							<div id="" class="swiper-mix">도전 금액 : 10000원</div>
							<div id="" class="swiper-mix">예상 리워드 : 2~3%</div>
						</div>
					</a>
				</div>
				<div class="swiper-slide">
				<a href="">
						<div>
							<img src="${pageContext.request.contextPath}/assets/img/search-img.jpg">
							<div id="" class="swiper-mix">도전기간 : 2021.10.29 ~ 2021.11.15</div>
							<div id="" class="swiper-mix">신청인원 : 89명</div>
							<div id="" class="swiper-mix">도전 금액 : 10000원</div>
							<div id="" class="swiper-mix">예상 리워드 : 2~3%</div>
						</div>
					</a>
				</div>
		
	
			
		</div>
			<!-- 네비게이션 -->
			<div class="swiper-button-next"></div><!-- 다음 버튼 (오른쪽에 있는 버튼) -->
			<div class="swiper-button-prev"></div><!-- 이전 버튼 -->
		
			<!-- 페이징 -->
			<div class="swiper-pagination"></div>
	</div>
	
	
        
</div>
    
<!-- footer -->
<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
<!-- //footer -->
    
    
</body>

<script>
	new Swiper('.swiper-container', {
	
		slidesPerView : 4, // 동시에 보여줄 슬라이드 갯수
		spaceBetween : 40, // 슬라이드간 간격
		slidesPerGroup : 4, // 그룹으로 묶을 수, slidesPerView 와 같은 값을 지정하는게 좋음
	
		// 그룹수가 맞지 않을 경우 빈칸으로 메우기
		// 3개가 나와야 되는데 1개만 있다면 2개는 빈칸으로 채워서 3개를 만듬
		loopFillGroupWithBlank : true,
	
		loop : true, // 무한 반복
	
		pagination : { // 페이징
			el : '.swiper-pagination',
			clickable : true, // 페이징을 클릭하면 해당 영역으로 이동, 필요시 지정해 줘야 기능 작동
		},
		navigation : { // 네비게이션
			nextEl : '.swiper-button-next', // 다음 버튼 클래스명
			prevEl : '.swiper-button-prev', // 이번 버튼 클래스명
		},
	});
	
	

</script>


</html>
