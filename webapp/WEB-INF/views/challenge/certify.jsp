<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div id="certify-wrap">
	<div id="certify-main">
		<div>
			<div>
				<div>
					<img class="calender-size" src="${pageContext.request.contextPath}/assets/img/캘린더.png">
					<p style="font-size: 9px;">Fullcalender 사용해서 달력 연동하기</p>
				</div>
			</div>
			<div class="certify-graph-box">
				<div class="certify-graph">
					<p class="font-14">전체 챌린지 달성률</p>
					<div class="progress-bar">
						<div class="progress-all">
							<p>72%</p>
						</div>
					</div>
				</div>
				<div class="certify-graph">
					<p class="font-14">나의 챌린지 달성률</p>
					<div class="progress-bar">
						<div class="progress-mine">
							<p>82%</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div>
			<p class="certify-upload-header">인증업로드</p>
			<div class="table-responsive table-certify-form">
				<table class="table">
					<tbody class="table-none">
						<tr>
							<td class="certify-label certify-label-none" colspan=""><span style="font-weight: normal !important;">책읽기 시작한 페이지 업로드(09:00)~(10:00)</span><br></td>
						</tr>
						<tr>
							<td class="certify-label" colspan=""><input type="file"></td>
						</tr>
						<tr>
							<td class="certify-label certify-label-none" colspan=""><span style="font-weight: normal !important;">책읽기 마지막 페이지 업로드(09:00)~(10:00)</span><br></td>
						</tr>
						<tr>
							<td class="certify-label" colspan=""><input type="file"><br></td>
						</tr>
						<tr>
							<td class="certify-label certify-label-none" colspan=""><span style="font-weight: normal !important;">책 표지 사진 업로드(09:00)~(10:00)</span><br></td>
						</tr>
						<tr>
							<td class="certify-label certify-label-none" colspan=""><input type="file"></td>
						</tr>
						<tr>
							<td class="certify-label certify-label-none text-center" colspan=""><button class="make-challenge certify" type="submit">인증하기</button></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<div class="certify-board">
		<div class="certify-board-header">
			<p class="certify-header">인증게시판</p>
			<ul class="list-inline" id="certify-all-mine">
				<li class="list-inline-item"><a href="#">전체</a></li>
				<li class="list-inline-item"><a href="#">내인증글</a></li>
			</ul>
		</div>
		<div id="certify-list">
			<ul class="list-inline text-center">
				<li class="list-inline-item">
					<div class="simple-slider">
						<div class="swiper-container">
							<div class="swiper-wrapper">
								<div class="swiper-slide">
									<a href="#"><img class="certify-img-size" src="${pageContext.request.contextPath}/assets/img/bg-navbar-dropdown-themes.png"></a>
								</div>
								<div class="swiper-slide">
									<img class="certify-img-size" src="${pageContext.request.contextPath}/assets/img/즐겨찾기%20별2.png">
								</div>
								<div class="swiper-slide">
									<img class="certify-img-size" src="${pageContext.request.contextPath}/assets/img/즐겨찾기%20별2.png">
								</div>
							</div>
							<div class="swiper-pagination"></div>
							<div class="swiper-button-prev"></div>
							<div class="swiper-button-next"></div>
						</div>
					</div>
					<div class="certify-list-info">
						<div>
							<div>
								<a class="report" href="#">신고</a>
							</div>
							<p class="upload-date">업로드일 : 2022-08-01</p>
							<p class="nickname">피자만두</p>
						</div>
					</div>
				</li>
				<li class="list-inline-item">
					<div class="simple-slider">
						<div class="swiper-container">
							<div class="swiper-wrapper">
								<div class="swiper-slide">
									<a href="#"><img class="certify-img-size" src="${pageContext.request.contextPath}/assets/img/bg-navbar-dropdown-themes.png"></a>
								</div>
								<div class="swiper-slide">
									<img class="certify-img-size" src="${pageContext.request.contextPath}/assets/img/즐겨찾기%20별2.png">
								</div>
								<div class="swiper-slide">
									<img class="certify-img-size" src="${pageContext.request.contextPath}/assets/img/즐겨찾기%20별2.png">
								</div>
							</div>
							<div class="swiper-pagination"></div>
							<div class="swiper-button-prev"></div>
							<div class="swiper-button-next"></div>
						</div>
					</div>
					<div class="certify-list-info">
						<div>
							<div>
								<a class="report" href="#">신고</a>
							</div>
							<p class="upload-date">업로드일 : 2022-08-01</p>
							<p class="nickname">피자만두</p>
						</div>
					</div>
				</li>
				<li class="list-inline-item">
					<div class="simple-slider">
						<div class="swiper-container">
							<div class="swiper-wrapper">
								<div class="swiper-slide">
									<a href="#"><img class="certify-img-size" src="${pageContext.request.contextPath}/assets/img/bg-navbar-dropdown-themes.png"></a>
								</div>
								<div class="swiper-slide">
									<img class="certify-img-size" src="${pageContext.request.contextPath}/assets/img/즐겨찾기%20별2.png">
								</div>
								<div class="swiper-slide">
									<img class="certify-img-size" src="${pageContext.request.contextPath}/assets/img/즐겨찾기%20별2.png">
								</div>
							</div>
							<div class="swiper-pagination"></div>
							<div class="swiper-button-prev"></div>
							<div class="swiper-button-next"></div>
						</div>
					</div>
					<div class="certify-list-info">
						<div>
							<div>
								<a class="report" href="#">신고</a>
							</div>
							<p class="upload-date">업로드일 : 2022-08-01</p>
							<p class="nickname">피자만두</p>
						</div>
					</div>
				</li>
				<li class="list-inline-item">
					<div class="simple-slider">
						<div class="swiper-container">
							<div class="swiper-wrapper">
								<div class="swiper-slide">
									<a href="#"><img class="certify-img-size" src="${pageContext.request.contextPath}/assets/img/bg-navbar-dropdown-themes.png"></a>
								</div>
								<div class="swiper-slide">
									<img class="certify-img-size" src="${pageContext.request.contextPath}/assets/img/즐겨찾기%20별2.png">
								</div>
								<div class="swiper-slide">
									<img class="certify-img-size" src="${pageContext.request.contextPath}/assets/img/즐겨찾기%20별2.png">
								</div>
							</div>
							<div class="swiper-pagination"></div>
							<div class="swiper-button-prev"></div>
							<div class="swiper-button-next"></div>
						</div>
					</div>
					<div class="certify-list-info">
						<div>
							<div>
								<a class="report" href="#">신고</a>
							</div>
							<p class="upload-date">업로드일 : 2022-08-01</p>
							<p class="nickname">피자만두</p>
						</div>
					</div>
				</li>
				<li class="list-inline-item">
					<div class="simple-slider">
						<div class="swiper-container">
							<div class="swiper-wrapper">
								<div class="swiper-slide">
									<a href="#"><img class="certify-img-size" src="${pageContext.request.contextPath}/assets/img/bg-navbar-dropdown-themes.png"></a>
								</div>
								<div class="swiper-slide">
									<img class="certify-img-size" src="${pageContext.request.contextPath}/assets/img/즐겨찾기%20별2.png">
								</div>
								<div class="swiper-slide">
									<img class="certify-img-size" src="${pageContext.request.contextPath}/assets/img/즐겨찾기%20별2.png">
								</div>
							</div>
							<div class="swiper-pagination"></div>
							<div class="swiper-button-prev"></div>
							<div class="swiper-button-next"></div>
						</div>
					</div>
					<div class="certify-list-info">
						<div>
							<div>
								<a class="report" href="#">신고</a>
							</div>
							<p class="upload-date">업로드일 : 2022-08-01</p>
							<p class="nickname">피자만두</p>
						</div>
					</div>
				</li>
				<li class="list-inline-item">
					<div class="simple-slider">
						<div class="swiper-container">
							<div class="swiper-wrapper">
								<div class="swiper-slide">
									<a href="#"><img class="certify-img-size" src="${pageContext.request.contextPath}/assets/img/bg-navbar-dropdown-themes.png"></a>
								</div>
								<div class="swiper-slide">
									<img class="certify-img-size" src="${pageContext.request.contextPath}/assets/img/즐겨찾기%20별2.png">
								</div>
								<div class="swiper-slide">
									<img class="certify-img-size" src="${pageContext.request.contextPath}/assets/img/즐겨찾기%20별2.png">
								</div>
							</div>
							<div class="swiper-pagination"></div>
							<div class="swiper-button-prev"></div>
							<div class="swiper-button-next"></div>
						</div>
					</div>
					<div class="certify-list-info">
						<div>
							<div>
								<a class="report" href="#">신고</a>
							</div>
							<p class="upload-date">업로드일 : 2022-08-01</p>
							<p class="nickname">피자만두</p>
						</div>
					</div>
				</li>
				<li class="list-inline-item">
					<div class="simple-slider">
						<div class="swiper-container">
							<div class="swiper-wrapper">
								<div class="swiper-slide">
									<a href="#"><img class="certify-img-size" src="${pageContext.request.contextPath}/assets/img/bg-navbar-dropdown-themes.png"></a>
								</div>
								<div class="swiper-slide">
									<img class="certify-img-size" src="${pageContext.request.contextPath}/assets/img/즐겨찾기%20별2.png">
								</div>
								<div class="swiper-slide">
									<img class="certify-img-size" src="${pageContext.request.contextPath}/assets/img/즐겨찾기%20별2.png">
								</div>
							</div>
							<div class="swiper-pagination"></div>
							<div class="swiper-button-prev"></div>
							<div class="swiper-button-next"></div>
						</div>
					</div>
					<div class="certify-list-info">
						<div>
							<div>
								<a class="report" href="#">신고</a>
							</div>
							<p class="upload-date">업로드일 : 2022-08-01</p>
							<p class="nickname">피자만두</p>
						</div>
					</div>
				</li>
				<li class="list-inline-item">
					<div class="simple-slider">
						<div class="swiper-container">
							<div class="swiper-wrapper">
								<div class="swiper-slide">
									<a href="#"><img class="certify-img-size" src="${pageContext.request.contextPath}/assets/img/bg-navbar-dropdown-themes.png"></a>
								</div>
								<div class="swiper-slide">
									<img class="certify-img-size" src="${pageContext.request.contextPath}/assets/img/즐겨찾기%20별2.png">
								</div>
								<div class="swiper-slide">
									<img class="certify-img-size" src="${pageContext.request.contextPath}/assets/img/즐겨찾기%20별2.png">
								</div>
							</div>
							<div class="swiper-pagination"></div>
							<div class="swiper-button-prev"></div>
							<div class="swiper-button-next"></div>
						</div>
					</div>
					<div class="certify-list-info">
						<div>
							<div>
								<a class="report" href="#">신고</a>
							</div>
							<p class="upload-date">업로드일 : 2022-08-01</p>
							<p class="nickname">피자만두</p>
						</div>
					</div>
				</li>
				<li class="list-inline-item">
					<div class="simple-slider">
						<div class="swiper-container">
							<div class="swiper-wrapper">
								<div class="swiper-slide">
									<a href="#"><img class="certify-img-size" src="${pageContext.request.contextPath}/assets/img/bg-navbar-dropdown-themes.png"></a>
								</div>
								<div class="swiper-slide">
									<img class="certify-img-size" src="${pageContext.request.contextPath}/assets/img/즐겨찾기%20별2.png">
								</div>
								<div class="swiper-slide">
									<img class="certify-img-size" src="${pageContext.request.contextPath}/assets/img/즐겨찾기%20별2.png">
								</div>
							</div>
							<div class="swiper-pagination"></div>
							<div class="swiper-button-prev"></div>
							<div class="swiper-button-next"></div>
						</div>
					</div>
					<div class="certify-list-info">
						<div>
							<div>
								<a class="report" href="#">신고</a>
							</div>
							<p class="upload-date">업로드일 : 2022-08-01</p>
							<p class="nickname">피자만두</p>
						</div>
					</div>
				</li>
				<li class="list-inline-item">
					<div class="simple-slider">
						<div class="swiper-container">
							<div class="swiper-wrapper">
								<div class="swiper-slide">
									<a href="#"><img class="certify-img-size" src="${pageContext.request.contextPath}/assets/img/bg-navbar-dropdown-themes.png"></a>
								</div>
								<div class="swiper-slide">
									<img class="certify-img-size" src="${pageContext.request.contextPath}/assets/img/즐겨찾기%20별2.png">
								</div>
								<div class="swiper-slide">
									<img class="certify-img-size" src="${pageContext.request.contextPath}/assets/img/즐겨찾기%20별2.png">
								</div>
							</div>
							<div class="swiper-pagination"></div>
							<div class="swiper-button-prev"></div>
							<div class="swiper-button-next"></div>
						</div>
					</div>
					<div class="certify-list-info">
						<div>
							<div>
								<a class="report" href="#">신고</a>
							</div>
							<p class="upload-date">업로드일 : 2022-08-01</p>
							<p class="nickname">피자만두</p>
						</div>
					</div>
				</li>
				<li class="list-inline-item">
					<div class="simple-slider">
						<div class="swiper-container">
							<div class="swiper-wrapper">
								<div class="swiper-slide">
									<a href="#"><img class="certify-img-size" src="${pageContext.request.contextPath}/assets/img/bg-navbar-dropdown-themes.png"></a>
								</div>
								<div class="swiper-slide">
									<img class="certify-img-size" src="${pageContext.request.contextPath}/assets/img/즐겨찾기%20별2.png">
								</div>
								<div class="swiper-slide">
									<img class="certify-img-size" src="${pageContext.request.contextPath}/assets/img/즐겨찾기%20별2.png">
								</div>
							</div>
							<div class="swiper-pagination"></div>
							<div class="swiper-button-prev"></div>
							<div class="swiper-button-next"></div>
						</div>
					</div>
					<div class="certify-list-info">
						<div>
							<div>
								<a class="report" href="#">신고</a>
							</div>
							<p class="upload-date">업로드일 : 2022-08-01</p>
							<p class="nickname">피자만두</p>
						</div>
					</div>
				</li>
				<li class="list-inline-item">
					<div class="simple-slider">
						<div class="swiper-container">
							<div class="swiper-wrapper">
								<div class="swiper-slide">
									<a href="#"><img class="certify-img-size" src="${pageContext.request.contextPath}/assets/img/bg-navbar-dropdown-themes.png"></a>
								</div>
								<div class="swiper-slide">
									<img class="certify-img-size" src="${pageContext.request.contextPath}/assets/img/즐겨찾기%20별2.png">
								</div>
								<div class="swiper-slide">
									<img class="certify-img-size" src="${pageContext.request.contextPath}/assets/img/즐겨찾기%20별2.png">
								</div>
							</div>
							<div class="swiper-pagination"></div>
							<div class="swiper-button-prev"></div>
							<div class="swiper-button-next"></div>
						</div>
					</div>
					<div class="certify-list-info">
						<div>
							<div>
								<a class="report" href="#">신고</a>
							</div>
							<p class="upload-date">업로드일 : 2022-08-01</p>
							<p class="nickname">피자만두</p>
						</div>
					</div>
				</li>
				<li class="list-inline-item">
					<div class="simple-slider">
						<div class="swiper-container">
							<div class="swiper-wrapper">
								<div class="swiper-slide">
									<a href="#"><img class="certify-img-size" src="${pageContext.request.contextPath}/assets/img/bg-navbar-dropdown-themes.png"></a>
								</div>
								<div class="swiper-slide">
									<img class="certify-img-size" src="${pageContext.request.contextPath}/assets/img/즐겨찾기%20별2.png">
								</div>
								<div class="swiper-slide">
									<img class="certify-img-size" src="${pageContext.request.contextPath}/assets/img/즐겨찾기%20별2.png">
								</div>
							</div>
							<div class="swiper-pagination"></div>
							<div class="swiper-button-prev"></div>
							<div class="swiper-button-next"></div>
						</div>
					</div>
					<div class="certify-list-info">
						<div>
							<div>
								<a class="report" href="#">신고</a>
							</div>
							<p class="upload-date">업로드일 : 2022-08-01</p>
							<p class="nickname">피자만두</p>
						</div>
					</div>
				</li>
				<li class="list-inline-item">
					<div class="simple-slider">
						<div class="swiper-container">
							<div class="swiper-wrapper">
								<div class="swiper-slide">
									<a href="#"><img class="certify-img-size" src="${pageContext.request.contextPath}/assets/img/bg-navbar-dropdown-themes.png"></a>
								</div>
								<div class="swiper-slide">
									<img class="certify-img-size" src="${pageContext.request.contextPath}/assets/img/즐겨찾기%20별2.png">
								</div>
								<div class="swiper-slide">
									<img class="certify-img-size" src="${pageContext.request.contextPath}/assets/img/즐겨찾기%20별2.png">
								</div>
							</div>
							<div class="swiper-pagination"></div>
							<div class="swiper-button-prev"></div>
							<div class="swiper-button-next"></div>
						</div>
					</div>
					<div class="certify-list-info">
						<div>
							<div>
								<a class="report" href="#">신고</a>
							</div>
							<p class="upload-date">업로드일 : 2022-08-01</p>
							<p class="nickname">피자만두</p>
						</div>
					</div>
				</li>
				<li class="list-inline-item">
					<div class="simple-slider">
						<div class="swiper-container">
							<div class="swiper-wrapper">
								<div class="swiper-slide">
									<a href="#"><img class="certify-img-size" src="${pageContext.request.contextPath}/assets/img/bg-navbar-dropdown-themes.png"></a>
								</div>
								<div class="swiper-slide">
									<img class="certify-img-size" src="${pageContext.request.contextPath}/assets/img/즐겨찾기%20별2.png">
								</div>
								<div class="swiper-slide">
									<img class="certify-img-size" src="${pageContext.request.contextPath}/assets/img/즐겨찾기%20별2.png">
								</div>
							</div>
							<div class="swiper-pagination"></div>
							<div class="swiper-button-prev"></div>
							<div class="swiper-button-next"></div>
						</div>
					</div>
					<div class="certify-list-info">
						<div>
							<div>
								<a class="report" href="#">신고</a>
							</div>
							<p class="upload-date">업로드일 : 2022-08-01</p>
							<p class="nickname">피자만두</p>
						</div>
					</div>
				</li>
				<li class="list-inline-item">
					<div class="simple-slider">
						<div class="swiper-container">
							<div class="swiper-wrapper">
								<div class="swiper-slide">
									<a href="#"><img class="certify-img-size" src="${pageContext.request.contextPath}/assets/img/bg-navbar-dropdown-themes.png"></a>
								</div>
								<div class="swiper-slide">
									<img class="certify-img-size" src="${pageContext.request.contextPath}/assets/img/즐겨찾기%20별2.png">
								</div>
								<div class="swiper-slide">
									<img class="certify-img-size" src="${pageContext.request.contextPath}/assets/img/즐겨찾기%20별2.png">
								</div>
							</div>
							<div class="swiper-pagination"></div>
							<div class="swiper-button-prev"></div>
							<div class="swiper-button-next"></div>
						</div>
					</div>
					<div class="certify-list-info">
						<div>
							<div>
								<a class="report" href="#">신고</a>
							</div>
							<p class="upload-date">업로드일 : 2022-08-01</p>
							<p class="nickname">피자만두</p>
						</div>
					</div>
				</li>
			</ul>
			<div class="paging-box">
				<nav>
					<ul class="pagination pagination-sm">
						<li class="page-item"><a class="page-link" aria-label="Previous" href="#"><span aria-hidden="true">«</span></a></li>
						<li class="page-item"><a class="page-link" href="#">1</a></li>
						<li class="page-item"><a class="page-link" href="#">2</a></li>
						<li class="page-item"><a class="page-link" href="#">3</a></li>
						<li class="page-item"><a class="page-link" href="#">4</a></li>
						<li class="page-item"><a class="page-link" href="#">5</a></li>
						<li class="page-item"><a class="page-link" aria-label="Next" href="#"><span aria-hidden="true">»</span></a></li>
					</ul>
				</nav>
			</div>
		</div>
	</div>
</div>