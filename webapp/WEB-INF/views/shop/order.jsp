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
	<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/shop/order.css">
</head>



<body>
<!-- header -->
<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
<!-- //header -->
		


<main>
	<div class="main-box">
		<div id="order_wrap">
			<div class="orderCheck">
				<div class="title">
					<p>구매하기</p>
				</div>
				<div class="product">
					<span class="thumbnail">
						<img src="${pageContext.request.contextPath }/assets/img/shop/cl50.jpg" alt="주문상품" width="144px" height="96px">
					</span>
					<p class="productTitle">
						<span class="text1">상품명</span>
						<span class="text2">을 주문합니다.</span>
					</p>
				</div>
			</div>
			<br>
			<!-- 사용자정보 -->
			<div class="info_section" id="_buyer" >
				<h4><em>사용자 정보</em>
					<span class="s_txt">※ 입력하신 연락처와 이메일로 티켓이나 PIN번호 등의 사용 정보를 받아보실 수 있습니다.</span>
				</h4>
				<div class="tbl_wrap">
				    <table>
				        <colgroup>
				            <col style="width:160px;">
				            <col>
				        </colgroup>
				        <thead>
				        <tr>
				            <th scope="row" class="bdb">사용자 선택</th>
				            <td>
				                <!--label태그에 .checked 클래스 추가 시 선택-->
				                <label class="radios"><div class="iradio checked" style="position: relative;"><input type="radio" name="sort1" id="_iradio_buyer_self" checked="" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div><i class="ico"></i><em>구매자 본인</em></label>
				                
				            </td>
				        </tr>
				        </thead>
				        <tbody id="_buyer_info"><tr>
				    <th scope="row" class="bd0">이름</th>
				    <td><em>장성찬</em></td>
				</tr>
				<tr>
				    <th scope="row" class="bd0">연락처</th>
				    <td><em>010-3105-9314</em></td>
				</tr>
				<tr>
				    <th scope="row" class="bd0">이메일</th>
				    <td class="last"><em>jnnd24@naver.com</em></td>
				</tr></tbody>
				    </table>
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
