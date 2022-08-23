<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
		                 	<form action="qnaAdd">
				                <input type="hidden" name="productNo" value="${productDetail.productNo }">
		                		<input type="hidden" name="userNo" value="${authUser.userNo }">
			                	<table class="addQNA">
				                	<tr>
				                		<td class="QNAtextareatd"><textarea class="QNAtextarea" name="productQuestion" cols="30" rows="5"></textarea></td>
				                		<td class="buttontd"><button type="submit" class="button">문의하기</button></td>
				                	</tr>
				                </table>
			                </form>
		                </div>
	                </div>
	                
	                <c:forEach items="${qnaList }" var="qna">
	                <div class="QNAread">
	                	<div class="memberInfo">
	                		<c:choose>
	                			<c:when test="${authUser.userNo == qna.userNo }">
	                				<span class="id">${qna.email }</span>
	                			</c:when>
	                			<c:when test="${authUser.userNo != qna.userNo }">
	                				<span class="id">${qna.mskEmail }</span>
	                			</c:when>
	                		</c:choose>
	                		<span class="date">${qna.questionDate }</span>
	                	</div>
	                	
	                	<div class="questionArea">
	                		<div class="textArea">
	                			<p class="text">${qna.productQuestion }</p>
	                		</div>
	                		<a class="report" href="#">신고</a>
	                	</div>
	                	
	                	<c:if test="${qna.productAnswer != null || authUser.userNo == 1}">
		                	<div class="replyArea">
		                		<div class="memberInfo">
	        				        <span class="id">판매자</span>
		                			<span class="date">${qna.answerDate }</span>
		                		</div>
		                		<div class="textArea">
		                			<p class="text">${qna.productAnswer }</p>
		                		</div>
		                		<!-- 판매자 답변 등록 -->
		                		<c:if test="${authUser.userNo == 1 }">
			                		<div class="addReply">
			                			<div>
			                				<form action="replyAdd">
			                					<input type="hidden" name="qnaNo" value="${qna.qnaNo }">
					                			<table class="addQNA">
								                	<tr>
								                		<td colspan="10"><textarea class="QNAtextarea" name="productAnswer" cols="72" rows="5"></textarea></td>
								                		<td><button type="submit" class="button">답변등록</button></td>
								                	</tr>
								                </table>
							                </form>
			                			</div>
			                		</div>
		                		</c:if>
		                		<!-- //판매자 답변 등록 -->
		                	</div>
	                	</c:if>
	                </div>
	                </c:forEach>
	                
	                


