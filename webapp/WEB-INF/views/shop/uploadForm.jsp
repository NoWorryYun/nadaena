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
		      			<td>내용</td>
		      			<td colspan="2"><textarea name="postContent"></textarea></td>
		      		</tr>
		      		<tr>
			      		<div id="file">
								<table>
									<colgroup>
										<col style="width: 600px;">
										<col style="width: 220px;">
									</colgroup>
									<tr>
										<td class="text-left"><label for="fileUpload">썸네일 이미지 선택</label>
										<input id="fileUpload" type="file" name="thumbnail" multiple="multiple" accept="image/jpeg,image/png,image/webp,image/vnd.mozilla.apng,image/avif,image/svg+xml" style="display:none"></td>
									</tr>
									<tr>
										<td>
										<label for="file1">이미지1</label>
										<input type="file" name="file1" multiple="multiple" accept="image/jpeg,image/png,image/webp,image/vnd.mozilla.apng,image/avif,image/svg+xml">
										</td>
									</tr>
									<tr>
										<td>
										<label for="file2">이미지2</label>
										<input type="file" name="file2" multiple="multiple" accept="image/jpeg,image/png,image/webp,image/vnd.mozilla.apng,image/avif,image/svg+xml">
										</td>
									</tr>
									<tr>
										<td>
										<label for="file3">이미지3</label>
										<input type="file" name="file3" multiple="multiple" accept="image/jpeg,image/png,image/webp,image/vnd.mozilla.apng,image/avif,image/svg+xml">
										</td>
									</tr>
									<tr>
										<td>
										<label for="file4">이미지4</label>
										<input type="file" name="file4" multiple="multiple" accept="image/jpeg,image/png,image/webp,image/vnd.mozilla.apng,image/avif,image/svg+xml">
										</td>
									</tr>
									<tr>
										<td>
										<label for="file5">이미지5</label>
										<input type="file" name="file5" multiple="multiple" accept="image/jpeg,image/png,image/webp,image/vnd.mozilla.apng,image/avif,image/svg+xml">
										</td>
									</tr>
									<tr>
										<td>
										<label for="file6">이미지6</label>
										<input type="file" name="file6" multiple="multiple" accept="image/jpeg,image/png,image/webp,image/vnd.mozilla.apng,image/avif,image/svg+xml">
										</td>
									</tr>
									<tr>
										<td>
										<label for="file7">이미지7</label>
										<input type="file" name="file7" multiple="multiple" accept="image/jpeg,image/png,image/webp,image/vnd.mozilla.apng,image/avif,image/svg+xml">
										</td>
									</tr>
									<tr>
										<td>
										<label for="file8">이미지8</label>
										<input type="file" name="file8" multiple="multiple" accept="image/jpeg,image/png,image/webp,image/vnd.mozilla.apng,image/avif,image/svg+xml">
										</td>
									</tr>
									<tr>
										<td>
										<label for="file9">이미지9</label>
										<input type="file" name="file9" multiple="multiple" accept="image/jpeg,image/png,image/webp,image/vnd.mozilla.apng,image/avif,image/svg+xml">
										</td>
									</tr>
									<tr>
										<td>
										<label for="file10">이미지10</label>
										<input type="file" name="file10" multiple="multiple" accept="image/jpeg,image/png,image/webp,image/vnd.mozilla.apng,image/avif,image/svg+xml">
										</td>
									</tr>
								</table>
						</div>
								<table>
									<th>옵션명</th>
									<th>옵션가격</th>
									
									<tr>
										<td><input type="text" name="optionName"></td>
										<td><input type="text" name="optionPrice"></td>
									</tr>
								</table>
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
