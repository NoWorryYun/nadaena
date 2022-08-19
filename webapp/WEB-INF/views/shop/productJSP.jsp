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
                <div class="detail_tab tab_content" id="tab-2">
                	<c:import url="/WEB-INF/views/shop/review.jsp"></c:import>
                </div>
                
                <!-- 문의페이지 -->
                <div class="detail_tab tab_content" id="tab-3">
                	<c:import url="/WEB-INF/views/shop/qna.jsp"></c:import>
               
                
                <div class="QNAtitle">
	                <h3>상품문의</h3>
	                <p class="QNAnotice">상품과 관계없는 글, 양도, 광고성, 욕설, 비방, 도배 등의 글은 예고없이 삭제됩니다.
	                </p>
	                <!-- 
	                <div class="writeArea">
	                	<textarea rows="72" cols="5" class="QNAtextarea" name="productQuestion"></textarea>
	                	<button type="submit" class="button">버튼등록</button>
	                </div>
	                 -->
	                 <div class="writeArea">
		                <table class="addQNA">
		                	<tr>
		                		<td class="QNAtextareatd"><textarea class="QNAtextarea" name="productQuestion" cols="30" rows="5"></textarea></td>
		                		<td class="buttontd"><button type="submit" class="button">버튼등록</button></td>
		                	</tr>
		                </table>
	                </div>
                </div>
                
                <div class="QNAread">
                	<div class="memberInfo">
                		<span class="id">작성자ID</span>
                		<span class="date">작성일자</span>
                	</div>
                	
                	<div class="questionArea">
                		<div class="textArea">
                			<p class="text">문의내용 00이가 궁금합니다~</p>
                		</div>
                	</div>
                	
                	<div class="replyArea">
                		<div class="textArea">
                			<p class="text">안녕하세요. 00은 00입니다. 감사합니다.</p>
                		</div>
                		<div class="addReply">
                			<div>
	                			<table class="addQNA">
				                	<tr>
				                		<td colspan="10"><textarea class="QNAtextarea" name="productQuestion" cols="72" rows="5"></textarea></td>
				                		<td><button type="submit" class="button">답변등록</button></td>
				                	</tr>
				                </table>
                			</div>
                		</div>
                	</div>
                </div>
                
                
                <br>
                <br>
                <br>
                <br>
                <br>
                <table class="readQNA">
						<tr>
							<td>작성자 id</td>
							<td>작성일</td>
							<td><a href="">[삭제]</a></td>
						</tr>
						<tr>
							<td colspan=4 class="text-left">문의내용문의내용문의내용문의내용문의내용문의내용문의내용문의내용</td>
						</tr>
					</table>
                
                
                
                 </div>
                <!-- 규정페이지 -->
                <div class="detail_tab tab_content" id="tab-4">
                	<c:import url="/WEB-INF/views/shop/policy.jsp"></c:import>
                </div>
                
            </div>
        </div>
        
</main>



<!-- footer -->
<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
<!-- //footer -->


</body>

</html>
