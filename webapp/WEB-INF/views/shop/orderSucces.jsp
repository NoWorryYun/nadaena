<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/shop/order.css">
	
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
		<!-- 주문결제페이지배너 -->
		
		<div class="orderBanner" style="background: url('${pageContext.request.contextPath }/assets/img/shop/orderBanner.jpg') center center no-repeat;">
			<div class="orderTextBox">
				<div class="orderTitle">주문 완료</div>
				<div class="orderText">새로운 도전 나대나 !</div>
			</div>	
		</div>
		
		<div class="orderLayout">
			<div class="userInfo">
				<!-- 약관 동의 -->
				<div class="agreeBox2">
					<div class="cancelBtn">
						<button type="button">메인으로 돌아가기</button>
						<!-- <input type="button" value="취소"> -->
					</div>
					<div class="payBtn active">
						<button type="button">주문내역 확인하기</button>
						<!-- <input type="button" value="결제하기"> -->
					</div>
				</div>
				<!-- 알림 -->
				<div class="checkAlert">
					<div class="alertText">주문이 완료되었습니다.</div>	
					<div class="alertSubText">
						모바일 상품권 특성 상 구매 후 기간에 따라 청약철회가 어려울 수 있습니다.<br>
						포인트 사용 시 유의사항, 청약철회에 대한 기준을 꼭 확인해주세요. <br>
					</div>
				</div>	

			</div>
		
		</div>
		
		
				<!-- 하단배너 -->

			<div class="orderBottomBanner">
				<div class="orderTextBox">
					<div class="orderTitle"></div>
					<div class="orderText"></div>
				</div>	
			</div>
	</div>
</main>



<!-- footer -->
<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
<!-- //footer -->


</body>
</html>