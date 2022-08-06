<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>검색결과</title>
   <!-- <link rel="stylesheet" href="https://cdn.reflowhq.com/v1/toolkit.min.css"> -->
    <!-- <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Inter:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800&amp;display=swap"> -->
    
	<!-- css -->
	<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/fonts/font-awesome.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/common.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/event.css">
	
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
		<h2>이벤트</h2>
			<div class="container py-5">
				<div class="row mx-auto" style="/*max-width: 700px;*/">
					<div class="col">
						<div data-reflow-type="product-list" data-reflow-layout="cards" data-reflow-order="date_desc" data-reflow-product-link="/product.html?product={id}">
							<div class="reflow-product-list cards">
								<div class="products">
									<a class="product" href=""><img class="image" src="https://cdn.reflowhq.com/media/79235812/875395246/df1ba13726c8ca77d0dd8b24c74ada07_md.jpg" loading="lazy" />
								        <div class="product-data">
								            <div class="product-info">
								                <h5 class="name">해피머니 상품권 2만원권 온라인</h5>
								                <p class="excerpt">해피머니 PIN 2만원권</p>
								            </div>
								        </div>
								    </a>
								    <a class="product" href=""><img class="image" src="https://cdn.reflowhq.com/media/79235812/869438809/fe8e9c4d772bdd2701d17a50f0dd26df_md.jpg" loading="lazy" />
								        <div class="product-data">
								            <div class="product-info">
								                <h5 class="name">해피머니 상품권 1만원권 온라인</h5>
								                <p class="excerpt">해피머니 PIN 1만원권</p>
								            </div>
								        </div>
								    </a>
								    <a class="product" href=""><img class="image" src="https://cdn.reflowhq.com/media/79235812/1056690164/45dffd0638ad7fb89acc20bf2f2a24a5_md.jpg" loading="lazy" />
								        <div class="product-data">
								            <div class="product-info">
								                <h5 class="name">구글플레이 상품권 5만원권 온라인</h5>
								                <p class="excerpt">구글플레이 PIN 5만원권</p>
								            </div>
								        </div>
								    </a>
								    <a class="product" href=""><img class="image" src="https://cdn.reflowhq.com/media/79235812/1034119271/f5cbf59d6c7e845e72cd4a25a7730f1f_md.jpg" loading="lazy" />
								        <div class="product-data">
								            <div class="product-info">
								                <h5 class="name">구글플레이 상품권 3만원권 온라인</h5>
								                <p class="excerpt">구글플레이 PIN 3만원권</p>
								            </div>
								        </div>
								    </a>
								    <a class="product" href=""><img class="image" src="https://cdn.reflowhq.com/media/79235812/961053202/a99609b85fea8966e6247de62271c0f6_md.jpg" loading="lazy" />
								        <div class="product-data">
								            <div class="product-info">
								                <h5 class="name">구글플레이 상품권 1만원권 온라인</h5>
								                <p class="excerpt">구글플레이 PIN 1만원권</p>
								            </div>
								        </div>
								    </a>
								    <a class="product" href=""><img class="image" src="https://cdn.reflowhq.com/media/79235812/1261052171/eee22bfd4daaf8f4038a4a468f349a2c_md.jpg" loading="lazy" />
								        <div class="product-data">
								            <div class="product-info">
								                <h5 class="name">컬쳐랜드 상품권 5천원권 온라인</h5>
								                <p class="excerpt">컬쳐랜드 PIN 5천원권</p>
								            </div>
								        </div>
								    </a>
								    <a class="product" href=""><img class="image" src="https://cdn.reflowhq.com/media/79235812/919821222/dd843a7f68b313bfcad5033bbe402179_md.jpg" loading="lazy" />
								        <div class="product-data">
								            <div class="product-info">
								                <h5 class="name">컬쳐랜드 상품권 1만원권 온라인</h5>
								                <p class="excerpt">컬쳐랜드 PIN 1만원권</p>
								            </div>
								        </div>
								    </a>
								    <a class="product" href=""><img class="image" src="https://cdn.reflowhq.com/media/79235812/905507921/3e205641d8b07dde19f7e88a544a5757_md.jpg" loading="lazy" />
								        <div class="product-data">
								            <div class="product-info">
								                <h5 class="name">컬쳐랜드 상품권 3만원권 온라인</h5>
								                <p class="excerpt">컬쳐랜드 PIN 3만원권</p>
								            </div>
								        </div>
								    </a>
								    <a class="product" href=""><img class="image" src="https://cdn.reflowhq.com/media/79235812/815804108/eee22bfd4daaf8f4038a4a468f349a2c_md.jpg" loading="lazy" />
								        <div class="product-data">
								            <div class="product-info">
								                <h5 class="name">컬쳐랜드 상품권 5만원권 온라인</h5>
								                <p class="excerpt">컬쳐랜드 PIN 5만원권</p>
								            </div>
								        </div>
								    </a>
							    </div>
							</div>
						</div>
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