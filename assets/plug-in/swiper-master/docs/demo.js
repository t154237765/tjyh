jQuery(function($) {
  // #demo1
  $('#demo1').swiper();

  // #demo2
  $('#demo2').swiper({
    pagination: '#demo2 .swiper-pagination',
    paginationClickable: true
  });

  // #demo3
  $('#demo3').swiper({
    pagination: '#demo3 .swiper-pagination',
    paginationClickable: true,
    direction: 'vertical'
  });

  // #demo4
  $('#demo4').swiper({
    pagination: '#demo4 .swiper-pagination',
    paginationClickable: true,
    spaceBetween: 30
  });

  // #demo5
  $('#demo5').swiper({
    pagination: '#demo5 .swiper-pagination',
    slidesPerView: 3,
    paginationClickable: true,
    spaceBetween: 30
  });

  // #demo6
  $('#demo6').swiper({
    pagination: '#demo6 .swiper-pagination',
    slidesPerView: 'auto',
    paginationClickable: true,
    spaceBetween: 30
  });

  // #demo7
  $('#demo7').swiper({
    pagination: '#demo7 .swiper-pagination',
    slidesPerView: 4,
    centeredSlides: true,
    paginationClickable: true,
    spaceBetween: 30
  });

  // #demo8
  $('#demo8').swiper({
    pagination: '#demo8 .swiper-pagination',
    slidesPerView: 'auto',
    centeredSlides: true,
    paginationClickable: true,
    spaceBetween: 30
  });

  // #demo9
  $('#demo9').swiper({
    pagination: '#demo9 .swiper-pagination',
    slidesPerView: 3,
    paginationClickable: true,
    spaceBetween: 30,
    freeMode: true
  });

  // #demo10
  $('#demo10').swiper({
    pagination: '#demo10 .swiper-pagination',
    slidesPerView: 3,
    slidesPerColumn: 2,
    paginationClickable: true,
    spaceBetween: 30
  });

  // demo11
  var swiperH = new Swiper('.swiper-container-h', {
    pagination: '.swiper-pagination-h',
    paginationClickable: true,
    spaceBetween: 50
  });
  var swiperV = new Swiper('.swiper-container-v', {
    pagination: '.swiper-pagination-v',
    paginationClickable: true,
    direction: 'vertical',
    spaceBetween: 50
  });

  // #demo12
  $('#demo12').swiper({
    pagination: '#demo12 .swiper-pagination',
    slidesPerView: 4,
    centeredSlides: true,
    paginationClickable: true,
    spaceBetween: 30,
    grabCursor: true
  });

  // #demo13
  $('#demo13').swiper({
    scrollbar: '.swiper-scrollbar',
    scrollbarHide: true,
    slidesPerView: 'auto',
    centeredSlides: true,
    spaceBetween: 30,
    grabCursor: true
  });

  // #demo14
  $('#demo14').swiper({
    pagination: '#demo14 .swiper-pagination',
    paginationClickable: true,
    nextButton: '#demo14 .swiper-button-next',
    prevButton: '#demo14 .swiper-button-prev',
    spaceBetween: 30
  });

  // #demo15
  $('#demo15').swiper({
    pagination: '#demo15 .swiper-pagination',
    nextButton: '#demo15 .swiper-button-next',
    prevButton: '#demo15 .swiper-button-prev',
    slidesPerView: 1,
    paginationClickable: true,
    spaceBetween: 30,
    loop: true
  });

  // #demo16
  $('#demo16').swiper({
    pagination: '#demo16 .swiper-pagination',
    paginationClickable: true,
    nextButton: '#demo16 .swiper-button-next',
    prevButton: '#demo16 .swiper-button-prev',
    spaceBetween: 30,
    effect: 'fade'
  });

  // #demo17
  $('#demo17').swiper({
    pagination: '#demo17 .swiper-pagination',
    effect: 'cube',
    grabCursor: true,
    cube: {
      shadow: true,
      slideShadows: true,
      shadowOffset: 20,
      shadowScale: 0.94
    }
  });

  $('#demo18').swiper({
    pagination: '#demo18 .swiper-pagination',
    effect: 'coverflow',
    grabCursor: true,
    centeredSlides: true,
    slidesPerView: 'auto',
    coverflow: {
      rotate: 50,
      stretch: 0,
      depth: 100,
      modifier: 1,
      slideShadows: true
    }
  });

  $('#demo19').swiper({
    pagination: '#demo19 .swiper-pagination',
    slidesPerView: 1,
    paginationClickable: true,
    spaceBetween: 30,
    keyboardControl: true,
    nextButton: '#demo19 .swiper-button-next',
    prevButton: '#demo19 .swiper-button-prev'
  });

  $('#demo20').swiper({
    pagination: '#demo20 .swiper-pagination',
    direction: 'vertical',
    slidesPerView: 1,
    paginationClickable: true,
    spaceBetween: 30,
    mousewheelControl: true
  });

  $('#demo21').swiper({
    pagination: '#demo21 .swiper-pagination',
    nextButton: '#demo21 .swiper-button-next',
    prevButton: '#demo21 .swiper-button-prev',
    paginationClickable: true,
    spaceBetween: 30,
    centeredSlides: true,
    autoplay: 2500,
    autoplayDisableOnInteraction: false
  });

  // demo22
  var appendNumber = 4;
  var prependNumber = 1;
  var $demo22 = $('#demo22');
  $demo22.swiper({
    pagination: '#demo22 .swiper-pagination',
    nextButton: '#demo22 .swiper-button-next',
    prevButton: '#demo22 .swiper-button-prev',
    slidesPerView: 3,
    centeredSlides: true,
    paginationClickable: true,
    spaceBetween: 30
  });

  $('.prepend-slide').on('click', function(e) {
    e.preventDefault();
    $demo22.swiper('prependSlide', '<div class="swiper-slide">Slide ' + (--prependNumber) + '</div>');
  });
  $('.append-slide').on('click', function(e) {
    e.preventDefault();
    $demo22.swiper('appendSlide', '<div class="swiper-slide">Slide ' + (++appendNumber) + '</div>');
  });

  // demo23
  var galleryTop = new Swiper('.gallery-top', {
    nextButton: '.gallery-top .swiper-button-next',
    prevButton: '.gallery-top .swiper-button-prev',
    spaceBetween: 10
  });
  var galleryThumbs = new Swiper('.gallery-thumbs', {
    spaceBetween: 10,
    centeredSlides: true,
    slidesPerView: 'auto',
    touchRatio: 0.2,
    slideToClickedSlide: true
  });
  galleryTop.params.control = galleryThumbs;
  galleryThumbs.params.control = galleryTop;

  // demo24
  $('#demo24').swiper({
    pagination: '#demo24 .swiper-pagination',
    paginationClickable: true,
    nextButton: '#demo24 .swiper-button-next',
    prevButton: '#demo24 .swiper-button-prev',
    spaceBetween: 30,
    hashnav: true
  });

  // demo25
  $('#demo25').swiper({
    pagination: '#demo25 .swiper-pagination',
    paginationClickable: true,
    nextButton: '#demo25 .swiper-button-next',
    prevButton: '#demo25 .swiper-button-prev',
    parallax: true,
    speed: 600
  });

  // demo26
  $('#demo26').swiper({
    pagination: '#demo26 .swiper-pagination',
    paginationClickable: true,
    paginationBulletRender: function (index, className) {
      return '<span class="' + className + '">' + (index + 1) + '</span>';
    }
  });

  // demo27
  $('#demo27').swiper({
    nextButton: '#demo27 .swiper-button-next',
    prevButton: '#demo27 .swiper-button-prev',
    pagination: '#demo27 .swiper-pagination',
    paginationClickable: true,
    // Disable preloading of all images
    preloadImages: false,
    // Enable lazy loading
    lazyLoading: true
  });
});

