<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 

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
	<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/my/my.css">
	
	<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/my/point.css">
	
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
				<h3 class="mychallenge">마이 포인트</h3>
			
				
                <div class="mypoint">
                    <p class="mypoint2">나대나 포인트<span class="mypoint-number">${pMap.sum}P</span></p>
                    <div class="mypoint-buttons">
		               	<button id="btnChargeModal" class="mypoint-button1" type="button">충전하기</button>
		                <button id="btnExChangeModal" class="mypoint-button2" type="button">환전하기</button>
		                <button class="mypoint-button3" type="button">포인트몰</button>
                	</div>
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
                        </tr>
                    </thead>
                    <tbody class="mypoint-table-body">
                    
                    <c:set var="total" value="0" />
                    <c:set var="length" value="${fn:length(pMap.pList)}" />
                    
                    <c:forEach items="${pMap.pList}" var="ReviewVo" varStatus="i">
                    	
                        <tr>
                            <td class="column1">${pMap.totalpCnt - (pMap.crtPage-1) * 7 - i.index}</td>
                            <td class="column2">${ReviewVo.pointDate }</td>
                            <td class="column3">
                            	<c:choose>
                            		<c:when test="${ReviewVo.pointGroup == 1}"> 충전 </c:when>
                            		<c:when test="${ReviewVo.pointGroup == 2}"> 챌린지참가 </c:when>
                            		<c:when test="${ReviewVo.pointGroup == 3}"> 챌린지보상 </c:when>
                            		<c:when test="${ReviewVo.pointGroup == 4}"> 몰사용 </c:when>
                            		<c:when test="${ReviewVo.pointGroup == 5}"> 환전 </c:when>
									<c:otherwise> 오류 </c:otherwise>
                            	</c:choose>
                            </td>
                            <c:if test="${ReviewVo.amount >= 0}">
                            	<td class="column4">${ReviewVo.amount}p</td>
                            	<td class="column5">-</td>
                            </c:if>
                            
                             <c:if test="${ReviewVo.amount < 0}">
                            	<td class="column4">-</td>
                            	<td class="column5">${ReviewVo.amount}p</td>
                            </c:if>
                           
                        </tr>
                    </c:forEach> 
                    
					<c:set var="length" value="${fn:length(pMap.pList)}" />
					
					<c:forEach begin="1" end="${7-length}" step="1">
                        <tr>
                            <td class="column1">-</td>
                            <td class="column2"></td>
                            <td class="column3"></td>
                       		<td class="column4"></td>
                       		<td class="column5"></td>
                            <td class="column6"></td>
                        </tr>						
					</c:forEach>                    
                    </tbody>
                </table>
                	
				<div id="afterComment-wrap">
					<div class="paging-box">
						<nav>
							<ul class="pagination pagination-sm">
								<c:if test="${pMap.prev}">
									<li class="page-item"><a class="page-link" aria-label="Previous" href="${pageContext.request.contextPath }/my/point?crtPage=${pMap.startPageBtnNo-1}"><span aria-hidden="true">«</span></a></li>
								</c:if>
								<c:forEach begin="${pMap.startPageBtnNo}" end="${pMap.endPageBtnNo}" step="1" var="page">	
									<c:choose>
										<c:when test="${param.crtPage==page}">
											<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath }/my/point?crtPage=${page}">${page}</a></li>
										</c:when>
										<c:otherwise>
											<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath }/my/point?crtPage=${page}">${page}</a></li>
										</c:otherwise>
									</c:choose>	
								</c:forEach>
								
								<c:if test="${pMap.next}">
									<li class="page-item"><a class="page-link" aria-label="Next" href="${pageContext.request.contextPath }/my/point?crtPage=${pMap.endPageBtnNo+1}"><span aria-hidden="true">»</span></a></li>
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





<!-- /////////////////////////////////////////////////////////////////////////////////// -->
<!--충전하기 모달-->
<!-- Modal -->
<div class="modal fade" id="modalCharge" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			
				<div class="modal-header">
					<h5 class="modal-title" id="">충전하기</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<!-- //modal-header -->
				
				<div class="modal-body">
				
					<p class="txt1">
						${sessionScope.authUser.nickName}님 포인트 <span class="point">${pMap.sum}</span>P
					</p>
				
					<p class="txt2">충전 금액을 입력해 주세요</p>
					
					
					<input type="text" id="txt-charge-price" class="form-control" placeholder="" name="" value=""> 원
					<p class="txt3">최소 충전 가능 금액은 1만원 입니다.</p>
					
				      
				</div>
				<!-- //modal-body -->
				
				
				<div class="modal-footer">
					<div class="d-grid gap-2 col-6 mx-auto">
						<button id="btn-modalCharge" type="button" class="btn btn-modal-main">충전하기</button>
					</div>
			    </div>
			    <!-- //modal-footer -->
		    
		</div>
	</div>
</div>

<!--결제모듈 흉내-->
<!-- Modal -->
<div class="modal fade" id="modalPGImg" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg">
		<div class="modal-content ">
			<form id="form-charge" action="${pageContext.request.contextPath }/my/chargePoint" method="get">
				
				<div class="modal-body">
					
					<img src="${pageContext.request.contextPath }/assets/img/pay.png">
					
				      
				</div>
				<!-- //modal-body -->
				
				
				<div class="modal-footer">
					<input type="text" id="txt-charge" class="form-control" placeholder="" name="charge" value="">
					<div class="d-grid gap-2 col-6 mx-auto">
						<button id="btn-modalPGImg" type="submit" class="btn btn-modal-main">충전하기</button>
					</div>
			    </div>
			    <!-- //modal-footer -->
		    </form>
		</div>
	</div>
</div>

<!--///////////////////////////////////////////////////////////////////////////////////-->


<!--///////////////////////////////////////////////////////////////////////////////////-->
<!--환전하기 모달-->
<!-- Modal -->
<div class="modal fade" id="modalExchange" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content ">
			
				<div class="modal-header">
					<h5 class="modal-title" id="">환전하기</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<!-- //modal-header -->
				
				<form id="form-exchange" action="${pageContext.request.contextPath }/my/exchange" method="get">
					<div class="modal-body">
					
						<p class="txt1">
							${sessionScope.authUser.nickName}님 포인트 <span class="point">${pMap.sum}</span>P
						</p>
					
						<p class="txt2">환전 받을 금액을 입력해 주세요</p>
						
						
						<input type="text" id="txt-exchange-amount" class="form-control" placeholder="" name="amount" value=""> P 
						= 
						<input type="text" id="txt-exchange-charge" class="form-control" placeholder="" name="" value="" readonly> 원
						
					    
					    <div class="bankInfoBox">
					    	<p>본인명의의 계좌만 환전 가능합니다.</p>
					    	
					    	<div class="fgroup">
					    		<label>이름</label>
					    		<input type="text" id="txt-exchange-name" class="form-control" placeholder="" value="">
					    	</div>
					    	
					    	<div class="fgroup">
					    		<label>은행</label>
					    		<select class="form-control" name="bank" id="sel-exchange-bank">
								    <option value="" selected="selected">은행을 선택해 주세요</option>
								    <option value="KB국민은행">KB국민은행</option>
								    <option value="신한은행">신한은행</option>
								    <option value="우리은행">우리은행</option>
								    <option value="하나은행">하나은행</option>
								    <option value="케이뱅크">케이뱅크</option>
								    <option value="카카오뱅크">카카오뱅크</option>
								    <option value="토스뱅크">토스뱅크</option>
								    <option value="한국산업은행">한국산업은행</option>
								    <option value="중소기업은행">중소기업은행</option>
								    <option value="한국수출입은행">한국수출입은행</option>
								    <option value="NH농협은행">NH농협은행</option>
								    <option value="수협은행">수협은행</option>
								</select>
					    	</div>
					    	
					    	<div class="fgroup">
					    		<label>계좌번호</label>
					    		<input type="text" id="txt-exchange-account" class="form-control" placeholder="" value="">
					    	</div>
					    	
					    </div>
					      
					</div>
					<!-- //modal-body -->
				
				
					<div class="modal-footer">
						<div class="d-grid gap-2 col-6 mx-auto">
							<button id="btn-modalCharge" type="submit" class="btn btn-modal-main">환전하기</button>
						</div>
				    </div>
			    	<!-- //modal-footer -->
			    	
			    </form>
			    
		</div>
	</div>
</div>


<!--///////////////////////////////////////////////////////////////////////////////////-->












</body>
<script type="text/javascript">
$(function(){
   if("${authUser}" == ""){
      alert("로그인 후 이용할 수 있습니다.");
      location.href = "${pageContext.request.contextPath }/loginForm";
   }
});

//충전 모달창 띄우기
$("#btnChargeModal").on("click", function(){
	
	//초기화
	$("#txt-charge-price").val("");
	
	$("#modalCharge").modal("show");
	
});


//환전 모달창 띄우기
$("#btnExChangeModal").on("click", function(){
	
	//초기화
	$("#txt-exchange-amount").val("");
	$("#txt-exchange-charge").val("");
	$("#txt-exchange-name").val("");
	$("#sel-exchange-bank").val(""); 
	$("#txt-exchange-account").val("");

	
	$("#modalExchange").modal("show");
	
});


//충전 금액창 숫자만 입력
$("#txt-charge-price").on("propertychange change keyup paste input", function(){
	$(this).val($(this).val().replace(/[^0-9]/g,""));
});

//충전 모달창 충전 버튼을 눌렀을때 
$("#btn-modalCharge").on("click", function(){
	
	var havePoint = "${pMap.sum}";
	var minMoney = 10000;
	
	var inputMoney = $("#txt-charge-price").val();
	
	//최소금액 체크
	if(minMoney > inputMoney){
		alert("충전 금액을 확인해 주세요");
	}else {
		$("#modalCharge").modal("hide");
		$("#modalPGImg").modal("show");
	}
	
	//충전금액(원) PG모달창으로 전달
	$("#txt-charge").val( $("#txt-charge-price").val() );
	
});


//환전 포인트를 입력할때 금액출력 
$("#txt-exchange-amount").on("propertychange change keyup paste input", function(){
	$(this).val($(this).val().replace(/[^0-9]/g,""));
	
	var havePoint = "${pMap.sum}";
	var point = $("#txt-exchange-amount").val();
	$("#txt-exchange-charge").val(point);
	
});


//환전 하기 버튼을 클릭했을때 submit
$("#form-exchange").on("submit", function(){
	
	//포인트 체크
	var havePoint = "${pMap.sum}";
	var point = $("#txt-exchange-amount").val();
	
	if(point == null || point == '' || point == 0){
		alert("포인트를 입력해 주세요");
		return false
	}
	
	if(havePoint<point){
		alert("포인트가 부족합니다.");
		return false
	}
	
	//이름체크
	var name = $("#txt-exchange-name").val()
	if(name == null || name == ''){
		alert("이름을 입력해 주세요");
		return false
	}
	
	//은행 체크
	var bank = $("#sel-exchange-bank").val()
	if(bank == null || bank == ''){
		alert("은행을 선택해 주세요");
		return false
	}
	
	
	//계좌번호 체크
	var account = $("#txt-exchange-account").val()
	if(account == null || account == ''){
		alert("계좌번호를 입력해 주세요");
		return false
	}
	
	
	return true
	
});






</script>






</html>