<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div id="read-board">
	<div>
		<div class="certify-board-header">
			<p class="certify-header">게시판</p>
		</div>
		<div>
			<div>
				<select>
					<optgroup label="카테고리">
						<option value="12" selected="">팁</option>
						<option value="13">응원</option>
						<option value="14">질문</option>
					</optgroup>
				</select>
				<div class="search-container search-board">
					<input class="search-input board-search-box" type="text" name="search-bar" placeholder="검색어를 입력하세요" />
					<button class="btn btn-light search-btn board-search-button" type="button">
						<i class="fa fa-search"></i>
					</button>
				</div>
				<div id="read-board-main">
					<div class="table-responsive font-14">
						<table class="table">
							<thead>
								<tr>
									<th class="board-category-size">카테고리</th>
									<th class="title-size">제목</th>
									<th class="writer-size">작성자</th>
									<th class="board-hit-size">조회수</th>
									<th class="board-upload-size">시간</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>팁</td>
									<td><a href="#">블로그 후기 작성시 꿀팁</a></td>
									<td>너무더워</td>
									<td>73</td>
									<td>2022-08-30</td>
								</tr>
								<tr>
									<td>팁</td>
									<td><a href="#">더 맛있게 먹는법</a></td>
									<td>정보쟁이</td>
									<td>23</td>
									<td>2022-08-28</td>
								</tr>
								<tr>
									<td>질문</td>
									<td><a href="#">이렇게 올리면 되는거 맞나요?</a></td>
									<td>인스타쟁이</td>
									<td>21</td>
									<td>2022-08-30</td>
								</tr>
								<tr>
									<td>응원</td>
									<td><a href="#">신제품 대박기원</a></td>
									<td>몽쉘마시따</td>
									<td>52</td>
									<td>2022-08-30</td>
								</tr>
							</tbody>
						</table>
						<div id="write-board-regist" class="text-right i-float">
							<input type="button" class="make-challenge certify" value="글쓰기">
						</div>
					</div>
				</div>
			</div>
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