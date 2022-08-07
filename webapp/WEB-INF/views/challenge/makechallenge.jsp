<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
<title>챌린지개설</title>
<!-- css -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/fonts/font-awesome.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/common.css">

<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/writeFormCSS.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery.tablesorter/2.31.2/css/theme.bootstrap_4.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/6.4.8/swiper-bundle.min.css">



<!-- js -->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.min.js"></script>

<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/6.4.8/swiper-bundle.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/Simple-Slider.js"></script>

</head>




<body>
	<!-- header -->
	<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
	<!-- //header -->


	<main>
		<div class="main-box">
			<div class="row">
				<div id="aside" class="col-2">
					<div>
						<c:import url="/WEB-INF/views/includes/asideMyPage.jsp"></c:import>
					</div>
				</div>

				<div id="content" class="col-7">
					<div id="write-wrap-content">
						<h5 class="write-header">챌린지 개설</h5>
						<div id="write-main">
							<div id="write-table-title">
								<div class="table-responsive table-writeform">
									<table class="table">
										<thead>
											<tr></tr>
										</thead>
										<tbody class="table-none">
											<tr class="border-white-underline">
												<td class="write-table-label line-height25">제목</td>
												<td class="write-table-content" colspan="3"><input type="text" class="write-title-shape"></td>
											</tr>
											<tr class="border-white-underline">
												<td class="write-table-label line-height2">대표이미지</td>
												<td class="write-table-content" colspan="3"><input type="file"></td>
											</tr>
											<tr class="border-white-underline">
												<td class="write-table-label">모집기간</td>
												<td class="write-table-content"><select class="select-width">
														<option value="12" selected="">3일</option>
														<option value="13">4일</option>
														<option value="14">5일</option>
														<option value="">6일</option>
														<option value="">7일</option>
												</select>&nbsp;</td>
												<td class="write-table-label">챌린지 기간</td>
												<td class="write-table-content"><select class="select-width">
														<option value="12" selected="">1주일</option>
														<option value="13">2주일</option>
														<option value="14">3주일</option>
												</select></td>
											</tr>
											<tr class="border-white-underline">
												<td class="write-table-content" colspan="4">
													<div class="explain-date">
														<p>
															'2022-08-08 00시'부터 '1주일'동안 진행됩니다.<br>(2022-08-08 00시 00분 ~ 2022-08-15 23시 59분)
														</p>
													</div>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
							<div id="write-table-body">
								<h5 class="write-header">업로드 설정</h5>
								<div class="table-responsive table-writeform">
									<table class="table">
										<thead>
											<tr></tr>
										</thead>
										<tbody class="table-none">
											<tr class="border-white-underline">
												<td class="write-table-label">인증방법</td>
												<td class="write-table-content">
													<div class="form-check radio-with-label">
														<input class="form-check-input" type="radio" id="formCheck-12" checked=""><label class="form-check-label" for="formCheck-12">사진</label>
													</div>
													<div class="form-check radio-with-label">
														<input class="form-check-input" type="radio" id="formCheck-13"><label class="form-check-label" for="formCheck-13">비디오</label>
													</div>
												</td>
												<td class="write-table-label">추가인증설정</td>
												<td class="write-table-content">
													<div class="form-check">
														<input class="form-check-input" type="checkbox" id="formCheck-14"><label class="form-check-label" for="formCheck-14">미니게임</label>
													</div>
												</td>
											</tr>
											<tr class="border-white-underline">
												<td class="write-table-label">업로드횟수</td>
												<td class="write-table-content">
													<div class="form-check radio-with-label">
														<input class="form-check-input" type="radio" id="formCheck-15"><label class="form-check-label" for="formCheck-15">1회</label>
													</div>
													<div class="form-check radio-with-label">
														<input class="form-check-input" type="radio" id="formCheck-16"><label class="form-check-label" for="formCheck-16">2회</label>
													</div>
													<div class="form-check radio-with-label">
														<input class="form-check-input" type="radio" id="formCheck-17"><label class="form-check-label" for="formCheck-17">3회</label>
													</div>
												</td>
												<td class="write-table-label">주당횟수</td>
												<td class="write-table-content">
													<div class="form-check radio-with-label">
														<input class="form-check-input" type="radio" id="formCheck-18"><label class="form-check-label" for="formCheck-18">5회</label>
													</div>
													<div class="form-check radio-with-label">
														<input class="form-check-input" type="radio" id="formCheck-19"><label class="form-check-label" for="formCheck-19">7회</label>
													</div>
												</td>
											</tr>
											<tr class="border-white-underline">
												<td class="write-table-label">인증 세부설정</td>
												<td class="write-table-content" colspan="3">
													<div class="upload-detail">
														<p class="no-margin fw-bold">1회차</p>
														<input type="text" class="write-title-shape" placeholder="인증해야 하는 내용을 적어주세요.">
														<div>
															<select class="select-width text-inline">
																<option value="12" selected="">00시</option>
																<option value="13">01시</option>
																<option value="14">02시</option>
																<option value="">03시</option>
																<option value="">04시</option>
																<option value="">05시</option>
																<option value="">06시</option>
																<option value="">07시</option>
																<option value="">08시</option>
																<option value="">09시</option>
																<option value="">10시</option>
																<option value="">11시</option>
																<option value="">12시</option>
																<option value="">13시</option>
																<option value="">14시</option>
																<option value="">15시</option>
																<option value="">16시</option>
																<option value="">17시</option>
																<option value="">18시</option>
																<option value="">19시</option>
																<option value="">20시</option>
																<option value="">21시</option>
																<option value="">22시</option>
																<option value="">23시</option>
															</select>
															<p class="no-margin text-inline">&nbsp;부터&nbsp;</p>
															<select class="select-width text-inline">
																<option value="13">01시</option>
																<option value="14">02시</option>
																<option value="">03시</option>
																<option value="">04시</option>
																<option value="">05시</option>
																<option value="">06시</option>
																<option value="">07시</option>
																<option value="">08시</option>
																<option value="">09시</option>
																<option value="">10시</option>
																<option value="">11시</option>
																<option value="">12시</option>
																<option value="">13시</option>
																<option value="">14시</option>
																<option value="">15시</option>
																<option value="">16시</option>
																<option value="">17시</option>
																<option value="">18시</option>
																<option value="">19시</option>
																<option value="">20시</option>
																<option value="">21시</option>
																<option value="">22시</option>
																<option value="">23시</option>
															</select>
															<p class="no-margin text-inline">&nbsp;까지</p>
															<div class="form-check time-limit-checkbox">
																<input class="form-check-input" type="checkbox" id="formCheck-20"><label class="form-check-label" for="formCheck-20">시간설정해제</label>
															</div>
														</div>
													</div>
													<div class="upload-detail">
														<p class="no-margin fw-bold">2회차</p>
														<input type="text" class="write-title-shape" placeholder="인증해야 하는 내용을 적어주세요.">
														<div>
															<select class="select-width text-inline">
																<option value="12" selected="">00시</option>
																<option value="13">01시</option>
																<option value="14">02시</option>
																<option value="">03시</option>
																<option value="">04시</option>
																<option value="">05시</option>
																<option value="">06시</option>
																<option value="">07시</option>
																<option value="">08시</option>
																<option value="">09시</option>
																<option value="">10시</option>
																<option value="">11시</option>
																<option value="">12시</option>
																<option value="">13시</option>
																<option value="">14시</option>
																<option value="">15시</option>
																<option value="">16시</option>
																<option value="">17시</option>
																<option value="">18시</option>
																<option value="">19시</option>
																<option value="">20시</option>
																<option value="">21시</option>
																<option value="">22시</option>
																<option value="">23시</option>
															</select>
															<p class="no-margin text-inline">&nbsp;부터&nbsp;</p>
															<select class="select-width text-inline">
																<option value="13">01시</option>
																<option value="14">02시</option>
																<option value="">03시</option>
																<option value="">04시</option>
																<option value="">05시</option>
																<option value="">06시</option>
																<option value="">07시</option>
																<option value="">08시</option>
																<option value="">09시</option>
																<option value="">10시</option>
																<option value="">11시</option>
																<option value="">12시</option>
																<option value="">13시</option>
																<option value="">14시</option>
																<option value="">15시</option>
																<option value="">16시</option>
																<option value="">17시</option>
																<option value="">18시</option>
																<option value="">19시</option>
																<option value="">20시</option>
																<option value="">21시</option>
																<option value="">22시</option>
																<option value="">23시</option>
															</select>
															<p class="no-margin text-inline">&nbsp;까지</p>
															<div class="form-check time-limit-checkbox">
																<input class="form-check-input" type="checkbox" id="formCheck-21"><label class="form-check-label" for="formCheck-21">시간설정해제</label>
															</div>
														</div>
													</div>
													<div class="upload-detail">
														<p class="no-margin fw-bold">3회차</p>
														<input type="text" class="write-title-shape" placeholder="인증해야 하는 내용을 적어주세요.">
														<div>
															<select class="select-width text-inline">
																<option value="12" selected="">00시</option>
																<option value="13">01시</option>
																<option value="14">02시</option>
																<option value="">03시</option>
																<option value="">04시</option>
																<option value="">05시</option>
																<option value="">06시</option>
																<option value="">07시</option>
																<option value="">08시</option>
																<option value="">09시</option>
																<option value="">10시</option>
																<option value="">11시</option>
																<option value="">12시</option>
																<option value="">13시</option>
																<option value="">14시</option>
																<option value="">15시</option>
																<option value="">16시</option>
																<option value="">17시</option>
																<option value="">18시</option>
																<option value="">19시</option>
																<option value="">20시</option>
																<option value="">21시</option>
																<option value="">22시</option>
																<option value="">23시</option>
															</select>
															<p class="no-margin text-inline">&nbsp;부터&nbsp;</p>
															<select class="select-width text-inline">
																<option value="13">01시</option>
																<option value="14">02시</option>
																<option value="">03시</option>
																<option value="">04시</option>
																<option value="">05시</option>
																<option value="">06시</option>
																<option value="">07시</option>
																<option value="">08시</option>
																<option value="">09시</option>
																<option value="">10시</option>
																<option value="">11시</option>
																<option value="">12시</option>
																<option value="">13시</option>
																<option value="">14시</option>
																<option value="">15시</option>
																<option value="">16시</option>
																<option value="">17시</option>
																<option value="">18시</option>
																<option value="">19시</option>
																<option value="">20시</option>
																<option value="">21시</option>
																<option value="">22시</option>
																<option value="">23시</option>
															</select>
															<p class="no-margin text-inline">&nbsp;까지</p>
															<div class="form-check time-limit-checkbox">
																<input class="form-check-input" type="checkbox" id="formCheck-22"><label class="form-check-label" for="formCheck-22">시간설정해제</label>
															</div>
														</div>
													</div>
												</td>
											</tr>
											<tr class="border-white-underline">
												<td class="write-table-content" colspan="4">
													<div class="explain-date">
														<p class="bold-underline">챌린지 난이도에 따른 보상</p>
														<p>
															챌린지 난이도에 따른 추가 보상이 지급됩니다.<Br>
														<ul>
															<li>난이도 상 > 참여금의 5% 추가지급 (10,000원 > 10,500원)</li>
															<br>
															<li>난이도 중 > 참여금의 3% 추가지급 (10,000원 > 10,300원)</li>
															<br>
															<li>난이도 하 > 참여금의 2% 추가지급 (10,000원 > 10,200원)</li>
														</ul>
														</p>
														<p class="bold-underline">챌린지 달성률에 따른 보상</p>
														<p>
															챌린지 성공 이후 전체 달성률에 대한 추가 보상이 지급됩니다.<br>
														<ul>
															<li>100% > 추가지급의 30% 추가지급 (10,000원 > 10,500원 > 10,650원)</li>
															<br>
															<li>90% > 추가지급의 10% 추가지급 (10,000원 > 10,500원 > 10,550원)</li>
															<br>
														</ul>
														</p>
													</div>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
							<div id="write-table-explain">
								<h5 class="write-header">챌린지 소개</h5>
								<div class="table-responsive table-writeform">
									<table class="table">
										<thead>
											<tr></tr>
										</thead>
										<tbody class="table-none">
											<tr class="border-white-underline">
												<td class="write-table-label line-height25">소개글</td>
												<td class="write-table-content" colspan="3"><textarea></textarea>ck에디터로 소개글 꾸미기</td>
											</tr>
											<tr class="border-white-underline">
												<td class="write-table-label line-height2">배경색 설정</td>
												<td class="write-table-content" colspan="3">color picker로 색상 선택</td>
											</tr>
											<tr class="border-white-underline">
												<td class="write-table-label line-height2">카테고리 설정</td>
												<td class="write-table-content" colspan="3"><div>
														<table class="category-letter">
															<tr>
																<td><li class="list-inline-item"><input id="cate1" type="radio" name="category"><label class="form-check-label" for="cate1">운동</label></li></td>
																<td><li class="list-inline-item"><input id="cate2" type="radio" name="category"><label class="form-check-label" for="cate2">봉사활동</label></li></td>
																<td><li class="list-inline-item"><input id="cate3" type="radio" name="category"><label class="form-check-label" for="cate3">독서</label></li></td>
																<td><li class="list-inline-item"><input id="cate4" type="radio" name="category"><label class="form-check-label" for="cate4">건강</label></li></td>
															</tr>
															<tr>
																<td><li class="list-inline-item"><input id="cate5" type="radio" name="category"><label class="form-check-label" for="cate5">생활</label></li></td>
																<td><li class="list-inline-item"><input id="cate6" type="radio" name="category"><label class="form-check-label" for="cate6">그림</label></li></td>
																<td><li class="list-inline-item"><input id="cate7" type="radio" name="category"><label class="form-check-label" for="cate7">공부</label></li></td>
																<td><li class="list-inline-item"><input id="cate8" type="radio" name="category"><label class="form-check-label" for="cate8">반려동물</label></li></td>
															</tr>
															<tr>
																<td><li class="list-inline-item"><input id="cate9" type="radio" name="category"><label class="form-check-label" for="cate9">음악</label></li></td>
																<td><li class="list-inline-item"><input id="cate10" type="radio" name="category"><label class="form-check-label" for="cate10">식습관</label></li></td>
																<td><li class="list-inline-item"><input id="cate11" type="radio" name="category"><label class="form-check-label" for="cate11">취미</label></li></td>
																<td><li class="list-inline-item"><input id="cate12" type="radio" name="category"><label class="form-check-label" for="cate12">뷰티</label></li></td>
															</tr>
														</table>
													</div></td>
											</tr>
											<tr class="border-white-underline">
												<td class="write-table-label line-height2">태그 설정</td>
												<td class="write-table-content" colspan="3"><div>
														<input type="text" class="typebox-size" name="tag" placeholder="태그를 입력해 주세요"><br>
													</div>
													<div class="font-12">
														<a href="#">#심심해</a> <a href="#">#놀자</a> <a href="#">#어렵다</a> <a href="#">#인생</a>
													</div></td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
							<div class="text-center">
								<button class="make-challenge make-challenge-button" type="submit">챌린지 개설</button>
							</div>
						</div>
					</div>
				</div>
				<div id="rside" class="col-3">
				<div id="calculator">
					<p>난이도 설명</p>
					<ul class="list-unstyled">
						<li>챌린지 기간 1주 + 5점</li>
						<li>챌린지 기간 2주 + 10점</li>
						<li>챌린지 기간 3주 + 20점</li>
						<li>인증 방법 동영상 + 20점</li>
						<li>업로드 횟수 2회 + 10점</li>
						<li>미니게임 + 5점</li>
					</ul>
					<p>난이도 계산기</p>
					<ul class="list-unstyled">
						<li>챌린지 기간 2주 + 10점</li>
						<li>인증 방법 동영상 + 20점</li>
						<li>업로드 횟수 2회 + 10점</li>
						<li>미니게임 + 5점</li>
					</ul>
					<p>난이도 설정</p>
					<p>합계</p>
					<p>난이도</p>
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