<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
                    <p>상세페이지</p>
                    
                    
                    
                    <c:if test="${productDateil.img1 != 'null' }">
                    	<img src="${pageContext.request.contextPath }/upload/product/${productDetail.productNo}/${productDetail.img1}" alt="">
					</c:if>
                    <c:if test="${productDateil.img2 != 'null' }">
                    	<img src="${pageContext.request.contextPath }/upload/product/${productDetail.productNo}/${productDetail.img2}" alt="">
					</c:if>
                    <c:if test="${productDateil.img3 != 'null' }">
                    	<img src="${pageContext.request.contextPath }/upload/product/${productDetail.productNo}/${productDetail.img3}" alt="">
					</c:if>
                    <c:if test="${productDateil.img4 != 'null' }">
                    	<img src="${pageContext.request.contextPath }/upload/product/${productDetail.productNo}/${productDetail.img4}" alt="">
					</c:if>
                    <c:if test="${productDateil.img5 != 'null' }">
                    	<img src="${pageContext.request.contextPath }/upload/product/${productDetail.productNo}/${productDetail.img5}" alt="">
					</c:if>
                    <c:if test="${productDateil.img6 != 'null' }">
                    	<img src="${pageContext.request.contextPath }/upload/product/${productDetail.productNo}/${productDetail.img6}" alt="">
					</c:if>
                    <c:if test="${productDateil.img7 != 'null' }">
                    	<img src="${pageContext.request.contextPath }/upload/product/${productDetail.productNo}/${productDetail.img7}" alt="">
					</c:if>
                    <c:if test="${productDateil.img8 != 'null' }">
                    	<img src="${pageContext.request.contextPath }/upload/product/${productDetail.productNo}/${productDetail.img8}" alt="">
					</c:if>
                    <c:if test="${productDateil.img9 != 'null' }">
                    	<img src="${pageContext.request.contextPath }/upload/product/${productDetail.productNo}/${productDetail.img9}" alt="">
					</c:if>
                    <c:if test="${productDateil.img10 != 'null' }">
                    	<img src="${pageContext.request.contextPath }/upload/product/${productDetail.productNo}/${productDetail.img10}" alt="">
					</c:if>
                   	<img src="${pageContext.request.contextPath }/upload/product/pol.jpg" alt="">
