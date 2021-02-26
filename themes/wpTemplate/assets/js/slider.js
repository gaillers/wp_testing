let $status = $('.page-number');
let $slickElement = $('.slide-wrapper');

$slickElement.on('init reInit afterChange', function (event, slick, currentSlide, nextSlide) {
   let i = (currentSlide ? currentSlide : 0) + 1;
   $status.html(`${i} <span> /${slick.slideCount} </span>`)

});

$('.slide-wrapper').slick({
  infinite: false,
  draggable: false,
  dots: false,

  arrows: true,
  centerMode: true,

  slidesToShow: 3,
  slidesToScroll: 1,

  prevArrow: $('.arrow-prev'),
  nextArrow: $('.arrow-next'),
  
});

