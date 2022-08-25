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
	<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/tap_shop.js"></script>
	
		<!-- css -->
	<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/shop/style.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/shop/shop.css">
    <%-- <link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/animate.css"> --%>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/shop/productPage.css">
	
	
	<!-- js -->
	
</head>



<body>
<!-- header -->
<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
<!-- //header -->
		


<main>
	 <div id="contents_wrap2">
            <div class="contents_2">
                <div class="product_img">
                    <img src="${pageContext.request.contextPath }/assets/img/shop/${productDetail.thumbnail }.jpg" alt="">
                </div>
                <div class="ex">
                    <p class="title">${productDetail.productName }</p>
					
					
                    <ul class="price_list">
                        <li>판매가격 <span>50,000원</span></li>
                    </ul>
                    <div class="option">
                        <p>옵션</p>
                        <select id="select">
                         <option value="fixed">-- 옵션필수선택 --</option>
                        	<c:forEach items="${optionList }" var="option">
                            <option value="${option.optionNo }">${option.optionName }</option>
                            </c:forEach>
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
                   		 <!-- 
                        <p><a href="">찜하기</a></p>
                        <p><a href="">장바구니담기</a></p>
                         -->
                        <p class="buy"><a href="${pageContext.request.contextPath }/shop/order">구매하기</a></p>
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
                    <li data-tab="tab-1"  class="current">상세정보</li>
                    <li data-tab="tab-2">리뷰</li>
                    <li data-tab="tab-3">문의</li>
                    <li data-tab="tab-4">취소/환불 규정</li>
                </ul>
                <!-- class="current"  -->
				
				<!-- 상세페이지 -->
                <div class="detail_tab tab_content active" id="tab-1">
                	<c:import url="/WEB-INF/views/shop/detail.jsp"></c:import>
                </div>
                
                <!-- 리뷰페이지 -->
                <div class="detail_tab tab_content" id="tab-2" style="display: none;">
                	<c:import url="/WEB-INF/views/shop/review.jsp"></c:import>
                </div>
                
                <!-- 문의페이지 -->
                <div class="detail_tab tab_content" id="tab-3" style="display: none;">
                	<c:import url="/WEB-INF/views/shop/qna.jsp"></c:import>
                 </div>
                 
                <!-- 규정페이지 -->
                <div class="detail_tab tab_content" id="tab-4" style="display: none;">
                	<c:import url="/WEB-INF/views/shop/policy.jsp"></c:import>
                </div>
                
            </div>
        </div>
        
</main>



<!-- footer -->
<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
<!-- //footer -->


</body>
<script type="text/javascript">
	/* 로그인여부 확인 후 QNA작성 */
	var userNo = $("[name='userNo']").val()
	$(".addQNA").on("click",function(){
		 if(userNo == ""){
			alert("로그인 후 작성할 수 있습니다.")
		}; 
	});
</script>
</html>
