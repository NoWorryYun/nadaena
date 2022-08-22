<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
<title>챌린지개설</title>

<!--------------------------------------------------------------------------------------->
<!--------------------------------------------------------------------------------------->
<!------------------------------------		 CSS      ----------------------------------->
<!--------------------------------------------------------------------------------------->
<!--------------------------------------------------------------------------------------->

<!-- css -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/fonts/font-awesome.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/common.css">

<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/writeFormCSS.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery.tablesorter/2.31.2/css/theme.bootstrap_4.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/6.4.8/swiper-bundle.min.css">

<!-- ck에디터 css -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ckEditor.css">

<!-- jquery color picker css -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/colorPick.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/colorPick.dark.theme.css">

<!--------------------------------------------------------------------------------------->
<!--------------------------------------------------------------------------------------->
<!------------------------------------		 JS       ----------------------------------->
<!--------------------------------------------------------------------------------------->
<!--------------------------------------------------------------------------------------->

<!-- jquery, bootstrap js -->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.min.js"></script>

<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>

<!-- 슬라이드 js -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/6.4.8/swiper-bundle.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/Simple-Slider.js"></script>


<!-- ck에디터js -->
<script src="https://cdn.ckeditor.com/ckeditor5/11.0.1/classic/ckeditor.js"></script>

<!-- 컬러피커js -->
<script src="${pageContext.request.contextPath}/assets/js/colorPick.js"></script>

</head>




<body>
	<!-- header -->
	<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
	<!-- //header -->


	<main>
		<div class="main-box">
			<div class="row">
				<c:import url="/WEB-INF/views/includes/asideMyPage.jsp"></c:import>

				<div id="content" class="col-7">
<!-- 										<form id="MKForm" method="post" enctype="multipart/form-data"> -->
					<div id="write-wrap-content">
						<h5 class="write-header">챌린지 개설</h5>


						<div id="write-main">
							<div id="write-table-title">
								<div class="table-responsive table-writeform">
									<table class="table">
										<tbody class="table-none">
											<tr class="border-white-underline">
												<td class="write-table-label line-height25">제목</td>
												<td class="write-table-content" colspan="3"><input id="clgTitle" type="text" name="clgTitle" class="write-title-shape"></td>
											</tr>
											<tr class="border-white-underline">
												<td class="write-table-label line-height2">대표이미지</td>
												<td class="write-table-content" colspan="3"><input name="img" type="file"></td>
											</tr>
											<tr class="border-white-underline">
												<td class="write-table-label">모집기간</td>
												<td class="write-table-content"><select name="recruitment" class="select-width">
														<option value="3">3일</option>
														<option value="4">4일</option>
														<option value="5">5일</option>
														<option value="6">6일</option>
														<option value="7">7일</option>
												</select>&nbsp;</td>
												<td class="write-table-label">챌린지 기간</td>
												<td class="write-table-content"><select name="period" class="select-width">
														<option value="1">1주일</option>
														<option value="2">2주일</option>
														<option value="3">3주일</option>
												</select></td>
										</tbody>
									</table>
									<div class="explain-date">
										<p id="eDate">
											'<span class="startDate"></span>'부터 '<span id="weeks"></span>'동안 진행됩니다.<br>(<span class="startDate"></span> ~ <span class="cDate"></span>)
										</p>
									</div>
								</div>
							</div>
							<div id="write-table-body">
								<h5 class="write-header">업로드 설정</h5>
								<div class="table-responsive table-writeform">
									<table class="table">
										<tbody class="table-none">
											<tr class="border-white-underline">
												<td class="write-table-label">인증방법</td>
												<td class="write-table-content">
													<div class="form-check radio-with-label">
														<input class="form-check-input" type="radio" id="upload-picture" name="certify" checked="checked" value="1"><label class="form-check-label" for="upload-picture">사진</label>
													</div>
													<div class="form-check radio-with-label">
														<input class="form-check-input" type="radio" id="upload-video" name="certify" value="2"><label class="form-check-label" for="upload-video">비디오</label>
													</div>
												</td>
												<td class="write-table-label">추가인증설정</td>
												<td class="write-table-content">
													<div class="form-check">
														<input class="form-check-input" type="checkbox" name="minigame" id="minigame" value="0"><label class="form-check-label" for="minigame">미니게임</label>
													</div>
												</td>
											</tr>
											<tr class="border-white-underline">
												<td class="write-table-label">일일 업로드횟수</td>
												<td class="write-table-content">
													<div class="form-check radio-with-label">
														<input class="form-check-input" type="radio" id="one-one" name="upload" value="1" checked="checked"><label class="form-check-label" for="one-one">일일 1회</label>
													</div>
													<div class="form-check radio-with-label">
														<input class="form-check-input" type="radio" id="one-two" name="upload" value="2"><label class="form-check-label" for="one-two">일일 2회</label>
													</div>
													<div class="form-check radio-with-label">
														<input class="form-check-input" type="radio" id="one-three" name="upload" value="3"><label class="form-check-label" for="one-three">일일 3회</label>
													</div>
												</td>
												<td class="write-table-label">주당 인증 일수</td>
												<td class="write-table-content">
													<div class="form-check radio-with-label">
														<input class="form-check-input" type="radio" id="week-five" name="certifyDay" value="5" checked="checked"><label class="form-check-label" for="week-five">주5일 (평일만)</label>
													</div>
													<div class="form-check radio-with-label">
														<input class="form-check-input" type="radio" id="week-seven" name="certifyDay" value="7"><label class="form-check-label" for="week-seven">주7일 (주말포함)</label>
													</div>
												</td>
											</tr>
											<tr class="border-white-underline">
												<td class="write-table-label">일일 업로드 <br> 세부설정
												</td>
												<td class="write-table-content" colspan="3">
													<div class="upload-detail">
														<p class="no-margin fw-bold">1회차</p>
														<input type="text" name="upload-detail1" class="write-title-shape" placeholder="인증해야 하는 내용을 적어주세요.">
														<div>
															<select name="upload-time1-1" class="select-width text-inline">
																<option value="0" selected="selected">00시</option>
																<option value="1">01시</option>
																<option value="2">02시</option>
																<option value="3">03시</option>
																<option value="4">04시</option>
																<option value="5">05시</option>
																<option value="6">06시</option>
																<option value="7">07시</option>
																<option value="8">08시</option>
																<option value="9">09시</option>
																<option value="10">10시</option>
																<option value="11">11시</option>
																<option value="12">12시</option>
																<option value="13">13시</option>
																<option value="14">14시</option>
																<option value="15">15시</option>
																<option value="16">16시</option>
																<option value="17">17시</option>
																<option value="18">18시</option>
																<option value="19">19시</option>
																<option value="20">20시</option>
																<option value="21">21시</option>
																<option value="22">22시</option>
																<option value="23">23시</option>
															</select>
															<p class="no-margin text-inline">&nbsp;부터&nbsp;</p>
															<select name="upload-time1-2" class="select-width text-inline">
																<option value="1">01시</option>
																<option value="2">02시</option>
																<option value="3">03시</option>
																<option value="4">04시</option>
																<option value="5">05시</option>
																<option value="6">06시</option>
																<option value="7">07시</option>
																<option value="8">08시</option>
																<option value="9">09시</option>
																<option value="10">10시</option>
																<option value="11">11시</option>
																<option value="12">12시</option>
																<option value="13">13시</option>
																<option value="14">14시</option>
																<option value="15">15시</option>
																<option value="16">16시</option>
																<option value="17">17시</option>
																<option value="18">18시</option>
																<option value="19">19시</option>
																<option value="20">20시</option>
																<option value="21">21시</option>
																<option value="22">22시</option>
																<option value="23">23시</option>
																<option value="24">24시</option>
															</select>
															<p class="no-margin text-inline">&nbsp;까지</p>
															<div class="form-check time-limit-checkbox">
																<input class="form-check-input" name="timestop1" type="checkbox" id="timestop1" value="true"><label class="form-check-label" for="timestop1">시간설정해제</label>
															</div>
														</div>
													</div>
													<div class="upload-detail">
														<p class="no-margin fw-bold">2회차</p>
														<input type="text" name="upload-detail2" class="write-title-shape" placeholder="인증해야 하는 내용을 적어주세요.">
														<div>
															<select name="upload-time2-1" class="select-width text-inline">
																<option value="0" selected="selected">00시</option>
																<option value="1">01시</option>
																<option value="2">02시</option>
																<option value="3">03시</option>
																<option value="4">04시</option>
																<option value="5">05시</option>
																<option value="6">06시</option>
																<option value="7">07시</option>
																<option value="8">08시</option>
																<option value="9">09시</option>
																<option value="10">10시</option>
																<option value="11">11시</option>
																<option value="12">12시</option>
																<option value="13">13시</option>
																<option value="14">14시</option>
																<option value="15">15시</option>
																<option value="16">16시</option>
																<option value="17">17시</option>
																<option value="18">18시</option>
																<option value="19">19시</option>
																<option value="20">20시</option>
																<option value="21">21시</option>
																<option value="22">22시</option>
																<option value="23">23시</option>
															</select>
															<p class="no-margin text-inline">&nbsp;부터&nbsp;</p>
															<select name="upload-time2-2" class="select-width text-inline">
																<option value="1">01시</option>
																<option value="2">02시</option>
																<option value="3">03시</option>
																<option value="4">04시</option>
																<option value="5">05시</option>
																<option value="6">06시</option>
																<option value="7">07시</option>
																<option value="8">08시</option>
																<option value="9">09시</option>
																<option value="10">10시</option>
																<option value="11">11시</option>
																<option value="12">12시</option>
																<option value="13">13시</option>
																<option value="14">14시</option>
																<option value="15">15시</option>
																<option value="16">16시</option>
																<option value="17">17시</option>
																<option value="18">18시</option>
																<option value="19">19시</option>
																<option value="20">20시</option>
																<option value="21">21시</option>
																<option value="22">22시</option>
																<option value="23">23시</option>
																<option value="24">24시</option>
															</select>
															<p class="no-margin text-inline">&nbsp;까지</p>
															<div class="form-check time-limit-checkbox">
																<input class="form-check-input" name="timestop2" type="checkbox" id="timestop2" value="true"><label class="form-check-label" for="timestop2">시간설정해제</label>
															</div>
														</div>
													</div>
													<div class="upload-detail">
														<p class="no-margin fw-bold">3회차</p>
														<input type="text" name="upload-detail3" class="write-title-shape" placeholder="인증해야 하는 내용을 적어주세요.">
														<div>
															<select name="upload-time3-1" class="select-width text-inline">
																<option value="0" selected="selected">00시</option>
																<option value="1">01시</option>
																<option value="2">02시</option>
																<option value="3">03시</option>
																<option value="4">04시</option>
																<option value="5">05시</option>
																<option value="6">06시</option>
																<option value="7">07시</option>
																<option value="8">08시</option>
																<option value="9">09시</option>
																<option value="10">10시</option>
																<option value="11">11시</option>
																<option value="12">12시</option>
																<option value="13">13시</option>
																<option value="14">14시</option>
																<option value="15">15시</option>
																<option value="16">16시</option>
																<option value="17">17시</option>
																<option value="18">18시</option>
																<option value="19">19시</option>
																<option value="20">20시</option>
																<option value="21">21시</option>
																<option value="22">22시</option>
																<option value="23">23시</option>
															</select>
															<p class="no-margin text-inline">&nbsp;부터&nbsp;</p>
															<select name="upload-time3-2" class="select-width text-inline">
																<option value="1">01시</option>
																<option value="2">02시</option>
																<option value="3">03시</option>
																<option value="4">04시</option>
																<option value="5">05시</option>
																<option value="6">06시</option>
																<option value="7">07시</option>
																<option value="8">08시</option>
																<option value="9">09시</option>
																<option value="10">10시</option>
																<option value="11">11시</option>
																<option value="12">12시</option>
																<option value="13">13시</option>
																<option value="14">14시</option>
																<option value="15">15시</option>
																<option value="16">16시</option>
																<option value="17">17시</option>
																<option value="18">18시</option>
																<option value="19">19시</option>
																<option value="20">20시</option>
																<option value="21">21시</option>
																<option value="22">22시</option>
																<option value="23">23시</option>
																<option value="24">24시</option>
															</select>
															<p class="no-margin text-inline">&nbsp;까지</p>
															<div class="form-check time-limit-checkbox">
																<input class="form-check-input" type="checkbox" id="timestop3" name="timestop3" value="timestop3"><label class="form-check-label" for="timestop3">시간설정해제</label>
															</div>
														</div>
													</div>
												</td>
											</tr>
										</tbody>
									</table>
									<div class="explain-date font-14">
										<p class="bold-underline">챌린지 난이도에 따른 보상</p>
										<p>챌린지 난이도에 따른 추가 보상이 지급됩니다.</p>
										<p class="fw-bold color-red">100% 달성시</p>
										<ul>
											<li>난이도 상 > 참여금의 5% 추가지급 (10,000원 > 10,500원)</li>
											<li>난이도 중 > 참여금의 3% 추가지급 (10,000원 > 10,300원)</li>
											<li>난이도 하 > 참여금의 2% 추가지급 (10,000원 > 10,200원)</li>
										</ul>

										<p class="bold-underline">챌린지 달성률에 따른 보상</p>
										<p>
											챌린지 성공 이후 전체 달성률에 대한 추가 보상이 지급됩니다.<br>
										<ul>
											<li><span class="fw-bold color-red">100%</span> > 추가지급의 30% 추가지급 (10,000원 > 10,500원 > 10,650원)</li>
											<li>90% > 추가지급의 10% 추가지급 (10,000원 > 10,500원 > 10,550원)</li>
										</ul>
										</p>
									</div>
								</div>
							</div>
							<div id="write-table-explain">
								<h5 class="write-header">챌린지 소개</h5>
								<div class="table-responsive table-writeform">
									<table class="table table-padding">
										<tbody class="table-none">
											<tr class="border-white-underline">
												<td class="write-table-label line-height25">소개글</td>
												<td class="write-table-content" colspan="3"><textarea name="content" id="classic"></textarea></td>
											</tr>
											<tr class="border-white-underline">
												<td class="write-table-label line-height2">배경색 설정</td>
												<td class="write-table-content" colspan="3"><div name="color" class="colorPickSelector"></div></td>
											</tr>
											<tr class="border-white-underline">
												<td class="write-table-label line-height2">카테고리 설정</td>
												<td class="write-table-content" colspan="3"><div>
														<table class="category-letter">
															<tr>
																<td><input id="cate1" type="radio" name="interestNo" value="1"><label class="form-check-label" for="cate1">운동</label></td>
																<td><input id="cate2" type="radio" name="interestNo" value="2"><label class="form-check-label" for="cate2">봉사활동</label></td>
																<td><input id="cate3" type="radio" name="interestNo" value="3"><label class="form-check-label" for="cate3">독서</label></td>
																<td><input id="cate4" type="radio" name="interestNo" value="4"><label class="form-check-label" for="cate4">건강</label></td>
															</tr>
															<tr>
																<td><input id="cate5" type="radio" name="interestNo" value="5"><label class="form-check-label" for="cate5">생활</label></td>
																<td><input id="cate6" type="radio" name="interestNo" value="6"><label class="form-check-label" for="cate6">그림</label></td>
																<td><input id="cate7" type="radio" name="interestNo" value="7"><label class="form-check-label" for="cate7">공부</label></td>
																<td><input id="cate8" type="radio" name="interestNo" value="8"><label class="form-check-label" for="cate8">반려동물</label></td>
															</tr>
															<tr>
																<td><input id="cate9" type="radio" name="interestNo" value="9"><label class="form-check-label" for="cate9">음악</label></td>
																<td><input id="cate10" type="radio" name="interestNo" value="10"><label class="form-check-label" for="cate10">식습관</label></td>
																<td><input id="cate11" type="radio" name="interestNo" value="11"><label class="form-check-label" for="cate11">취미</label></td>
																<td><input id="cate12" type="radio" name="interestNo" value="12"><label class="form-check-label" for="cate12">뷰티</label></td>
															</tr>
														</table>
													</div></td>
											</tr>
											<tr class="border-white-underline">
												<td class="write-table-label line-height2">태그 설정</td>
												<td class="write-table-content" colspan="3"><div id="tagDiv">
														<input id="tagbar" type="text" class="write-title-shape" name="tag" placeholder="태그를 입력해 주세요 (5개까지 설정 가능)" data-value=""><br>
													</div>
													<div id="tagLD"class="font-12">
														<span id="tags"></span> 
													</div></td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>

							<div id="write-table-join">
								<h5 class="write-header">챌린지 참가하기</h5>
								<table class="table">
									<tbody>
										<tr class="table-none">
											<td class="write-table-label">챌린지참가비용</td>
											<td class="font-12 write-table-content"><select name="payment">
													<option value="0" selected="selected">금액설정</option>
													<option value="10000">10,000</option>
													<option value="20000">20,000</option>
													<option value="30000">30,000</option>
													<option value="40000">40,000</option>
													<option value="50000">50,000</option>
													<option value="60000">60,000</option>
													<option value="70000">70,000</option>
													<option value="80000">80,000</option>
													<option value="90000">90,000</option>
													<option value="100000">100,000</option>
											</select>&nbsp;원 <span class="float-r">※참가비용 설정 후 자동으로 참가됩니다.</span></td>
										</tr>
									</tbody>
								</table>
							</div>
							<div class="text-center">
								<button id="MKBtn" class="make-challenge make-challenge-button" type="submit">챌린지 개설</button>
							</div>
						</div>



					</div>
					<!-- write-wrap content -->

<!-- 										</form> -->
					<!-- content form -->



				</div>
				<!-- content col-7 -->



				<div id="rside" class="col-3">
					<div id="calculator">
						<p>난이도 설명</p>
						<ul class="list-unstyled">
							<li>챌린지 기간 1주 + 5점</li>
							<li>챌린지 기간 2주 + 10점</li>
							<li>챌린지 기간 3주 + 20점</li>
							<li>주 5회 + 5점</li>
							<li>주 5회 + 10점</li>
							<li>인증 방법 사진 + 10점</li>
							<li>인증 방법 동영상 + 20점</li>
							<li>일일 업로드 횟수 1회 + 5점</li>
							<li>일일 업로드 횟수 2회 + 10점</li>
							<li>일일 업로드 횟수 3회 + 20점</li>
							<li>미니게임 + 5점</li>
						</ul>
						<p>난이도 설정 점수</p>
						<ul class="list-unstyled">
							<li>40점 이하 하</li>
							<li>40~70점 중</li>
							<li>70점 이상 상</li>
						</ul>
						<p>난이도 계산기</p>
						<ul class="list-unstyled">
							<li>챌린지 기간 <span id="cal-length"></span></li>
							<li>주당 인증 일수 <span id="cal-times"></span></li>
							<li>인증 방법 <span id="cal-way"></span></li>
							<li>일일 업로드 횟수 <span id="cal-upload"></span></li>
							<li>미니게임 <span id="cal-mini"></span></li>
						</ul>
						<p>합계</p>
						<p id="cal-sum"></p>
						<p>난이도</p>
						<p id="cal-level"></p>
					</div>
				</div>
			</div>
		</div>





	</main>




	<!-- footer -->
	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
	<!-- //footer -->





</body>
<!-- 자바스크립트 영역 -->


<script type="text/javascript">

	var editor;
		
	<!-- ck Editor -->
	ClassicEditor
		.create( document.querySelector( '#classic' ), {
			removePlugins: [ 'ImageUpload' ]
		} )
		.then( newEditor => {
			editor = newEditor;
		})
		.catch( error => {
		    console.error( error );
	} );
	
	//에디터
	
	
	<!-- color picker -->
	 $(document).ready(function(){
		// 테마 색상 선택
		$(".colorPickSelector").colorPick({
			'left' : '16.5px',
			'bottom' : '-16.5938px',
			'initialColor': '#16a085',
			'allowRecent': false,
			'recentMax': 5,
			'allowCustomColor': false,
			'palette': [
			"#1abc9c", "#16a085", "#2ecc71", "#27ae60", "#3498db"
			, "#2980b9", "#9b59b6", "#8e44ad", "#34495e", "#2c3e50"
			, "#f1c40f", "#f39c12", "#e67e22", "#d35400", "#e74c3c"
			, "#c0392b", "#ecf0f1", "#bdc3c7", "#95a5a6", "#7f8c8d"
			],
			'onColorSelected': function() {
				this.element.css({'backgroundColor': this.color, 'color': this.color});
			}
		})
	});

	 <!-------------------------------- 태그 생성 // 삭제 -------------------------------->
	  	//태그갯수확인
	  	var count = 1;
	  	
	  	//태그 리스트 배열 선언
	  	tagList = [];
	  	
		//태그 append  	
	  	$("#tagbar").on("keyup", function(key){

	  		if(key.keyCode == 13){
	  			//태그 value 가져오기
	  	  		var text = $("#tagbar").val();
	  			
	  	  		if(text == "" || text == null){
	  	  			
	  	  			alert("텍스트를 입력해 주세요")
	  	  			
	  	  		} else if(count <= 5){
	  	  			
	  	  			//태그 배열에 추가
		  	  		tagList.push(text);
		  	  		
		  	  		//태그 append 선택자(*) 지우기
		  	  		$("#tags *").remove();
		  	  		
		  	  		//태그바 초기화
			  	  	var text = $("#tagbar").val("");
		  	  		
		  	  		//태그 갯수 +1
		  	  		count += 1;	  	 
		  	  		
		  	  		for(var i = 0 ; i < tagList.length ; i++){
						$("#tags").append('<span id="tag'+ (i+1) +'" class="tag">' + tagList[i] +'</span>');
		  	  		}
		  	  		
				} else{
					alert("최대 설정 가능한 태그입니다.");
				}
			  	  		
	  		}
	  		
	  	});
	  	
	  	
	  	//태그 1~5 삭제
	  		$("#tagLD").on("click", "#tag1", function(){
	  			
	  			tagList.shift();
	  			
	  			$("#tags *").remove();
	  			
	  			count -= 1;
	  			
	  			for(var i = 0 ; i < tagList.length ; i++){
	  				
					$("#tags").append('<span id="tag'+ (i+1) +'" class="tag">' + tagList[i] +'</span>');
	  	  		}
	  			
	  		})
	  	
			$("#tagLD").on("click", "#tag2", function(){
	  			
	  			tagList.splice(1, 1);
	  			
	  			$("#tags *").remove();
	  			
	  			count -= 1;
	  			
	  			for(var i = 0 ; i < tagList.length ; i++){
	  				
					$("#tags").append('<span id="tag'+ (i+1) +'" class="tag">' + tagList[i] +'</span>');
	  	  		}
	  		});
	  		
			$("#tagLD").on("click", "#tag3", function(){
	  			
	  			tagList.splice(2, 1);
	  			
	  			$("#tags *").remove();
	  			
	  			count -= 1;
	  			
	  			for(var i = 0 ; i < tagList.length ; i++){
	  				
					$("#tags").append('<span id="tag'+ (i+1) +'" class="tag">' + tagList[i] +'</span>');
	  	  		}
	  			
	  		});
	  		
			$("#tagLD").on("click", "#tag4", function(){
	  			
	  			tagList.splice(3, 1);
	  			
	  			$("#tags *").remove();
	  			
	  			count -= 1;
	  			
	  			for(var i = 0 ; i < tagList.length ; i++){
	  				
					$("#tags").append('<span id="tag'+ (i+1) +'" class="tag">' + tagList[i] +'</span>');
	  	  		}
	  			
	  		});
	  		
			$("#tagLD").on("click", "#tag5", function(){
	  			
	  			tagList.pop();
	  			
	  			$("#tags *").remove();
	  			
	  			count -= 1;
	  			
	  			for(var i = 0 ; i < tagList.length ; i++){
	  				
					$("#tags").append('<span id="tag'+ (i+1) +'" class="tag">' + tagList[i] +'</span>');
	  	  		}
	  			
	  		});
	 
	
 	<!-------------------------------- 일일 업로드 세부설정 갯수 -------------------------------->
	
	$('[name=upload]').on("click", function(){
		if($('[name=upload]').val() == 1){
			
		}
	})
	 
	 
	<!-------------------------------- 시간 설정 -------------------------------->
	
	
		var today1 = new Date();  
		var today2 = new Date();
		var rDate = new Date();
		var pDate = new Date();
		
		var date = today1.getDate();
		var date2 = today2.getDate();

		var recDate = [];

		var perDate = [];

		var rec = $('select[name="recruitment"]').val();
		rec = Number(rec);
		var pec = $('select[name="period"]').val();
		pec = Number(pec);
		<!--  첫화면  -->
		rDate = new Date(today1.setDate(date + rec));
		console.log(rDate);
		
		recDate[0] = rDate.getFullYear();
		recDate[1] = rDate.getMonth() + 1;
		recDate[2] = rDate.getDate();
		
		pDate = new Date(today2.setDate(date2 + rec + (pec*7)));
		console.log("pDate : " + pDate);
		
		perDate[0] = pDate.getFullYear();
		perDate[1] = pDate.getMonth() + 1;
		perDate[2] = pDate.getDate();
		
		$(".startDate").text(recDate[0] + '/' + recDate[1] + '/' + recDate[2]);
		$(".cDate").text(perDate[0] + '/' + perDate[1] + '/' + perDate[2]);
		
		if(pec == 1){
			$('#weeks').text("1주일");
		} else if(pec == 2){
			$('#weeks').text("2주일");
		} else{
			$('#weeks').text("3주일");
		}
		
		today2 = new Date();
		
		<!-- 모집기간 설정 눌렀을 때 -->
		$('select[name="recruitment"]').on("change", function(){
			
			var rec = $('select[name="recruitment"]').val();
			rec = Number(rec);
			var pec = $('select[name="period"]').val();
			pec = Number(pec);
			
			rDate = new Date(today1.setDate(date + rec));
			console.log(rDate);
			
			recDate[0] = rDate.getFullYear();
			recDate[1] = rDate.getMonth() + 1;
			recDate[2] = rDate.getDate();
			
			pDate = new Date(today2.setDate(date2 + rec + (pec*7)));
			console.log("pDate : " + pDate);
			
			perDate[0] = pDate.getFullYear();
			perDate[1] = pDate.getMonth() + 1;
			perDate[2] = pDate.getDate();
			
			$(".startDate").text(recDate[0] + '/' + recDate[1] + '/' + recDate[2]);
			$(".cDate").text(perDate[0] + '/' + perDate[1] + '/' + perDate[2]);
			
			console.log("rec: " + rec);
			console.log("pec: " + pec);
			
			today2 = new Date();
		})
		
		<!-- 챌린지 기간 설정 눌렀을 때 -->
		$('select[name="period"]').on("change", function(){
			var rec = $('select[name="recruitment"]').val();
			rec = Number(rec);
			var pec = $('select[name="period"]').val();
			pec = Number(pec);
			
			rDate = new Date(today1.setDate(date + rec));
			console.log(rDate);
			
			recDate[0] = rDate.getFullYear();
			recDate[1] = rDate.getMonth() + 1;
			recDate[2] = rDate.getDate();
			
			pDate = new Date(today2.setDate(date2 + rec + (pec*7)));
			console.log("pDate : " + pDate);
			
			perDate[0] = pDate.getFullYear();
			perDate[1] = pDate.getMonth() + 1;
			perDate[2] = pDate.getDate();
			
			$(".startDate").text(recDate[0] + '/' + recDate[1] + '/' + recDate[2]);
			$(".cDate").text(perDate[0] + '/' + perDate[1] + '/' + perDate[2]);
			
			console.log("rec: " + rec);
			console.log("pec: " + pec);
			
			today2 = new Date();
			
			if(pec == 1){
				$('#weeks').text("1주일");
			} else if(pec == 2){
				$('#weeks').text("2주일");
			} else{
				$('#weeks').text("3주일");
			}
			
		})
	
	
	
	//챌린지 시작 날짜 
	
	<!-- 챌린지 난이도 계산 -->
	var pCal = $('select[name="period"]').val();
	pCal = Number(pCal);
	console.log(pCal);
	var cCal = $('input:radio[name="certify"]:checked').val();
	console.log(cCal);
	var uCal = $('input:radio[name="upload"]:checked').val();
	console.log(uCal);
	var cDCal = $('input:radio[name="certifyDay"]:checked').val();
	console.log(cDCal);
	var mCal = $('input:checkbox[name="minigame"]:checked').val();
	console.log(mCal);

	var minimini;
	if(mCal == false){
		minimini = 0;
		minimini = Number(minimini);
	} else{
		minimini = 5;
		minimini = Number(minimini);
	}
	
	var calList = [];
	
	calList[0] = 5;
	calList[1] = 10;
	calList[2] = 5;
	calList[3] = 5;
	calList[4] = 0;
	
	//기본점수
	var basePoint = $("#cal-sum").text(calList[0] + calList[1] + calList[2] + calList[3] + calList[4]);
	
	
	$('select[name="period"]').on("change", function(){
		var pCal = $('select[name="period"]').val();
		if(pCal == 1){
			calList[0] = 5;
			console.log(calList[0]);
			basePoint;
		} else if(pCal == 2){
			calList[0] = 10;
			console.log(calList[0]);
			basePoint;
		} else{
			calList[0] = 20;
			console.log(calList[0]);
			basePoint;
		}
	})
	
	$('input:radio[name="certify"]').on("change", function(){
		var cCal = $('input:radio[name="certify"]:checked').val();
		if(cCal == 1){
			calList[1] = 5;
			console.log(calList[1]);
			basePoint;
		} else {
			calList[1] = 10;
			console.log(calList[1]);
			basePoint;
		}
	})
	
	$('input:radio[name="upload"]').on("change", function(){
		var uCal = $('input:radio[name="upload"]:checked').val();
		if(uCal == 1){
			calList[2] = 5;
			console.log(calList[2]);
			basePoint;
		} else if(uCal ==2 ){
			calList[2] = 10;
			console.log(calList[2]);
			basePoint;
		} else{
			calList[2] = 20;
			console.log(calList[2]);
			basePoint;
		}
		
	})
	
	$('input:radio[name="certifyDay"]').on("change", function(){
		var cDCal = $('input:radio[name="certifyDay"]:checked').val();
		if(cDCal == 5){
			calList[3] = 5;
			console.log(calList[3]);
			basePoint;
		} else{
			calList[3] = 10;
			console.log(calList[3]);
			basePoint;
		}
	})
	
	
	 <!-- form data -->
  	$("#MKBtn").on("click", function(){
  		
//		var content = $("#classic").text();

//		var color = $("#color");
		
//		var clgLevel = $("#clgLevel");
		
//		<!-- 과제관련 var -->
//		var certifyNo = $("#certifyNo");
//		var certifyTitle = $("#certifyTitle");
//		var subOn = $("#subOn");
//		var subOff = $("#subOff");
		
		
//		var userNo = $("#userNo");
		


  		var payment = $('select[name="payment"]').val();
  		
 		var inputFile = $('input[name="img"]');
  		
 		var content = editor.getData();
 		
  		var formData = new FormData();

  		formData.append('imgs' , inputFile[0].files[0]);
  		formData.append('interestNo' ,  $('input:radio[name="interestNo"]:checked').val());
  		formData.append('clgTitle' ,  $("#clgTitle").val());
  		formData.append('recruitment' ,  $('select[name="recruitment"]').val());
  		formData.append('period' ,  $('select[name="period"]').val());
  		formData.append('certify' ,  $('input:radio[name="certify"]:checked').val());

  		
  		if($('input:checkbox[name="minigame"]:checked')==true){
  			formData.append('minigame' ,  $('input:checkbox[name="minigame"]:checked').val()); //0
  		}else {
  			formData.append('minigame' , -1);
  		}
  		
  		formData.append('upload' ,  $('input:radio[name="upload"]:checked').val());
  		formData.append('certifyDay' ,  $('input:radio[name="certifyDay"]:checked').val());
  		formData.append('tag1' ,  tagList[0]);
  		formData.append('tag2' ,  tagList[1]);
  		formData.append('tag3' ,  tagList[2]);
  		formData.append('tag4' ,  tagList[3]);
  		formData.append('tag5' ,  tagList[4]);
  		formData.append('content', content);
  		
  		
  		formData.append('color',  $('[name="color"]').css( "background-color"));
  		
  		console.log($('[name="color"]').css( "background-color"));
  		
  		$.ajax({
  			contentType : false,
  			processData : false,
  			data : formData,
  			url : '${pageContext.request.contextPath}/challenge/upload',
  			type : 'POST',
  			success : function(result){
  				console.log(result)
  			}

  				
  		})
  		
  	})

</script>
</html>