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
		
			<!-- header -->
			<c:import url="/WEB-INF/views/includes/asideMyPage.jsp"></c:import>
			<!-- //header -->
		
			
			<div id="content" class="col-10">
				<h3>마이 포인트</h3>
			
				
                <div class="mypoint-header">
                    포인트 내역
                </div>
                <div class="mypoint">
                    <p class="mypoint2">*포인트 총잔액 : <span class="mypoint-number">46,500p</span></p>
                </div>
                
                <div class="mypoint-buttons">
	                <button class="mypoint-button1" type="button">충전하기</button>
	                <button class="mypoint-button2" type="button">환전하기</button>
	                <button class="mypoint-button3" type="button">쇼핑몰로 이동</button>
                </div>
                <div class="mypoint-header2">
                    상세사용내역
                </div>
                <table class="mypoint-table">
                    <thead class="mypoint-table-header">
                        <tr>
                            <th>No</th>
                            <th>일시</th>
                            <th>적립/사용내용</th>
                            <th>적립</th>
                            <th>사용</th>
                            <th rowspan="8">포인트 잔액</th>
                        </tr>
                    </thead>
                    <tbody class="mypoint-table-body">
                        <tr>
                            <td class="column1">7</td>
                            <td class="column2">2010/01/01</td>
                            <td class="column3">충전</td>
                            <td class="column4">10000p</td>
                            <td class="column5"></td>
                            <td class="column6">46500p</td>
                        </tr>
                        <tr>
                            <td class="column1">6</td>
                            <td class="column2">2010/01/01</td>
                            <td class="column3">포인트몰 사용</td>
                            <td class="column4"></td>
                            <td class="column5">30000p</td>
                            <td class="column6">36500p</td>
                        </tr>
                        <tr>
                            <td class="column1">5</td>
                            <td class="column2">2010/01/01</td>
                            <td class="column3">챌린지 참가</td>
                            <td class="column4"></td>
                            <td class="column5">50000p</td>
                            <td class="column6">66500p</td>
                        </tr>
                        <tr>
                            <td class="column1">4</td>
                            <td class="column2">2010/01/01</td>
                            <td class="column3">리워드 획득</td>
                            <td class="column4">11500p</td>
                            <td class="column5"></td>
                            <td class="column6">116500p</td>
                        </tr>
                        <tr>
                            <td class="column1">3</td>
                            <td class="column2">2010/01/01</td>
                            <td class="column3">충전</td>
                            <td class="column4">30000p</td>
                            <td class="column5"></td>
                            <td class="column6">105000p</td>
                        </tr>
                        <tr>
                            <td class="column1">2</td>
                            <td class="column2">2010/01/01</td>
                            <td class="column3">포인트몰 사용</td>
                            <td class="column4"></td>
                            <td class="column5">5000p</td>
                            <td class="column6">75000p</td>
                        </tr>
                        <tr>
                            <td class="column1">1</td>
                            <td class="column2">2010/01/01</td>
                            <td class="column3">챌린지 참가</td>
                            <td class="column4"></td>
                            <td class="column5">20000p</td>
                            <td class="column6">80000p</td>
                        </tr>
                    </tbody>
                </table>
                
                <div class="paging">
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