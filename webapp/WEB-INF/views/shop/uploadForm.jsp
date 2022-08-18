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
</head>



<body>
<!-- header -->
<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
<!-- //header -->
		


<main>
	<div class="main-box">
		<div id="uploadForm">
			<form action="write" method="get">
		      	<table id="admin-write">
		      		<colgroup>
						<col style="width: 100px;">
						<col style="">
						<col style="">
					</colgroup>
		      		<tr>
		      			<td class="t">상품명</td>
		      			<td >
		      				<input type="text" name="postTitle">
			      		</td>
			      		<td>
			      			<select name="cateNo">
			      				<!-- 카테고리 리스트 영역 -->
			      				<%-- <c:forEach items="${categoryList }" var="cateVo">
			      					<option value="${cateVo.cateNo }">${cateVo.cateName }</option>
			      				</c:forEach> --%>
			      				<option value="1">상품권</option>
			      				<option value="2">기프티콘</option>
			      				<option value="3">기타</option>
			      				<!-- 카테고리 리스트 영역 -->
			      			</select>
			      		</td>
		      		</tr>
		      		<tr>
			      		<div id="file">
								<table>
									<colgroup>
										<col style="width: 600px;">
										<col style="width: 220px;">
									</colgroup>
									<tr>
										<td class="text-left"><input type="file" name="file"></td>
									</tr>
								</table>
						</div>
		      		</tr>
		      		<tr>
		      			<td>내용</td>
		      			<td colspan="2"><textarea name="postContent"></textarea></td>
		      		</tr>
		      	</table>
		      	<div id="btnArea">
		      		<button class="btn_l" type="submit" >포스트하기</button>
		      	</div>
			</form>
		
		</div>

	</div>
</main>



<!-- footer -->
<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
<!-- //footer -->


</body>

</html>
