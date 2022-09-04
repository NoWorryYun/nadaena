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
	
	<!-- js -->
	<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/jquery/jquery-1.12.4.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/assets/bootstrap/js/bootstrap.min.js"></script>
	
	
	
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/shop/mypage.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/shop/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/shop/animate.css">
    <%-- <link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/shop/cart.css"> --%>
    
    
    
    
</head>



<body>
<!-- header -->
<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
<!-- //header -->
		


<main>
	<div class="main-box">
		<h2>포인트몰 > 구매내역</h2>
		<section id="contents_wrap1">

            <div class="contents_1">
                <div class="step">
                        <h4 class="table_title">최근 구매내역</h4>
                </div>

                <div class="table_cart">

                    <table>
                        <colgroup>
                            <col width="190">
                            <col width="460">
                            <col width="180">
                            <col width="190">
                            <col width="190">
                        </colgroup>
                        <thead>
                            <tr>
                                <!-- <th scope="col">
                                    <div class="check">
                                        <input type="checkbox" name="allcheck" onclick="all_basket_check" class="checkbox" checked>
                                    </div>
                                </th> -->
                                <th scope="col">구매일시</th>
                                <th scope="col">상품정보</th>
                                <th scope="col">상태</th>
                                <th scope="col">상품금액</th>
                                <th scope="col">관리</th>
                                <!-- <th scope="col">삭제</th> -->
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>2020.02.02</td>
                                <td>문상</td>
                                <td>사용가능</td>
                                <td>50,000</td>
                                <td>재발송/환불</td>
                            </tr>
                        <tbody>
                    </table>
                </div>
<!-- 
                <ul class="btn">
                    <li><a href="">전체상품주문</a></li>
                    <li><a href="">선택상품주문</a></li>
                </ul>
 -->
                <p class="ing"><a href="#">계속쇼핑하기</a></p>
                
            </div>

        </section>


	</div>
</main>



<!-- footer -->
<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
<!-- //footer -->


</body>
<script type="text/javascript">


</script>

</html>
