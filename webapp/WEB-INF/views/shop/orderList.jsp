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
	
	
    <link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/shop/mypage2.css">
    
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
		
			<!-- aside -->
			<c:import url="/WEB-INF/views/includes/asideMyPage.jsp"></c:import>
			<!-- //aside -->
		
			
			<div id="content" class="col-10">
				<h3>구매목록</h3>
				
				<div class="contents_1">
	                <div class="table_cart">
	
	                    <table>
	                        <colgroup>
	                            <col width="130">
	                            <col width="96">
	                            <col width="400">
	                            <col width="120">
	                            <col width="130">
	                            <col width="130">
	                        </colgroup>
	                        <thead>
	                            <tr>
	                                <th scope="col">구매일시</th>
	                                <th scope="col" colspan="2">상품정보</th>
	                                <th scope="col">상태</th>
	                                <th scope="col">상품금액</th>
	                                <th scope="col">관리</th>
	                            </tr>
	                        </thead>
	                        <tbody>
	                        	<c:forEach items="${orderList }" var="order">
		                            <tr>
		                                <td>${order.orderDate }</td>
		                                <td><img src="${pageContext.request.contextPath }/upload/product/${order.productNo}/${order.thumbnail}" alt="주문상품" width="96px" height="96px"></td>
		                                <td>${order.productName }</td>
		                                <td>
			                                <c:choose>
			                                	<c:when test="${order.useDate == null && order.refundDate == null}">사용가능</c:when>
			                                	<c:when test="${order.useDate != null && order.refundDate == null }">사용완료<br>${order.useDate } </c:when>
			                                	<c:when test="${order.refundDate != null }">환불<br>${order.refundDate } </c:when>
			                                </c:choose>
		                                </td>
		                                <td>${order.orderPay }</td>
		                                <td>재발송/환불</td>
		                            </tr>
	                            </c:forEach>
	                        <tbody>
	                    </table>
	                </div>
<!-- 
                <ul class="btn">
                    <li><a href="">전체상품주문</a></li>
                    <li><a href="">선택상품주문</a></li>
                </ul>
 -->			
 				<!-- 
                <p class="ing"><a href="#">계속쇼핑하기</a></p>
                 -->
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