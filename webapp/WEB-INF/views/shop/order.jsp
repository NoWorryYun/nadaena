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
						<img src="${pageContext.request.contextPath }/assets/img/shop/himart.jpg" alt="주문상품" width="144px" height="96px">
					</span>
					<p class="productTitle">
						<span class="text1">[하이마트] 모바일금액권 판매 전국에서 사용가능</span>
						<span class="text2">을 주문합니다.</span>
					</p>
				</div>
			</div>
			<br>
			
			<div class="check_content">
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
				
				<!-- 주문상품 정보 -->
				<div class="info_section" id="_product" style=""><h4>주문상품 정보</h4>
					<div class="tbl_wrap">
					    <table class="product_table">
					        <colgroup>
					            <col style="width:160px;">
					            <col style="width:440px;">
					            <col style="width:140px;">
					            <col style="width:110px;">
					            <col style="width:105px;">
					            <col>
					        </colgroup>
					        <thead>
					        <tr>
					            <th scope="col" colspan="2">상품정보</th>
					            <th scope="col">상품금액</th>
					            <th scope="col">할인금액</th>
					            <th scope="col">주문금액</th>
					        </tr>
					        </thead>
					        <tbody>
					            <tr class="_deal" data-main-deal-srl="7199972470">
					    <td class="thumb">
					        <div class="product_thumb">
					            <a href="" target="_blank"><img src="https://img2.tmon.kr/cdn4/deals/2022/08/11/7199972470/7199972470_catlist_3col_v2_a3bc2_1660195186production.jpg" alt="[문화상품권] 온라인문화상품권 본사공식판매 5만원권 3% 할인판매"></a>
					        </div>
					    </td>
					    <td class="v_top">
					        <div class="product_title">
					            <div class="info">
					                <ul>
				                        <li>
				                            <em class="name">
				                                    [문화상품권] 온라인문화상품권 5만원권
				                            </em>
				                        </li>
					                </ul>
					            </div>
					        </div>
					    </td>
					    <td class="mgl align_center">
					        <span class="int_black"><em>50,000</em><i class="won">원</i></span>
					    </td>
					    <td class="mgl align_center">
					        <span class="int">
					            <em>0</em><i class="won">원</i>
					        </span>
					    </td>
					        <td rowspan="1" class="mgl align_center">
					            <span class="int_black_big"><em>
					                50,000
					            </em><i class="won">원</i></span>
					        </td>
					</tr>
					    <tr class="inner_line">
					        <td colspan="6">
					            <div></div>
					        </td>
					    </tr>
					
					        </tbody>
					        <tfoot>
					        <tr>
					            <td colspan="6">
					                <div class="money_sum">
					                    <ul>
					                        <li>
					                            <em class="title">상품금액</em>
					                            <span class="int_black_big"><em>50,000</em><i class="won">원</i></span>
					                        </li>
					                        <li>
					                            <em class="title">할인금액</em>
					                            <span class="int_black_big">
					                                <em>0</em><i class="won">원</i>
					                            </span>
					                        </li>
					                        <!-- 
					                        <li>
					                            <em class="title">배송비</em>
					                            <span class="int_black_big"><em>0</em><i class="won">원</i></span>
					                        </li>
					                         -->
					                    </ul>
					                </div>
					            </td>
					        </tr>
					        <tr>
					            <td colspan="6" class="bd0">
					                <div class="money_tot">
					                    <em>총 주문금액</em>
					                    <span class="int_black_big"><em>50,000</em><i class="won">원</i></span>
					                </div>
					            </td>
					        </tr>
					        </tfoot>
					    </table>
					</div>
				</div>
				<!-- //주문상품정보 -->


				<!-- 결제수단 -->
				<div class="pay_section" id="_payInfo">
					<h4>결제방법 선택<button type="button" class="btn_pay_info" id="_showCardInterestFreeInfoBtn">포인트 충전</button></h4>
				</div>
				<!-- //결제수단 -->


			</div>
			
		</div>
	</div>
</main>



<!-- footer -->
<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
<!-- //footer -->


</body>

</html>
