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
	
	<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/main-css/BSB-Slider-3-Products.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/main-css/Media-Slider-Bootstrap-3.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/main-css/MUSA_carousel-product-cart-slider-carousel-product-cart-slider.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/main-css/Responsive-Product-Slider.css">
	
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/6.4.8/swiper-bundle.min.css">
	
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/mainslider.css">
	
	<!-- js -->
	<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/jquery/jquery-1.12.4.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/assets/bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/jquery.min.js"></script>
	
	<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
	
	
</head>



<body>

<!-- header -->
<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
<!-- //header -->

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
	                		<form id="search-submit" class="d-flex align-items-center" action="${pageContext.request.contextPath}/search/searchForm" method="get">
		                		<input id="txt-main-search" class="form-control form-control-lg flex-shrink-1 form-control-borderless" type="text" placeholder="검색어를 입력해주세요." name="keyword" value=""/>
		                		<button id="search-btn" class="btn btn-success btn-lg" type="submit">검색</button>
	                		</form>
	            		</div>
	            		<div class="hash">
		            		<div class="hash-name"><a href="${pageContext.request.contextPath}/search/searchForm?keyword=봉사활동" class="hash-tag">#봉사활동</a></div>
		            		<div class="hash-name2"><a href="${pageContext.request.contextPath}/search/searchForm?keyword=운동" class="hash-tag">#운동</a></div>
		            		<div class="hash-name2"><a href="${pageContext.request.contextPath}/search/searchForm?keyword=반려동물" class="hash-tag">#반려동물</a></div>
		            		<div class="hash-name2"><a href="${pageContext.request.contextPath}/search/searchForm?keyword=생활" class="hash-tag">#생활</a></div>
		            		<div class="hash-name2"><a href="${pageContext.request.contextPath}/search/searchForm?keyword=식습관" class="hash-tag">#식습관</a></div>
		            		<div class="hash-name2"><a href="${pageContext.request.contextPath}/search/searchForm?keyword=마라" class="hash-tag">#마라</a></div>
	            		</div>
	       			</div>
	        		 <!-- //title-search -->
				</div>
				
				<div class="col-5">
				
					<div class="slide-banner">
			            <div id="carousel-1" class="carousel slide" data-bs-ride="carousel">
			                <div class="carousel-inner">
			                <!-- 이미지경로 따로, 이벤트경로 지정해야함... -->
			                    <div class="carousel-item active slider-size">
				                    <a href="${pageContext.request.contextPath}/challenge/${MainTitleVo.challengeNo}/intro">
				                    	<img class="w-100 d-block" src="${pageContext.request.contextPath}/assets/img/search-img.jpg" alt="Slide Image" style="padding-right: 0px;padding-left: 0px;" />
				                    </a>
			                    </div>
			                    <div class="carousel-item slider-size">
				                    <a href="${pageContext.request.contextPath}/challenge/${MainTitleVo.challengeNo}/intro">
				                    	<img class="w-100 d-block" src="https://unsplash.it/g/430/431?image=502" alt="Slide Image" />
				                    </a>
			                    </div>
			                    <div class="carousel-item slider-size">
				                    <a href="${pageContext.request.contextPath}/challenge/${MainTitleVo.challengeNo}/intro">
				                    	<img class="w-100 d-block" src="https://unsplash.it/g/430/431?image=404" alt="Slide Image" />
				                    </a>
			                    </div>
			                	<div class="carousel-item slider-size">
				                	<a href="${pageContext.request.contextPath}/challenge/${MainTitleVo.challengeNo}/intro">
				                		<img class="w-100 d-block" src="https://unsplash.it/g/430/431?image=405" alt="Slide Image" />
				                	</a>
			                	</div>
				                    <div class="carousel-item slider-size">
				                    	<a href="${pageContext.request.contextPath}/challenge/${MainTitleVo.challengeNo}/intro">
				                    <img class="w-100 d-block" src="https://unsplash.it/g/430/431?image=406" alt="Slide Image" />
			                    </a>
			                    </div>
			                </div>
			                <div>
			                <a class="carousel-control-prev" href="#carousel-1" role="button" data-bs-slide="prev">
			                	<span class="carousel-control-prev-icon"></span>
			                	<span class="visually-hidden">Previous</span>
			                </a>
			                <a class="carousel-control-next" href="#carousel-1" role="button" data-bs-slide="next">
				                <span class="carousel-control-next-icon"></span>
				                <span class="visually-hidden">Next</span>
			                </a></div>
			                <ol class="carousel-indicators">
			                    <li class="active" data-bs-target="#carousel-1" data-bs-slide-to="0"></li>
			                    <li data-bs-target="#carousel-1" data-bs-slide-to="1"></li>
			                    <li data-bs-target="#carousel-1" data-bs-slide-to="2"></li>
			                    <li data-bs-target="#carousel-1" data-bs-slide-to="3"></li>
			                    <li data-bs-target="#carousel-1" data-bs-slide-to="4"></li>
			                    
			                </ol>
			            </div>		           
			        </div>
			        <!-- //slide-banner -->
				</div>
			
			</div>
		</div>
	    <!-- //main-banner -->
	</div>
    <!-- //banner-box -->
    
    
<main>
    <div class="main-box">
        
        <h3>이벤트 나대나</h3>
        <div class="more"><a href="${pageContext.request.contextPath}/event">더보기 > </a></div>
    	<div class="lunchbox">
    	
			<!-- slider main container -->
		  <div id="swiper1" class="swiper-container"> 
		  
		
		      <!-- additional required wrapper -->
		      <div class="swiper-wrapper">
		
		          <!-- slides -->
		          
			  <!--챌린지 반복영역 -->
		          <c:forEach var="MainTitleVo" items="${evMap.eventList}">
			          <div class="swiper-slide">
				          <li>
					          <a href="${pageContext.request.contextPath}/challenge/${MainTitleVo.challengeNo}/intro">
						          <div class="product">
						             <img class="photograph" src="${pageContext.request.contextPath}/${MainTitleVo.img}" alt="">
						             <div>
						           	 	<p class="nadaena_name">${MainTitleVo.clgTitle}</p>
						           	 	<p class="nadaena_period">도전기한: ${MainTitleVo.period}</p>
						           	 	<p class="nadaena_count_user">참여인원: ${MainTitleVo.count_user}</p>
						           	 	<p class="nadaena_payment">도전금액: ${MainTitleVo.payment}</p>
						           	 </div>
						          </div>
						      </a>
						  </li>  
			          </div>
				</c:forEach>
	          <!--챌린지 반복영역 -->
		  	</div>
			<!-- pagination -->
	      	<div class="swiper-pagination"></div>
      		<!-- navigation buttons -->
			<div id="js-prev1" class="swiper-button-prev col-1"></div>
			<div id="js-next1" class="swiper-button-next col-1"></div>
	</div>
	</div>
	


	<h3>인기 나대나</h3>
	<div class="more"><a href="">더보기 > </a></div>
	
    	<div class="lunchbox">
    	
			<!-- slider main container -->
		  <div id="swiper1" class="swiper-container"> 
		  
		
		      <!-- additional required wrapper -->
		      <div class="swiper-wrapper">
		
		          <!-- slides -->
		          
			  <!--챌린지 반복영역 -->
		          <c:forEach var="MainTitleVo" items="${evMap.popularityList}">
			          <div class="swiper-slide">
				          <li>
					          <a href="${pageContext.request.contextPath}/challenge/${MainTitleVo.challengeNo}/intro">
						          <div class="product">
						             <img class="photograph" src="${pageContext.request.contextPath}/${MainTitleVo.img}" alt="">
						             <div>
						           	 	<p class="nadaena_name">${MainTitleVo.clgTitle}</p>
						           	 	<p class="nadaena_period">도전기한: ${MainTitleVo.period}</p>
						           	 	<p class="nadaena_count_user">신청인원: ${MainTitleVo.count_user}</p>
						           	 	<p class="nadaena_payment">도전금액: ${MainTitleVo.payment}</p>
						           	 </div>
						          </div>
						      </a>
						  </li>  
			          </div>
				</c:forEach>
	          <!--챌린지 반복영역 -->
		  	</div>
			<!-- pagination -->
	      	<div class="swiper-pagination"></div>
      		<!-- navigation buttons -->
			<div id="js-prev1" class="swiper-button-prev col-1"></div>
			<div id="js-next1" class="swiper-button-next col-1"></div>
	</div>
	</div>



	<h3>마감임박 나대나</h3>
	<div class="more"><a href="">더보기 > </a></div>
    	<div class="lunchbox">
    	
			<!-- slider main container -->
		  <div id="swiper1" class="swiper-container"> 
		  
		
		      <!-- additional required wrapper -->
		      <div class="swiper-wrapper">
		
		          <!-- slides -->
		          
			  <!--챌린지 반복영역 -->
		          <c:forEach var="MainTitleVo" items="${evMap.limitTimeList}">
			          <div class="swiper-slide">
				          <li>
					          <a href="${pageContext.request.contextPath}/challenge/${MainTitleVo.challengeNo}/intro">
						          <div class="product">
						             <img class="photograph" src="${pageContext.request.contextPath}/${MainTitleVo.img}" alt="">
						             <div>
						           	 	<p class="nadaena_name">${MainTitleVo.clgTitle}</p>
						           	 	<p class="nadaena_period">도전기한: ${MainTitleVo.period}</p>
						           	 	<p class="nadaena_count_user">신청인원: ${MainTitleVo.count_user}</p>
						           	 	<p class="nadaena_payment">도전금액: ${MainTitleVo.payment}</p>
						           	 </div>
						          </div>
						      </a>
						  </li>  
			          </div>
				</c:forEach>
	          <!--챌린지 반복영역 -->
		  	</div>
			<!-- pagination -->
	      	<div class="swiper-pagination"></div>
      		<!-- navigation buttons -->
			<div id="js-prev1" class="swiper-button-prev col-1"></div>
			<div id="js-next1" class="swiper-button-next col-1"></div>
	</div>
	</div>





        
	</div>
	<!-- //main-box -->
</main>
<!-- //main -->
<!-- footer -->
<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
<!-- //footer -->
    
    
</body>

<script>

var swiper = new Swiper('.swiper-container', {

    initialSlide : -1,

    slidesPerView: 4,

    observer: true,

    observeParents: true,

    loop: true,

    pagination: {

      el: '.swiper-pagination',

      type: 'fraction',

    },

    navigation: {

      nextEl: '.swiper-button-next',

      prevEl: '.swiper-button-prev',

    },

  });
  
  
/* $("#search-submit").on("submit", function(){
    var keyword = $("#txt-main-search").val()
	console.log(keyword);
	
    if(keyword == '' || keyword == null){
		alert("검색어를 입력해주세요.");
		return false;
    }
    
    return true;
  });
 */

</script>


</html>
