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
		
			<!-- header -->
			<c:import url="/WEB-INF/views/includes/asideMyPage.jsp"></c:import>
			<!-- //header -->
		
			
			<div id="content" class="col-10">
				<h3>구매목록</h3>
				
				<div class="buylist">
					<div class="buylist-header">
						<div class="orderdate">2022.08.07 주문</div>
						<div class="product">상품 상세보기 > </div>
					</div>
					<div class="buylist-body">
						<div class="buylist-info">
							<div class="delivery1">배송완료 <span class="delivery2">8/12 도착</span></div>
							<br>
							<div class="buylist-inside">
								<div class="buylist-imagebox"><img src="${pageContext.request.contextPath }/assets/img/coffee.jpg"></div>
								<div class="buylist-text">
									<p>칸타타 콘트라블랙 500ml, 24개입</p>
									<p>100,000P / 2개</p>
								</div>
							</div>
							
						</div>
						<div class="buttons-box">
							<div class="buylist-buttons">
								<button>배송조회</button>
								<button>교환, 반품신청</button>
								<button>리뷰 작성하기</button>
							</div>
						</div>
					</div>
				</div>
				<div class="buylist">
					<div class="buylist-header">
						<div class="orderdate">2022.08.07 주문</div>
						<div class="product">상품 상세보기 > </div>
					</div>
					<div class="buylist-body">
						<div class="buylist-info">
							<div class="delivery1">배송완료 <span class="delivery2">8/12 도착</span></div>
							<br>
							<div class="buylist-inside">
								<div class="buylist-imagebox"><img src="${pageContext.request.contextPath }/assets/img/coffee.jpg"></div>
								<div class="buylist-text">
									<p>칸타타 콘트라블랙 500ml, 24개입</p>
									<p>100,000P / 2개</p>
								</div>
							</div>
							
						</div>
						<div class="buttons-box">
							<div class="buylist-buttons">
								<button>배송조회</button>
								<button>교환, 반품신청</button>
								<button>리뷰 작성하기</button>
							</div>
						</div>
					</div>
				</div>
				<div class="buylist">
					<div class="buylist-header">
						<div class="orderdate">2022.08.07 주문</div>
						<div class="product">상품 상세보기 > </div>
					</div>
					<div class="buylist-body">
						<div class="buylist-info">
							<div class="delivery1">배송완료 <span class="delivery2">8/12 도착</span></div>
							<br>
							<div class="buylist-inside">
								<div class="buylist-imagebox"><img src="${pageContext.request.contextPath }/assets/img/coffee.jpg"></div>
								<div class="buylist-text">
									<p>칸타타 콘트라블랙 500ml, 24개입</p>
									<p>100,000P / 2개</p>
								</div>
							</div>
							
						</div>
						<div class="buttons-box">
							<div class="buylist-buttons">
								<button>배송조회</button>
								<button>교환, 반품신청</button>
								<button>리뷰 작성하기</button>
							</div>
						</div>
					</div>
				</div>
				<div class="buylist">
					<div class="buylist-header">
						<div class="orderdate">2022.08.07 주문</div>
						<div class="product">상품 상세보기 > </div>
					</div>
					<div class="buylist-body">
						<div class="buylist-info">
							<div class="delivery1">배송완료 <span class="delivery2">8/12 도착</span></div>
							<br>
							<div class="buylist-inside">
								<div class="buylist-imagebox"><img src="${pageContext.request.contextPath }/assets/img/coffee.jpg"></div>
								<div class="buylist-text">
									<p>칸타타 콘트라블랙 500ml, 24개입</p>
									<p>100,000P / 2개</p>
								</div>
							</div>
							
						</div>
						<div class="buttons-box">
							<div class="buylist-buttons">
								<button>배송조회</button>
								<button>교환, 반품신청</button>
								<button>리뷰 작성하기</button>
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
		
	</div>
</main>



<!-- footer -->
<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
<!-- //footer -->



</body>

</html>