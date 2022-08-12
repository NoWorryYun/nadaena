<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/6.4.8/swiper-bundle.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/mainslider.css">

<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

</head>
<div class="lunchbox">

  <!-- slider main container -->
  <div id="swiper1" class="swiper-container"> 

      <!-- additional required wrapper -->
      <div class="swiper-wrapper">

          <!-- slides -->
          <div class="swiper-slide">
            <div class="product">
              <img class="photograph" src="https://unsplash.it/g/430/431?image=502" alt="">
              <div class="product__name">Lorem ipsum 1</div>
              <p class="product__description">lorem ipsum dol</p>
            </div>
          </div>

          <div class="swiper-slide">
            <div class="product">
              <img class="photograph" src="https://unsplash.it/g/430/431?image=401" alt="">
              <h2 class="product__name">Lorem ipsum 2</h2>
              <p class="product__description">lorem ipsum dol</p>
            </div>
         </div>

         <div class="swiper-slide">
           <div class="product">
             <img class="photograph" src="https://unsplash.it/g/430/431?image=201" alt="">
             <h2 class="product__name">Lorem ipsum 3</h2>
             <p class="product__description">lorem ipsum dol</p>
           </div>
        </div>

        <div class="swiper-slide">
          <div class="product">
            <img class="photograph" src="https://unsplash.it/g/430/431?image=504" alt="">
            <h2 class="product__name">Lorem ipsum 4</h2>
            <p class="product__description">lorem ipsum dol</p>
          </div>
        </div>

        <div class="swiper-slide">
          <div class="product">
            <img class="photograph" src="https://unsplash.it/g/430/431?image=404" alt="">
            <h2 class="product__name">Lorem ipsum 5</h2>
            <p class="product__description">lorem ipsum dol</p>
          </div>
        </div>

        <div class="swiper-slide">
          <div class="product">
            <img class="photograph" src="https://unsplash.it/g/430/431?image=406" alt="">
            <h2 class="product__name">Lorem ipsum 6</h2>
            <p class="product__description">lorem ipsum dol</p>
          </div>
        </div>

        <div class="swiper-slide">
          <div class="product">
            <img class="photograph" src="https://unsplash.it/g/430/431?image=407" alt="">
            <h2 class="product__name">Lorem ipsum 7</h2>
            <p class="product__description">lorem ipsum dol</p>
          </div>
        </div>

      </div>

      <!-- pagination -->
      <div class="swiper-pagination"></div>

  </div>

  <!-- navigation buttons -->
  <div id="js-prev1" class="swiper-button-prev"></div>
  <div id="js-next1" class="swiper-button-next"></div>
  
</div>


<div class="lunchbox">

  <!-- slider main container -->
  <div id="swiper1" class="swiper-container"> 

      <!-- additional required wrapper -->
      <div class="swiper-wrapper">

          <!-- slides -->
          <div class="swiper-slide">
            <div class="product">
              <img class="photograph" src="https://unsplash.it/g/430/431?image=502" alt="">
              <div class="product__name">Lorem ipsum 1</div>
              <p class="product__description">lorem ipsum dol</p>
            </div>
          </div>

          <div class="swiper-slide">
            <div class="product">
              <img class="photograph" src="https://unsplash.it/g/430/431?image=401" alt="">
              <h2 class="product__name">Lorem ipsum 2</h2>
              <p class="product__description">lorem ipsum dol</p>
            </div>
         </div>

         <div class="swiper-slide">
           <div class="product">
             <img class="photograph" src="https://unsplash.it/g/430/431?image=201" alt="">
             <h2 class="product__name">Lorem ipsum 3</h2>
             <p class="product__description">lorem ipsum dol</p>
           </div>
        </div>

        <div class="swiper-slide">
          <div class="product">
            <img class="photograph" src="https://unsplash.it/g/430/431?image=504" alt="">
            <h2 class="product__name">Lorem ipsum 4</h2>
            <p class="product__description">lorem ipsum dol</p>
          </div>
        </div>

        <div class="swiper-slide">
          <div class="product">
            <img class="photograph" src="https://unsplash.it/g/430/431?image=404" alt="">
            <h2 class="product__name">Lorem ipsum 5</h2>
            <p class="product__description">lorem ipsum dol</p>
          </div>
        </div>

        <div class="swiper-slide">
          <div class="product">
            <img class="photograph" src="https://unsplash.it/g/430/431?image=406" alt="">
            <h2 class="product__name">Lorem ipsum 6</h2>
            <p class="product__description">lorem ipsum dol</p>
          </div>
        </div>

        <div class="swiper-slide">
          <div class="product">
            <img class="photograph" src="https://unsplash.it/g/430/431?image=407" alt="">
            <h2 class="product__name">Lorem ipsum 7</h2>
            <p class="product__description">lorem ipsum dol</p>
          </div>
        </div>

      </div>

      <!-- pagination -->
      <div class="swiper-pagination"></div>

  </div>

  <!-- navigation buttons -->
  <div id="js-prev1" class="swiper-button-prev"></div>
  <div id="js-next1" class="swiper-button-next"></div>
  
</div>




<script>

    var swiper = new Swiper('.swiper-container', {

      initialSlide : -1,

      slidesPerView: 4,

      observer: true,

      observeParents: true,

      loop: true,

      pagination: {

        el: '.swiper-pagination',

        type: 'fraction',

      },

      navigation: {

        nextEl: '.swiper-button-next',

        prevEl: '.swiper-button-prev',

      },

    });

    </script>
</html>