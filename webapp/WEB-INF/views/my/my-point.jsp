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
				<h3>마이 포인트</h3>
			
				
                <div class="mypoint">
                    <p class="mypoint2">나대나 포인트<span class="mypoint-number">0원</span></p>
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
                    <c:forEach items="${pList}" var="PointVo" varStatus="i">
                        <tr>
                            <td class="column1">${status.count}</td>
                            <td class="column2">${PointVo.pointDate}</td>
                            <td class="column3" data-gno="${PointVo.pointGroup}">${PointVo.pointGroup}</td>
                            <td class="column4">${PointVo.charge}</td>
                            <td class="column5">${PointVo.charge}</td>
                            <td class="column6">${PointVo.amount}</td>
                        </tr>
                    </c:forEach>    
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
<script type="text/javascript">

var gNo= $(this).data("gno");

console.log(gNo);

if(gNo == 1) {
	$(".column3").html("충전");
} else if(gNo ==2) {
	$(".column3").html("챌린지참가");
} else if(gNo ==3) {
	$(".column3").html("챌린지보상");
} else if(gNo ==4) {
	$(".column3").html("몰사용");
} else if(gNo ==5) {
	$(".column3").html("환전");
} else {
	$(".column3").html("오");
}













</script>










</html>