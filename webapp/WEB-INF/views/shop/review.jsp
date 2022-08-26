<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
					<div class="QNAtitle">
		                <h3>리뷰</h3>
		                <p class="QNAnotice">상품과 관계없는 글, 양도, 광고성, 욕설, 비방, 도배 등의 글은 예고없이 삭제됩니다.
		                </p>
		           </div>
		           <div class="QNAread">
		           		<c:forEach items="${reviewList }" var="review">
			           		<div class="reviewStra"></div>
			           		<div class="memberInfo">
		                		<span class="id">${review.email }</span>
		                		<span class="date">${review.productreviewDate }</span>
		                	</div>
		                	
		                	<div class="questionArea">
		                		<div class="textArea">
		                			<p class="text">[하이마트] 모바일금액권 판매 전국에서 사용가능</p>
		                			<p class="reviewtext">${review.productreviewContent }</p>
		                			<a class="report" href="#">신고</a>
		                		</div>
		                	</div>
	                	</c:forEach>
		           </div>