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
	
	
		<!-- css -->
	<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/shop/style.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/shop/shop.css">
    <%-- <link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/animate.css"> --%>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/shop/productPage.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/shop/policy.css">
	
	
	<!-- js -->
	<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/jquery/jquery-1.12.4.js"></script>
	<script src="${pageContext.request.contextPath }/assets/js/nav.js"></script>
	
</head>



<body>
<!-- header -->
<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
<!-- //header -->
		


<main>
	 <div id="contents_wrap2">
            <div class="contents_2">
                <div class="product_img">
                    <img src="https://cdn.reflowhq.com/media/79235812/815804108/eee22bfd4daaf8f4038a4a468f349a2c_md.jpg" alt="">
                </div>
                <div class="ex">
                    <p class="title">컬처랜드 상품권 5만원권 온라인</p>

                    <ul class="price_list">
                        <li>판매가격 <span>50,000원</span></li>
                    </ul>

                    <div class="option">
                        <p>옵션</p>
                        <select id="select">
                            <option value="fixed">-- 옵션필수선택 --</option>
                            <option value="a">A타입</option>
                        </select>
                    </div>

                    <div class="count">
                        <p>수량</p>
                        <form>
                            <input type=text value=1>
                            <input type=button value="+" onClick="javascript:this.form.amount.value++;">
                            <input type=button value="-" onClick="javascript:this.form.amount.value--;">
                        </form>
                    </div>

                    <div class="sum">
                        <p>총 합계금액<span>50,000원</span></p>
                    </div>

                    <div class="button">
                        <p><a href="">찜하기</a></p>
                        <p><a href="">장바구니담기</a></p>
                        <p class="buy"><a href="">구매하기</a></p>
                        <!-- <input type="button" value="구매하기">
                        <input type="button" value="장바구니담기">
                        <input type="button" value="찜하기"> -->
                    </div>
                </div>
            </div>
        </div>
		
		<div id="contents_wrap4">
            <div class="sub_nav">
                <ul class="tab_menu">
                    <li class="current" data-tab="tab-1">상세정보</li>
                    <li data-tab="tab-2">리뷰</li>
                    <li data-tab="tab-3">문의</li>
                    <li data-tab="tab-4">취소/환불 규정</li>
                </ul>

                <div class="notice_list tab_content active" id="tab-1">
                    <p>페이지 준비중입니다</p>
                    <br>
                    <p>티켓 사용정보</p>
                    <p>PIN 정보</p>
                    <p>결제정보</p>
                    <p>상세페이지</p>
                    <img src="http://img1.tmon.kr/cdn4/deals/2021/11/25/7199972470/review_516dd.jpg" alt="">
                </div>
            </div>
        </div>
        
</main>



<!-- footer -->
<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
<!-- //footer -->


</body>

</html>
