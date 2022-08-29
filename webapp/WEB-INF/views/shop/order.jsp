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
		<!-- 
		<div class="orderBanner">
			<div class="orderTextBox">
				<div class="orderTitle">주문결제</div>
				<div class="orderText">매일매일 새로운 혜택이 가득</div>
			</div>	
		</div>
		 -->
		<div class="orderLayout">
			<!-- 주문결제페이지 리스트 -->
			<!-- 
			<div class="orderList">
				<ul>
					<li>01 장바구니<span>></span></li>
					<li class="active">02 주문결제<span>></span></li>
					<li>03 주문완료</li>
				</ul>
			</div>
			 -->
			
			<!-- 주문제품 -->
			<div class="orderProduct">
				<div class="orderProductImg"><img src="${pageContext.request.contextPath }/assets/img/shop/${product.thumbnail }.jpg" alt=""/></div>
				<div class="productTextBox">
					<div class="productText"><span>${product.productName }</span>상품을 주문합니다.</div>
					<div class="productSubText">선택하신 상품의 가격과 옵션정보는 하단 주문상품 정보에서 확인하실 수 있습니다.</div>
				</div>
			</div>
			<!-- 사용자정보 -->
			<div class="userInfo">

				<!-- 사용자선택 -->
				<div class="userInfoTextBox">
					<div class="userInfoText">사용자정보</div>
					<div class="userInfoSubText">※ 입력하신 연락처와 이메일로 티켓이나 PIN번호 등의 사용 정보를 받아보실 수 있습니다.</div>
				</div>
				<table class="userChoice">
					<th>사용자 선택</th>
					<th>
						<input type="checkbox" id="check" checked="checked">
						<label for="check">구매자 본인</label>
					</th>
					
					<tr>
						<td>이름</td>
						<td>장성찬</td>
					</tr>
					<tr>
						<td>연락처</td>
						<td>010-0000-1111</td>
					</tr>
					<tr>
						<td>이메일</td>
						<td></td>
					</tr>

				</table>

				<!-- 주문상품정보 -->
				<div class="userInfoTextBox">
					<div class="userInfoText">주문상품 정보</div>
				</div>
				<table class="productInfo">
					<th>상품정보</th>
					<th>상품금액</th>
					<th>할인금액</th>
					<th>배송비</th>
					<th>주문금액</th>
					
					<tr class="orderInfo">
						<td>
							<div class="orderProductImg"><img src="${pageContext.request.contextPath }/assets/img/shop/${product.thumbnail }.jpg" alt=""/></div>
							<div class="productTextBox">
								<div class="productText"><span>${product.productName }</div>
								<div class="productSubText">${option.optionName }<span>${param.amount }개</span></div>
								<div class="orderNum">수량변경</div>
							</div>
						</td>
						<td class="optionPrice"></td>
						<td>0원</td>
						<td>-</td>
						<td class="optionPrice"></td>
					</tr>
					<!-- 
					<tr class="productPrice">
						<td></td>
						<td colspan="4">상품금액<span>${option.optionPrice * param.amount }원</span></td>
					</tr>
					<tr class="productSale">
						<td></td>
						<td colspan="4">할인금액<span>0원</span></td>
					</tr>
					<tr class="orderPrice">
						<td></td>
						<td colspan="4">배송비<span>0원</span></td>
					</tr>
					 -->
					<tr class="allPrice">
						<td>총 주문금액</td>
						<td colspan="4" class="optionPrice"></td>
					</tr>
				</table>

				<!-- 안내 -->
				<!-- <div class="userAlert">
				</div>	 -->

				<!-- 결제방법 선택 -->
				<div class="userInfoTextBox">
					<div class="userInfoText">결제방법 선택</div>
				</div>
			
				<div class="payChoice">
					<div class="choiceText">결제방법</div>
					<div class="cash">
						<input id="_point" type="radio" checked="checked">
						<label for="_point">적립금 사용</label>
						<!-- <div class="payMathod">캐시사용</div>
						<div class="keyup"><input type="text" value="0">원</div>
						<input type="button" value="전액사용"></div>	 -->
					</div>
				</div>

				<!-- 약관 동의 -->
				<div class="userInfoTextBox">
					<div class="userInfoText">약관 동의</div>
				</div>
				<div class="agreeBox">
					<div class="leftAgreeBox">
						<div class="allAgree">
							<input type="checkbox" id="allAgree" checked="checked">
							<label for="allAgree">전체 동의하기</label>
						</div>
						<div class="agree agree1">
							<input type="checkbox" id="agree1" checked="checked">
							<label for="agree1">개인정보 제3자 제공에 동의합니다. </label>
						</div>
						<div class="agree agree2">
							<input type="checkbox" id="agree2" checked="checked">
							<label for="agree2">결제대행서비스 이용약관에 동의합니다. </label>
						</div>
						<div class="agree agree3">
							<input type="checkbox" id="agree3" checked="checked">
							<label for="agree3">주문할 상품설명에 명시된 내용과 사용조건을 확인하였으며, 취소. 환불규정에 동의합니다.s</label>
						</div>

					</div>
					<div class="rightAgreeBox">
						<ul class="productInfo">
							<li>총 상품금액<span class="optionPrice">48,500원</span></li>
							<li>배송비<span>0원</span></li>
							<li>할인 금액<span>0원</span></li>
						</ul>
						<div class="allProduct">총 결제금액</div>
						<div class="allProductPrice optionPrice">48,500원</div>
					</div>

					<div class="cancelBtn">
						<input type="button" value="취소">
					</div>
					<div class="payBtn active">
						<input type="button" value="결제하기">
					</div>
				
				</div>

		

				<!-- 알림 -->
				<div class="checkAlert">
					<div class="alertText">꼭 확인해주세요!</div>	
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
<script type="text/javascript">
	var optPrice = ${option.optionPrice * param.amount };
	optionPrice = addComma(optPrice);
	
	$(function(){
		$(".optionPrice").text(optionPrice);
		$(".optionPrice").append("원");
		
	});
	
	//천단위 콤마 펑션
	function addComma(value){
		value = value.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
		return value; 
	}
</script>
</html>