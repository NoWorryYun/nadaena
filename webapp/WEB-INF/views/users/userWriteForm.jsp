<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto+Slab:300,400|Roboto:300,400,700">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto+Slab:300,400|Roboto:300,400,700">
<link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
<link rel="stylesheet"
	href="assets/css/Dropdown-Login-with-Social-Logins-bootstrap-social.css">
<link rel="stylesheet" href="assets/css/dropdown-search-bs4.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/jquery.tablesorter/2.31.2/css/theme.bootstrap_4.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/6.4.8/swiper-bundle.min.css">
<link rel="stylesheet" href="assets/css/icon-star-empty.css">
<link rel="stylesheet"
	href="assets/css/Ludens---1-Index-Table-with-Search--Sort-Filters-v20.css">
<link rel="stylesheet" href="assets/css/Menu-dropdown-xl.css">
<link rel="stylesheet"
	href="assets/css/Multi-Select-Dropdown-by-Jigar-Mistry.css">
<link rel="stylesheet"
	href="assets/css/navbar-dropdown-multiple-columns.css">
<link rel="stylesheet" href="assets/css/navbar-megadropdown.css">
<link rel="stylesheet" href="assets/css/Navigation-Menu.css">
<link rel="stylesheet" href="assets/css/NZDropdown---Tree.css">
<link rel="stylesheet" href="assets/css/Pretty-Search-Form-.css">
<link rel="stylesheet" href="assets/css/Pure-CSS-Drop-Down-Menu.css">
<link rel="stylesheet" href="assets/css/Search-Field-With-Icon.css">
<link rel="stylesheet" href="assets/css/Search-Input-responsive.css">
<link rel="stylesheet" href="assets/css/Simple-Slider-Simple-Slider.css">
<link rel="stylesheet"
	href="assets/css/sticky-dark-top-nav-with-dropdown.css">
<link rel="stylesheet" href="assets/css/styles.css">
<title>Insert title here</title>
</head>
<body>
	<main style="padding: 148px 400px 0px 400px;">
		<aside>
			<div id="aside" class="clearfix">
				<div id="aside-header">마이 나대나</div>
				<div id="info">
					<div id="nickname">닉네임</div>
					<div id="level">LV.80</div>
					<div id="sum" class="clearfix">
						<div id="simpleinfo" class="clearfix">
							<ul>
								<li>챌린지 성공:</li>
								<li>이벤트 성공:</li>
								<li>보유 포인트:</li>
							</ul>
						</div>
						<div id="simpleinfo2" class="clearfix">
							<ul>
								<li>9999회</li>
								<li>9999회</li>
								<li>999999p</li>
							</ul>
						</div>
						<div class="clear"></div>
					</div>

				</div>

				<ul>
					<li><a href="#">챌린지</a></li>
					<li><a href="#">이벤트</a></li>
					<li><a href="#">북마크</a></li>
					<li><a href="#">후기글</a></li>
					<li><a href="#">포인트</a></li>
					<li><a href="#">개인정보 관리</a></li>
				</ul>
			</div>
		</aside>
		<div id="write-wrap"
			style="padding-left: 260px; padding-right: 260px; padding-top: 20px;">
			<div id="write-main-wrap"
				style="padding-left: 15px; border-left: 1px solid #9f9f9f; max-width: 850px; width: 850px; min-width: 850px;">
				<div style="width: 600px; float: left;">
					<h5
						style="font-weight: bold; border-bottom: 1px solid #9f9f9f; padding-bottom: 5px;">챌린지
						개설</h5>
					<div id="write-main">
						<div class="table-responsive" id="table-writeform"
							style="border-style: none; border-color: rgb(255, 255, 255); border-top-color: rgb(33,; border-right-color: 37,; border-bottom-style: none; border-bottom-color: 41); border-left-color: 37,;">
							<table class="table">
								<thead
									style="border-style: none; border-color: var(- -bs-table-hover-bg); border-bottom-style: none; border-bottom-color: rgb(255, 255, 255);">
									<tr style="border-style: none;"></tr>
								</thead>
								<tbody style="border-style: none;">
									<tr style="border-style: none;">
										<td
											style="border-style: none; width: 120px; font-size: 12px; font-weight: bold;">노출여부</td>
										<td style="border-style: none; height: 46px;"><div
												id="visual-radio">
												<input type="radio" name="visual-radio" checked="checked"
													value="보이지않기" /> 보이지않기 &nbsp&nbsp&nbsp&nbsp&nbsp <input
													type="radio" name="visual-radio" value="보이기" /> 보이기
											</div></td>
									</tr>
									<tr style="border-style: none;">
										<td
											style="border-style: none; width: 120px; font-size: 12px; font-weight: bold; height: 34px;">제목</td>
										<td style="border-style: none; height: 46px;"><input
											type="text" style="width: 400px; font-size: 14px;"></td>
									</tr>
									<tr style="border-style: none;">
										<td
											style="border-style: none; width: 120px; font-size: 12px; font-weight: bold;">모집기간</td>
										<td style="border-style: none; height: 46px;"><select
											class="type-center" style="font-size: 14px;">
												<optgroup label="기간을 선택해 주세요">
													<option value="12" selected="">3일</option>
													<option value="13">4일</option>
													<option value="14">5일</option>
													<option value="">6일</option>
													<option value="">7일</option>
												</optgroup>
										</select>&nbsp;</td>
									</tr>
									<tr style="border-style: none;">
										<td
											style="border-style: none; width: 120px; font-size: 12px; font-weight: bold; height: 46px;">챌린지
											기간</td>
										<td style="border-style: none; height: 46px; font-size: 12px;"><div>
												2022년 XX월 XX일부터 <select class="type-center"
													style="font-size: 14px;">
													<optgroup label="기간을 선택해 주세요">
														<option value="12" selected>1주일</option>
														<option value="13">2주일</option>
														<option value="14">3주일</option>
													</optgroup>
												</select> 동안 진행
												<p>2022-XX-XX부터 2022-XX-XX까지 진행됩니다</p>
											</div></td>
									</tr>
									<tr>
										<td
											style="border-style: none; width: 120px; font-size: 12px; font-weight: bold;"
											colspan="2">대표이미지 설정</td>
									</tr>
									<tr>
										<td
											style="border-style: none; width: 120px; font-size: 12px; font-weight: bold; text-align: center;"
											colspan="2">
											<div class="table-responsive" style="text-align: left;">
												<table class="table">
													<thead style="border-style: none;">
														<tr style="border-style: none;"></tr>
													</thead>
													<tbody style="border-style: none;">
														<tr>
															<td id="image-cell"
																style="text-align: center; border-style: none; height: 260px; width: 280px;">
																<picture> <img width="230" height="200"
																	src="assets/img/bg-navbar-dropdown-themes.png"></picture>
															</td>
															<td
																style="border-style: none; height: 260px; width: 280px;">
																<div>
																	<ul class="nav nav-tabs" role="tablist"
																		style="width: 285px;">
																		<li class="nav-item" role="presentation"><a
																			class="nav-link active" role="tab"
																			data-bs-toggle="tab" id="basic-image" href="#tab-1">기본이미지</a></li>
																		<li class="nav-item" role="presentation"><a
																			class="nav-link" role="tab" data-bs-toggle="tab"
																			id="self-upload" href="#tab-2">직접업로드</a></li>
																	</ul>
																	<div class="tab-content">
																		<div class="tab-pane active" role="tabpanel"
																			id="tab-1" style="height: 225px;">
																			<ul class="list-inline" id="list-picture"
																				style="width: 280px;">
																				<li class="list-inline-item"><picture>
																					<img width="120" height="80"
																						src="assets/img/bg-navbar-dropdown-themes.png"
																						style="width: 80px; height: 60px;"></picture></li>
																				<li class="list-inline-item"><picture>
																					<img width="120" height="80"
																						src="assets/img/bg-navbar-dropdown-themes.png"
																						style="width: 80px; height: 60px;"></picture></li>
																				<li class="list-inline-item"><picture>
																					<img width="120" height="80"
																						src="assets/img/bg-navbar-dropdown-themes.png"
																						style="width: 80px; height: 60px;"></picture></li>
																				<li class="list-inline-item"><picture>
																					<img width="120" height="80"
																						src="assets/img/bg-navbar-dropdown-themes.png"
																						style="width: 80px; height: 60px;"></picture></li>
																				<li class="list-inline-item"><picture>
																					<img width="120" height="80"
																						src="assets/img/bg-navbar-dropdown-themes.png"
																						style="width: 80px; height: 60px;"></picture></li>
																				<li class="list-inline-item"><picture>
																					<img width="120" height="80"
																						src="assets/img/bg-navbar-dropdown-themes.png"
																						style="width: 80px; height: 60px;"></picture></li>
																				<li class="list-inline-item"><picture>
																					<img width="120" height="80"
																						src="assets/img/bg-navbar-dropdown-themes.png"
																						style="width: 80px; height: 60px;"></picture></li>
																				<li class="list-inline-item"><picture>
																					<img width="120" height="80"
																						src="assets/img/bg-navbar-dropdown-themes.png"
																						style="width: 80px; height: 60px;"></picture></li>
																				<li class="list-inline-item"><picture>
																					<img width="120" height="80"
																						src="assets/img/bg-navbar-dropdown-themes.png"
																						style="width: 80px; height: 60px;"></picture></li>
																			</ul>
																		</div>
																		<div class="tab-pane" role="tabpanel" id="tab-2"
																			style="text-align: center; background-size: contain; background-image: url(https://cdn.bootstrapstudio.io/placeholders/1400x800.png); background-repeat: no-repeat; height: 225px; width: 300px; padding: 10px;">
																			<p style="line-height: 150px;">사진을 직접 넣어보세요</p>
																		</div>
																	</div>
																</div>
															</td>
														</tr>
													</tbody>
												</table>
											</div>
										</td>
									</tr>
									<tr style="border-style: none;">
										<td
											style="border-style: none; width: 120px; font-size: 12px; font-weight: bold; height: 46px;">기본
											인증 방법</td>
										<td style="border-style: none; height: 46px; font-size: 12px;"><div
												id="certification">
												<input type="radio" name="certification" checked="checked"
													value="picture" /> 사진 &nbsp&nbsp&nbsp&nbsp&nbsp <input
													type="radio" name="certification" value="video" /> 동영상
											</div></td>
									</tr>
									<tr style="border-style: none;">
										<td
											style="border-style: none; width: 120px; font-size: 12px; font-weight: bold; height: 46px;">업로드
											횟수 설정</td>
										<td style="border-style: none; height: 46px; font-size: 12px;"><div
												id="number-of-days">
												<b>일주일 중 며칠 업로드 합니까?</b>
												<table class="upload-size">
													<tr>
														<td><input type="radio" name="number-of-days"
															checked="checked" value="5days" /> 5일</td>
														<td><input type="radio" name="number-of-days"
															value="7days" /> 7일</td>
													</tr>
												</table>
											</div></td>
									</tr>
									<tr style="border-style: none;">
										<td
											style="border-style: none; width: 120px; font-size: 12px; font-weight: bold; height: 46px;"></td>
										<td style="border-style: none; height: 46px; font-size: 12px;"><div
												id="number-of-times">
												<b>하루에 몇 번 업로드 합니까?</b>
												<table class="upload-size">
													<tr>
														<td><input type="radio" name="number-of-times"
															checked="checked" value="1time" /> 1회</td>
														<td><input type="radio" name="number-of-times"
															value="2times" /> 2회</td>
														<td><input type="radio" name="number-of-times"
															value="3times" /> 3회</td>
													</tr>
												</table>
											</div></td>
									</tr>
									<tr style="border-style: none;">
										<td
											style="border-style: none; width: 120px; font-size: 12px; font-weight: bold; height: 46px;"></td>
										<td style="border-style: none; height: 46px; font-size: 12px;"><div
												id="number-of-times-detail">
												<b>업로드 항목과 시간을 설정해 주세요</b> <br>
												<div>
													1회 <input class="typebox-size" type="text" name=""
														placeholder="인증해야하는 내용을 적어주세요"> <br> <select>
														<option value="14" selected>0시</option>
														<option value="12">1시</option>
														<option value="13">2시</option>
														<option value="14">3시</option>
														<option value="14">4시</option>
														<option value="14">5시</option>
														<option value="14">6시</option>
														<option value="14">7시</option>
														<option value="14">8시</option>
														<option value="14">9시</option>
														<option value="14">10시</option>
														<option value="14">11시</option>
														<option value="14">12시</option>
														<option value="14">13시</option>
														<option value="14">14시</option>
														<option value="14">15시</option>
														<option value="14">16시</option>
														<option value="14">17시</option>
														<option value="14">18시</option>
														<option value="14">19시</option>
														<option value="14">20시</option>
														<option value="14">21시</option>
														<option value="14">22시</option>
														<option value="14">23시</option>
													</select> 부터 <select>
														<option value="14" selected>1시간</option>
														<option value="12">2시간</option>
														<option value="13">3시간</option>
														<option value="14">4시간</option>
														<option value="14">5시간</option>
														<option value="14">6시간</option>
														<option value="14">7시간</option>
													</select> (00:00~01:00)
													&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp <input
														type="checkbox" name="no-time-limit" value="">시간
													설정 해제
												</div>

											</div></td>
									</tr>
									<tr style="border-style: none;">
										<td
											style="border-style: none; width: 120px; font-size: 12px; font-weight: bold; height: 46px;">추가
											인증 방법</td>
										<td style="border-style: none; height: 46px; font-size: 12px;"><div
												id="mini-game">
												<table class="upload-size">
													<tr>
														<td><input type="checkbox" name="number-of-times"
															checked="checked" value="1time" /> 미니게임</td>
													</tr>
												</table>
											</div></td>
									</tr>
									<tr style="border-style: none;">
										<td
											style="border-style: none; width: 120px; font-size: 12px; font-weight: bold; height: 46px;">리워드
											금액</td>
										<td style="border-style: none; height: 46px; font-size: 12px;">10,000
											~ 100,000</td>
									</tr>
									<tr style="border-style: none;">
										<td
											style="border-style: none; width: 120px; font-size: 12px; font-weight: bold; height: 46px;">리워드
											설명</td>
										<td style="border-style: none; height: 46px; font-size: 12px;">
											<div>
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
													<li>100% > 추가지급의 30% 추가지급 (10,000원 > 10,500원 >
														10,650원)</li>
													<br>
													<li>90% > 추가지급의 10% 추가지급 (10,000원 > 10,500원 > 10,550원)</li>
													<br>
												</ul>
												</p>
											</div>
										</td>
									</tr>
									<tr style="border-style: none;">
										<td
											style="border-style: none; width: 120px; font-size: 12px; font-weight: bold; height: 46px;">소개글</td>
										<td style="border-style: none; height: 46px; font-size: 12px;">웹에디터
											구현</td>
									</tr>
									<tr style="border-style: none;">
										<td
											style="border-style: none; width: 120px; font-size: 12px; font-weight: bold; height: 46px;">배경테마</td>
										<td style="border-style: none; height: 46px; font-size: 12px;">배경색
											선택 구현</td>
									</tr>
									<tr style="border-style: none;">
										<td
											style="border-style: none; width: 120px; font-size: 12px; font-weight: bold; height: 46px;">카테고리</td>
										<td style="border-style: none; height: 46px; font-size: 12px;"><div>
												<table class="category-letter">
													<tr>
														<td><li class="list-inline-item"><input
																type="radio" name="category">운동</li></td>
														<td><li class="list-inline-item"><input
																type="radio" name="category">예술</li></td>
														<td><li class="list-inline-item"><input
																type="radio" name="category">독서</li></td>
														<td><li class="list-inline-item"><input
																type="radio" name="category">건강</li></td>
													</tr>
													<tr>
														<td><li class="list-inline-item"><input
																type="radio" name="category">생활</li></td>
														<td><li class="list-inline-item"><input
																type="radio" name="category">그림</li></td>
														<td><li class="list-inline-item"><input
																type="radio" name="category">공부</li></td>
														<td><li class="list-inline-item"><input
																type="radio" name="category">반려동물</li></td>
													</tr>
													<tr>
														<td><li class="list-inline-item"><input
																type="radio" name="category">음악</li></td>
														<td><li class="list-inline-item"><input
																type="radio" name="category">식습관</li></td>
														<td><li class="list-inline-item"><input
																type="radio" name="category">취미</li></td>
														<td><li class="list-inline-item"><input
																type="radio" name="category">뷰티</li></td>
													</tr>
												</table>
											</div></td>
									</tr>
									<tr style="border-style: none;">
										<td
											style="border-style: none; width: 120px; font-size: 12px; font-weight: bold; height: 46px;">태그</td>
										<td style="border-style: none; height: 46px; font-size: 12px;"><div>
												<input type="text" class="typebox-size" name="tag"
													placeholder="태그를 입력해 주세요"><br>
											</div>
											<div class="font-12">
												<a href="#">#심심해</a> <a href="#">#놀자</a> <a href="#">#어렵다</a>
												<a href="#">#인생</a>
											</div></td>
									</tr>
									<tr style="border-style: none;"></tr>
									<tr style="border-style: none;">
										<td class="type-center"
											style="border-style: none; width: auto; font-size: 12px; font-weight: bold; height: 46px;"
											colspan="2"><button
												class="make-challenge make-challenge-button" type="submit">챌린지
												개설</button></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<div id="calculator">
					<p>난이도 설명</p>
					<ul class="list-unstyled" style="padding-left: 15px;">
						<li>챌린지 기간 1주 + 5점</li>
						<li>챌린지 기간 2주 + 10점</li>
						<li>챌린지 기간 3주 + 20점</li>
						<li>인증 방법 동영상 + 20점</li>
						<li>업로드 횟수 2회 + 10점</li>
						<li>미니게임 + 5점</li>
					</ul>
					<p>난이도 계산기</p>
					<ul class="list-unstyled" style="padding-left: 15px;">
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
	</main>
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/bootstrap/js/bootstrap.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/6.4.8/swiper-bundle.min.js"></script>
	<script src="assets/js/Simple-Slider.js"></script>
</body>
</html>