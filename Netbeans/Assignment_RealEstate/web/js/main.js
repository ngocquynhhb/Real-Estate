// Scrollspy
var spy = new Gumshoe('nav a');
// Burger
    $('.burger').on('click', function (event) {
        $('.navigation-bar').slideToggle('200');
        $('.toggle-open').toggleClass('open');
        $('.toggle-close').toggleClass('close');
    })

// Sticky navbar
$(document).ready(function(){
	$(window).bind('scroll', function() {
		var navHeight = $('header').height();
		if ($(window).scrollTop() > navHeight) {
			$('header').addClass('fixed');
		 }
		else {
			$('header').removeClass('fixed');
		 }
	});
});
// Scroll to TOP
var btn = $('.scrollup');
$(window).scroll(function() {
  if ($(window).scrollTop() > 500) {
    btn.addClass('show');
  } else {
    btn.removeClass('show');
  }
});
btn.on('click', function(e) {
  e.preventDefault();
  $('html, body').animate({scrollTop:0}, '500');
});
    // Reveal animation
    const sr = ScrollReveal({
        origin: 'top',
        distance: '20px',
        duration: 1500,
        reset: true
    });
    ScrollReveal().reveal('.col, .vechungtoi-img, .img-col', { origin: 'left' });
    ScrollReveal().reveal('.vechungtoi-content, .trangchu-image', { origin: 'right' });
    ScrollReveal().reveal('.duan-item, .brand-wrapper, .tintuc-wrapper', { interval: 100 });
   
//tin tức
var $activeSlide = $(".active"),
    $homeSlide = $(".slide"),
    $slideNavPrev = $("#prev"),
    $slideNavNext = $("#next");


function init(){
  TweenMax.set($homeSlide.not($activeSlide), {autoAlpha: 0});
  TweenMax.set($slideNavPrev, {autoAlpha: 0.2});
}

init();

function goToNextSlide(slideOut, slideIn, slideInAll){
  var tl = new TimelineLite(),
    slideOutContent = slideOut.find('.card-content'),
    slideInContent = slideIn.find('.card-content'),
    slideOutImg = slideOut.find('.card-img'),
    slideInImg = slideIn.find('.card-img'),
    index = slideIn.index(),
    size = $homeSlide.length;
  console.log(index);  
  
  if(slideIn.length !== 0){
 
    tl
      .set(slideIn, {autoAlpha: 1, className: '+=active'})
      .set(slideOut, {className: '-=active'})
      .to(slideOutContent, 0.65, {y: '+=40px', ease:Power3.easeInOut}, 0)
      .to(slideOutImg, 0.65, {backgroundPosition: 'bottom', ease:Power3.easeInOut}, 0)
      .to(slideInAll, 1, {y: '-=100%', ease:Power3.easeInOut}, 0)
      .fromTo(slideInContent, 0.65, {y: '-=40px'}, {y: 0, ease:Power3.easeInOut}, "-=0.7")
      .fromTo(slideInImg, 0.65, {backgroundPosition: 'top'}, {backgroundPosition: 'bottom', ease:Power3.easeInOut}, "-=0.7")
    }
 
    TweenMax.set($slideNavPrev, {autoAlpha: 1});
 
    if(index === size - 1){
      TweenMax.to($slideNavNext, 0.3, {autoAlpha: 0.2, ease:Linear.easeNone});
    }
};
 
$slideNavNext.click(function (e) {
  e.preventDefault();
  
  var slideOut = $('.slide.active'),
       slideIn = $('.slide.active').next('.slide'),
       slideInAll = $('.slide');

  goToNextSlide(slideOut, slideIn, slideInAll);
});

function goToPreviousSlide(slideOut, slideIn, slideInAll){
  var tl = new TimelineLite(),
    slideOutContent = slideOut.find('.card-content'),
    slideInContent = slideIn.find('.card-content'),
    slideOutImg = slideOut.find('.card-img'),
    slideInImg = slideIn.find('.card-img'),
    index = slideIn.index(),
    size = $homeSlide.length;
  
  if(slideIn.length !== 0){
 
    tl
      .set(slideIn, {autoAlpha: 1, className: '+=active'})
      .set(slideOut, {className: '-=active'})
      .to(slideOutContent, 0.65, {y: '-=40px', ease:Power3.easeInOut}, 0)
      .to(slideOutImg, 0.65, {backgroundPosition: 'top', ease:Power3.easeInOut}, 0)
      .to(slideInAll, 1, {y: '+=100%', ease:Power3.easeInOut}, 0)
      .fromTo(slideInContent, 0.65, {y: '+=40px'}, {y: 0, ease:Power3.easeInOut}, "-=0.7")
      .fromTo(slideInImg, 0.65, {backgroundPosition: 'bottom'}, {backgroundPosition: 'top', ease:Power3.easeInOut}, "-=0.7")
    }
 
    TweenMax.set($slideNavNext, {autoAlpha: 1});
 
    if(index === 0){
      TweenMax.to($slideNavPrev, 0.3, {autoAlpha: 0.2, ease:Linear.easeNone});
    }
};

$slideNavPrev.click(function (e) {
  e.preventDefault();
  
  var slideOut = $('.slide.active'),
       slideIn = $('.slide.active').prev('.slide'),
       slideInAll = $('.slide');

  goToPreviousSlide(slideOut, slideIn, slideInAll);
});


