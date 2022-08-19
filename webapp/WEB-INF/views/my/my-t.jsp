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
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/my.css">

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
		<div class="row">
		
			<!-- aside -->
			<c:import url="/WEB-INF/views/includes/asideMyPage.jsp"></c:import>
			<!-- //aside -->


			<div id="content" class="col-10">
				<h3>나의 후기</h3>
				<div class="review-header">
					전체 20 
					<select class="top-select">
						<option value="">최신순</option>
						<option value="">조회순</option>
					</select>
				</div>
				<table class="review-table">
					<thead>
						<tr>
							<td class="cNum">번호</td>
							<td class="cThumb">썸네일</td>
							<td class="cTitle">제목</td>
							<td class="cChallenge">챌린지</td>
							<td class="cDate">작성일</td>
							<td class="cView">조회수</td>
						</tr>
					</thead>
					<tbody>
						<tr id="review-tr">
							<td class="cNum">10</td>
							<td class="cThumb"><a href="#"><img></a></td>
							<td class="cTitle"><a href="#">3주간 06시 기상 챌린지 후기</a></td>
							<td class="cChallenge">3주간 06시에 기상하기</td>
							<td class="cDate">2022.08.04</td>
							<td class="cView">38555</td>
						</tr>
						<tr id="review-tr">
							<td class="cNum">9</td>
							<td class="cThumb"><a href="#"><img></a></td>
							<td class="cTitle"><a href="#">제목</a></td>
							<td class="cChallenge">챌린지</td>
							<td class="cDate">작성일</td>
							<td class="cView">조회수</td>
						</tr>
						<tr id="review-tr">
							<td class="cNum">8</td>
							<td class="cThumb"><a href="#"><img></a></td>
							<td class="cTitle"><a href="#">제목</a></td>
							<td class="cChallenge">챌린지</td>
							<td class="cDate">작성일</td>
							<td class="cView">조회수</td>
						</tr>
						<tr id="review-tr">
							<td class="cNum">7</td>
							<td class="cThumb"><a href="#"><img></a></td>
							<td class="cTitle"><a href="#">제목</a></td>
							<td class="cChallenge">챌린지</td>
							<td class="cDate">작성일</td>
							<td class="cView">조회수</td>
						</tr>
						<tr id="review-tr">
							<td class="cNum">6</td>
							<td class="cThumb"><a href=""><img></a></td>
							<td class="cTitle"><a>제목</a></td>
							<td class="cChallenge">챌린지</td>
							<td class="cDate">작성일</td>
							<td class="cView">조회수</td>
						</tr>
						<tr id="review-tr">
							<td class="cNum">5</td>
							<td class="cThumb"><a href="#"><img></a></td>
							<td class="cTitle"><a href="#">제목</a></td>
							<td class="cChallenge">챌린지</td>
							<td class="cDate">작성일</td>
							<td class="cView">조회수</td>
						</tr>
						<tr id="review-tr">
							<td class="cNum">4</td>
							<td class="cThumb"><a href="#"><img></a></td>
							<td class="cTitle"><a href="#">제목</a></td>
							<td class="cChallenge">챌린지</td>
							<td class="cDate">작성일</td>
							<td class="cView">조회수</td>
						</tr>
						<tr id="review-tr">
							<td class="cNum">3</td>
							<td class="cThumb"><a href="#"><img></a></td>
							<td class="cTitle"><a href="#">제목</a></td>
							<td class="cChallenge">챌린지</td>
							<td class="cDate">작성일</td>
							<td class="cView">조회수</td>
						</tr>
						<tr id="review-tr">
							<td class="cNum">2</td>
							<td class="cThumb"><a href="#"><img></a></td>
							<td class="cTitle"><a href="#">제목</a></td>
							<td class="cChallenge">챌린지</td>
							<td class="cDate">작성일</td>
							<td class="cView">조회수</td>
						</tr>
						<tr id="review-tr">
							<td class="cNum">1</td>
							<td class="cThumb"><a href="#"><img></a></td>
							<td class="cTitle"><a href="#">제목</a></td>
							<td class="cChallenge">챌린지</td>
							<td class="cDate">작성일</td>
							<td class="cView">조회수</td>
						</tr>

					</tbody>
				</table>

				<form class="search-form">
					<select class="bottom-select">
						<option value="">전체</option>
						<option value="">제목</option>
						<option value="">챌린지</option>
					</select> 
					<input type="text" class="review-input">
					<button type="submit" class="review-button">검색</button>
				</form>
				<div class="paging" class="paging">
					<ul>
						<li><a href="">◀</a></li>
						<li><a href="">1</a></li>
						<li><a href="">2</a></li>
						<li><a href="">3</a></li>
						<li><a href="">4</a></li>
						<li><a href="">5</a></li>
						<li><a href="">▶</a></li>
					</ul>
					<div class="clear"></div>
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