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
                    
                    <c:forEach items="${pMap.pList}" var="PointVo" varStatus="i">
                        <tr>
                            <td class="column1">${i.count }</td>
                            <td class="column2">${PointVo.pointDate }</td>
                            <td class="column3">
                            	<c:choose>
                            		<c:when test="${PointVo.pointGroup == 1}"> 충전 </c:when>
                            		<c:when test="${PointVo.pointGroup == 2}"> 챌린지참가 </c:when>
                            		<c:when test="${PointVo.pointGroup == 3}"> 챌린지보상 </c:when>
                            		<c:when test="${PointVo.pointGroup == 4}"> 몰사용 </c:when>
                            		<c:when test="${PointVo.pointGroup == 5}"> 환불 </c:when>
									<c:otherwise> 오류 </c:otherwise>
                            	</c:choose>
                            </td>
                            <c:choose>
                            	<c:when test="${PointVo.pointGroup %2 == 1}">
                            		<td class="column4">${PointVo.charge}p</td>
                            		<td class="column5">-</td>
                            	</c:when>
                            	<c:otherwise>
                            		<td class="column4">-</td>
                            		<td class="column5">${PointVo.charge}p</td>
                            	</c:otherwise>	
                            </c:choose>
                            <td class="column6">${PointVo.amount }p</td>
                        </tr>
                       
                    </c:forEach> 
                    </tbody>
                </table>
                	
				<div id="afterComment-wrap">
					<div class="paging-box">
						<nav>
							<ul class="pagination pagination-sm">
								<c:if test="${pMap.prev}">
									<li class="page-item"><a class="page-link" aria-label="Previous" href="${pageContext.request.contextPath }/my/my-point?crtPage=${pMap.startPageBtnNo-1}"><span aria-hidden="true">«</span></a></li>
								</c:if>
								<c:forEach begin="${pMap.startPageBtnNo}" end="${pMap.endPageBtnNo}" step="1" var="page">	
									<c:choose>
										<c:when test="${param.crtPage==page}">
											<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath }/my/my-point?crtPage=${page}">${page}</a></li>
										</c:when>
										<c:otherwise>
											<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath }/my/my-point?crtPage=${page}">${page}</a></li>
										</c:otherwise>
									</c:choose>	
								</c:forEach>
								
								<c:if test="${pMap.next}">
									<li class="page-item"><a class="page-link" aria-label="Next" href="${pageContext.request.contextPath }/my/my-point?crtPage=${pMap.endPageBtnNo+1}"><span aria-hidden="true">»</span></a></li>
								</c:if>
							</ul>
						</nav>
					</div>
				</div> <!-- paging -->
                
                
			</div>
			
		</div>
		
	</div>
</main>



<!-- footer -->
<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
<!-- //footer -->



</body>
<script type="text/javascript">

console.log(gno);
























</script>






</html>