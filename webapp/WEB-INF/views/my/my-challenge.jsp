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
	<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/my.css">
	
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
		<div class="row">
			<div id="aside" class="col-2">
				<h2>마이페이지</h2>
				<div>
					왼쪽메뉴 등등
				</div>
			</div>
			
			<div id="content" class="col-10">
				<h3>나의 챌린지</h3>
				
				<div class="challenge-header">참가중 챌린지</div>
				<div class="challenge-images">
					<div class="challenge-box">
						<div class="challenge-image"><img src="${pageContext.request.contextPath }/assets/img/search-img.jpg"></div>
						<div class="challenge-info">
							<h4>마라톤</h4>
							<p class="c-inpo">챌린지 기간 : 2022.10.15 ~ 2022.11.13</p>
							<p>참여 인원 : 15</p>
							<p>최소 도전비용 : 20000원</p>
							<p class="last-p">기대 성공금액 : 2~3%</p>
						</div>
						<!-- <button>리워드 받기</button> -->
					</div>	
					<div class="challenge-box">
						<div class="challenge-image"><img src="${pageContext.request.contextPath }/assets/img/search-img.jpg"></div>
						<div class="challenge-info">
							<h4>마라톤</h4>
							<p class="c-inpo">챌린지 기간 : 2022.10.15 ~ 2022.11.13</p>
							<p>참여 인원 : 15</p>
							<p>최소 도전비용 : 20000원</p>
							<p class="last-p">기대 성공금액 : 2~3%</p>
						</div>
						<button>리워드 받기</button>
						<div class="cmodal">
							<div class="cmodal-content">
								모달창 내용
							</div>
						</div>
					</div>
					<div class="challenge-box">
						<div class="challenge-image"><img src="${pageContext.request.contextPath }/assets/img/search-img.jpg"></div>
						<div class="challenge-info">
							<h4>마라톤</h4>
							<p class="c-inpo">챌린지 기간 : 2022.10.15 ~ 2022.11.13</p>
							<p>참여 인원 : 15</p>
							<p>최소 도전비용 : 20000원</p>
							<p class="last-p">기대 성공금액 : 2~3%</p>
						</div>
						<button>리워드 받기</button>
					</div>
				</div>
				<div class="challenge-header">
					완료된 챌린지
					<ul>
						<li><a href="#">전체</a></li>
						<li><a href="#">성공</a></li>
						<li class="last-list"><a href="#">실패</a></li>
					</ul>
				</div>
				<div class="challenge-images">
					<div class="challenge-box">
						<div class="challenge-image"><img src="${pageContext.request.contextPath }/assets/img/search-img.jpg"></div>
						<div class="challenge-info">
							<h4>마라톤</h4>
							<p class="c-inpo">챌린지 기간 : 2022.10.15 ~ 2022.11.13</p>
							<p>참여 인원 : 15</p>
							<p>최소 도전비용 : 20000원</p>
							<p class="last-p">기대 성공금액 : 2~3%</p>
						</div>
					</div>	
					<div class="challenge-box">
						<div class="challenge-image"><img src="${pageContext.request.contextPath }/assets/img/search-img.jpg"></div>
						<div class="challenge-info">
							<h4>마라톤</h4>
							<p class="c-inpo">챌린지 기간 : 2022.10.15 ~ 2022.11.13</p>
							<p>참여 인원 : 15</p>
							<p>최소 도전비용 : 20000원</p>
							<p class="last-p">기대 성공금액 : 2~3%</p>
						</div>
					</div>
					<div class="challenge-box">
						<div class="challenge-image"><img src="${pageContext.request.contextPath }/assets/img/search-img.jpg"></div>
						<div class="challenge-info">
							<h4>마라톤</h4>
							<p class="c-inpo">챌린지 기간 : 2022.10.15 ~ 2022.11.13</p>
							<p>참여 인원 : 15</p>
							<p>최소 도전비용 : 20000원</p>
							<p class="last-p">기대 성공금액 : 2~3%</p>
						</div>
					</div>
				</div>
			</div>
			<div class="paging" class="paging">
				<ul>
					<li><a href="">◀</a></li>
					<li><a href="">1</a></li>
					<li><a href="">2</a></li>
					<li><a href="">3</a></li>
					<li><a href="">4</a></li>
					<li><a href="">5</a></li>
					<li><a href="">▶</a></li>
				</ul>
				<div class="clear"></div>
			</div>
		</div>
		
	</div>
</main>



<!-- footer -->
<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
<!-- //footer -->



</body>

</html>