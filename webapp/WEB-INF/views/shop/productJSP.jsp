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
	<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/shop/policy.css">
	
	<!-- js -->
	
</head>



<body>
<!-- header -->
<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
<!-- //header -->
		


<main>
<div class="main-box">
	 <div id="contents_wrap2">
            <div class="contents_2">
                <div class="product_img">
                    <img src="${pageContext.request.contextPath }/upload/product/${productDetail.productNo}/${productDetail.thumbnail}" alt="">
                </div>
                <div class="ex">
                    <p class="title">${productDetail.productName }</p>
					
					
                    <ul class="price_list">
                        <li>판매가격 
                        <div class="priceWrap">
                        	<span id="optionPrice"></span><span>원</span>
                        	</div>
                       	</li>
                    </ul>
                    <!-- 결제폼 -->
                    <form action="${pageContext.request.contextPath}/shop/orderForm" method="get" name="order">
                    	<input type="hidden" name="productNo" value="${productDetail.productNo }">
	                    <div class="option">
	                        <p>옵션</p>
	                        <select name="options" id="select">
	                        	<c:forEach items="${optionList }" var="option" varStatus="optno">
	                           		 <option value="${option.optionNo }" <c:if test="${optno.count ==1 }">selected="selected"</c:if>>${option.optionName }</option>
	                           		 
	                           		 <!-- selectd -->
	                           		 <%-- 
	                           		 <c:if test=" ${optno.count == 1}">
	                           			<option value="${option.optionNo }" selected="selected">${option.optionName }</option>
	                           		 </c:if>
	                           		 <c:if test=" ${optno.count != 1}">
	                           		 	<option value="${option.optionNo }">${option.optionName }</option>
	                           		 </c:if>
	                           		  --%>
	                            </c:forEach>
	                        </select>
	                    </div>
	
	                    <div class="count">
	                        <p>수량</p>
	                        	<div class="countBtn">
		                            <input type=button value="-" class="amountMinus">
		                            <input name="amount" class="amount" type=text value=1 readonly="readonly">
		                            <input type=button value="+" class="amountPlus">
	                            </div>
	                    </div>
					
	                    <div class="sum">
	                        <p>총 합계금액<span id="totalPrice"></span></p>
	                    </div>
	
	                    <div class="payBtn">
							<button type="submit">구매하기</button>
							<!-- <input type="button" value="결제하기"> -->
						</div>
                    </form>
					<!-- //결제폼 -->
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
</div>       
</main>



<!-- footer -->
<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
<!-- //footer -->


</body>
<script type="text/javascript">
	/* 로그인여부 확인 후 QNA작성 */
	var userNo = $("[name='userNo']").val();
	
	$(".addQNA").on("click",function(){
		if("${authUser}" == ""){
			alert("로그인 후 이용할 수 있습니다.");
			location.href = "${pageContext.request.contextPath }/loginForm";
			return false;
		}
	});
	
	
	/* 로그인 후 구매하기버튼 */
	$(".payBtn button").on("click", function(){
		if("${authUser}" == ""){
			alert("로그인 후 이용할 수 있습니다.");
			location.href = "${pageContext.request.contextPath }/loginForm";
			return false;
		}
	});
	
	
	/* 수량선택 */
	var amount = $("input.amount").val();
	var num = amount;
	
		/* 플러스 */
	$(".amountPlus").on("click",function(){
		if(num >= 99){
			alert("수량이 너무 많습니다.");
		}else{
			num ++ ;
			$("input.amount").val(num);
			price();
		}
	});
	
		/* 마이너스 */
	$(".amountMinus").on("click",function(){
		if(num <= 1){
			alert("수량이 너무적습니다.");
		}else{
			num -- ;
			$("input.amount").val(num);
			price();
		}
	});

		

	
	/*******************************/
	
	
	/* 합계금액 */
	function price(){
		var totalPrice = optP * $("input.amount").val();
		totalPrice = addComma(totalPrice);
		$("#totalPrice").text(totalPrice + "원");
	};

	
	
	
	
	/* 처음 옵션가격 */
	$(function(){
		var optionNo = $("#select").val();
		$.ajax({
			
			url : "${pageContext.request.contextPath }/shop/product/getOptionPrice",		
			type : "post",
			contentType : "application/json",
			data : optionNo,

			dataType : "json",
			success : function(result){
				/*성공시 처리해야될 코드 작성*/
				
				
				optPrice = addComma(result);
				$("#optionPrice").text(optPrice);
				
				
				/* 처음 옵션값 optP 설정*/
				optP = result;
				price();
				
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	  
	});
		
	/* 옵션 선택하면 가격 불러오기 */
	$("#select").change(function(){
		  var optionNo = $(this).val();
		  
		  /* 옵션가격불러오기 */
		  $.ajax({
				
				url : "${pageContext.request.contextPath }/shop/product/getOptionPrice",		
				type : "post",
				contentType : "application/json",
				data : optionNo,

				dataType : "json",
				success : function(result){
					/*성공시 처리해야될 코드 작성*/
					optPrice = addComma(result);
					$("#optionPrice").text(optPrice);

					/* 옵션 변경했을 때 옵션값 optP 설정*/
					optP = result;
					price();
					
				},
				error : function(XHR, status, error) {
					console.error(status + " : " + error);
				}
			});
		  
	}); 
	
	
	
	//천단위 콤마 펑션
	function addComma(value){
		value = value.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
		return value; 
	}
	
	 
</script>
</html>
