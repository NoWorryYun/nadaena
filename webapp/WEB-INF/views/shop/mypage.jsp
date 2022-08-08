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
    <link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/shop/cart.css">
    
    
    
    
</head>



<body>
<!-- header -->
<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
<!-- //header -->
		


<main>
	<div class="main-box">
		<h2>포인트몰 > 장바구니</h2>
		<section id="contents_wrap1">

            <div class="contents_1">
                <div class="step">
                    <ul class="step_list">
                        <li class="on">01 장바구니</li>
                        <li><i class="fas fa-angle-right"></i></li>
                        <li>02 주문서작성</li>
                        <li><i class="fas fa-angle-right"></i></li>
                        <li>03 결제/주문완료</li>
                    </ul>
                </div>

                <div class="table_cart">

                    <table>
                        <colgroup>
                            <col width="120">
                            <col width="400">
                            <col width="130">
                            <col width="150">
                            <col width="150">
                            <col width="130">
                            <col width="120">
                        </colgroup>
                        <thead>
                            <tr>
                                <th scope="col">
                                    <div class="check">
                                        <input type="checkbox" name="allcheck" onclick="all_basket_check" class="checkbox" checked>
                                    </div>
                                </th>
                                <th scope="col">상품명/선택사항</th>
                                <th scope="col">수량</th>
                                <th scope="col">상품금액</th>
                                <th scope="col">삭제</th>
                            </tr>
                        </thead>
                        <tfoot>
                            <tr>
                                <td colspan="7">
                                    <div class="td_text">장바구니가 비어 있습니다.</div>
                                </td>
                            </tr>
                        </tfoot>
                    </table>
                </div>

                <ul class="btn">
                    <li><a href="">전체상품주문</a></li>
                    <li><a href="">선택상품주문</a></li>
                </ul>

                <p class="ing"><a href="#">계속쇼핑하기</a></p>
                
            </div>

        </section>


	</div>
</main>



<!-- footer -->
<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
<!-- //footer -->


</body>

</html>
