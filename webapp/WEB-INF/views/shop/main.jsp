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
	
	<!-- js -->
	<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/jquery/jquery-1.12.4.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/assets/bootstrap/js/bootstrap.min.js"></script>
	
	
		<!-- css -->
	<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/shop/style.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/shop/popup.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/shop/shop.css">
	
	
	<!-- js -->
	<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/jquery/jquery-1.12.4.js"></script>
	<script src="${pageContext.request.contextPath }/assets/js/nav.js"></script>
	
</head>



<body>
<!-- header -->
<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
<!-- //header -->
		


<main>
	<div class="main-box">
		<h2>포인트몰</h2>
		<section id="contents_wrap1">
            <div class="contents_1">
                <ul class="living_sub">
                    <li><a href="">상품권</a></li>
                    <li><a href="">기프티콘</a></li>
                    <li><a href="">기타</a></li> 
                    <li><a href="mypage">MY</a></li>  
                </ul>

                <ul class="search_list">
                    <li class="active"><a href="">인기도순</a></li>
                    <li><a href="">낮은가격순</a></li>
                    <li><a href="">최신순</a></li>
                    <li><a href="">높은가격순</a></li>
                    <li><a href="">누적판매순</a></li>
                </ul>
            </div>
             
        </section>
        
        <section id="contents_wrap1">
            <div class="contents_2" class="clearfix">
                <div class="img-popup">
                    <div class="popup-inner">
                        <div class="left">
                            <img src="images/best_02.png" alt="">
                            
                            <p class="popup_btn"><a href=""> 제품상세보기<span> + </span></a></p>
                        </div>
                        
                        <div class="right">
                            <p class="b_name">제목제목</p>
                            <ul class="price_list">
                                <li>판매가격 <span>828,000원</span></li>
                                <li class="last_li">총상품금액 <span class="it_1">828,000원</span></li>
                            </ul>
                            <div class="option">
                                <p>옵션</p>
                                <select id="select">
                                    <option value="fixed">-- 옵션필수선택 --</option>
                                    <option value="a">A타입</option>
                                    <option value="b">B타입</option>
                                </select>
                            </div>

                            <div class="count">
                                <p>수량</p>
                                <form>
                                    <input type=text name=amount value=1>
                                    <input type=button value="+" onClick="javascript:this.form.amount.value++;">
                                    <input type=button value="-" onClick="javascript:this.form.amount.value--;">
                                </form>
                            </div>
                            
                                
                            

                            <ul class="btn_wrap">
                                <li class="bag_btn"><a href="bag.html"><i class="fas fa-shopping-bag"></i></a></li>
                                <li class="heart_btn"><a href=""><i class="fas fa-heart"></i></a></li>
                                <li class="pur_btn"><a href="">구매하기</a></li>
                            </ul>
                        </div>

                        <a href="" class="close-btn">
                            <i class="fas fa-times"></i>
                        </a>
                    </div>
                </div>
    
                <div class="box_1">
                    <div class="scale">
                        <a href="${pageContext.request.contextPath }/shop/product"data-num="1"><img src="https://cdn.reflowhq.com/media/79235812/815804108/eee22bfd4daaf8f4038a4a468f349a2c_md.jpg" alt=""></a>
                    </div>
                    <p class="b_name">컬처랜드 상품권 5만원권 온라인</p>
                    <p class="price">
                            <p class="sale">50,000원</p>
                            
                            <p class="close" data-img="${pageContext.request.contextPath }/assets/img/products/cl50.jpg">미리보기<span>▼</span></p>
                        <!-- 미리보기팝업 -->
                    </p>
                </div>
                <div class="box_1">
                    <div class="scale">
                        <a href=""data-num="2"><img src="https://cdn.reflowhq.com/media/79235812/905507921/3e205641d8b07dde19f7e88a544a5757_md.jpg" alt=""></a>
                    </div>
                    <p class="b_name">컬처랜드 상품권 3만원권 온라인</p>
                    <p class="price">
                            <p class="sale">30,000원</p>
                            
                            <p class="close" data-img="images/best_05.png">미리보기<span>▼</span></p>
                        <!-- 미리보기팝업 -->
                    </p>
                </div>
                <div class="box_2">
                    <div class="scale">
                        <a href=""data-num="3"><img src="images/kitchen_img1.png" alt=""></a>
                    </div>
                    <p class="b_name">준비중</p>
                    <p class="price">
                            <p class="sale">준비중</p>
                            
                            <p class="close" data-img="images/kitchen_img1.png">미리보기<span>▼</span></p>
                        <!-- 미리보기팝업 -->
                    </p>
                </div>
    
    
                <div class="box_1">
                    <div class="scale"><img src="" alt="">
                        <p class="img_t"></p>
                    </div>
                    <p class="b_name">준비중</p>
                    <p class="price">
                            <p class="sale">준비중</p>
                            
                            <p class="close" data-img="">미리보기<span>▼</span></p>
                        <!-- 미리보기팝업 -->
                    </p>
                </div>
                <div class="box_1">
                    <div class="scale"><img src="" alt="">
                        <p class="img_t"></p>
                    </div>
                    <p class="b_name">준비중</p>
                    <p class="price">
                            <p class="sale">준비중</p>
                            
                            <p class="close" data-img="">미리보기<span>▼</span></p>
                        <!-- 미리보기팝업 -->
                    </p>
                </div>
                <div class="box_2">
                    <div class="scale"><img src="" alt="">
                        <p class="img_t"></p>
                    </div>
                    <p class="b_name">준비중</p>
                    <p class="price">
                            <p class="sale">준비중</p>
                            
                            <p class="close" data-img="">미리보기<span>▼</span></p>
                        <!-- 미리보기팝업 -->
                    </p>
                </div>
    
    
                <div class="box_1">
                    <div class="scale"><img src="" alt="">
                        <p class="img_t"></p>
                    </div>
                    <p class="b_name">준비중</p>
                    <p class="price">
                            <p class="sale">준비중</p>
                            
                            <p class="close" data-img="">미리보기<span>▼</span></p>
                        <!-- 미리보기팝업 -->
                    </p>
                </div>
                <div class="box_1">
                    <div class="scale"><img src="" alt="">
                        <p class="img_t"></p>
                    </div>
                    <p class="b_name">준비중</p>
                    <p class="price">
                            <p class="sale">준비중</p>
                            
                            <p class="close" data-img="">미리보기<span>▼</span></p>
                        <!-- 미리보기팝업 -->
                    </p>
                </div>
                <div class="box_2">
                    <div class="scale"><img src="" alt="">
                        <p class="img_t"></p>
                    </div>
                    <p class="b_name">준비중</p>
                    <p class="price">
                            <p class="sale">준비중</p>
                            
                            <p class="close" data-img="">미리보기<span>▼</span></p>
                        <!-- 미리보기팝업 -->
                    </p>
                </div>
    
                <ul class="list_style">
                    <li><a href="">1</a></li>
                    <li><a href="">2</a></li>
                    <li><a href="">3</a></li>
                    <li><a href="">4</a></li>
                    <li><a href="">5</a></li>
                    <li><a href=""><i class="fas fa-angle-double-right"></i></a></li>
                </ul>
            </div>
    
        </section>
	</div>
</main>



<!-- footer -->
<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
<!-- //footer -->


</body>

</html>
