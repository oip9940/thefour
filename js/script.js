const navcolor = document.querySelector("header nav .navigation-bar ul li a");
$(document).ready(function(){
    $('#goRight').on('click', function(){
      $('#slideBox').animate({
        'marginLeft' : '0'
      });
      $('.topLayer').animate({
        'marginLeft' : '100%'
      });
    });
    $('#goLeft').on('click', function(){
      $('#slideBox').animate({
        'marginLeft' : '50%'
      });
      $('.topLayer').animate({
        'marginLeft': '0'
      });
    });
  });

  $(document).ready(() => {
    $(window).scroll(() => {
      var scroll = $(window).scrollTop();
      if (scroll > 400) {
        $("header nav").css("background", "rgba(0, 0, 0, 0.5)")

      } else {
        $("header nav").css("background", "")
      }
    });
  });

  // 페이지 스크롤
  $(function() { 
    $('a.page-scroll').bind('click', function(event) {
        var $anchor = $(this);
        $('html, body').stop().animate({
            scrollTop: $($anchor.attr('href')).offset().top
        }, 400, 'easeInOutExpo');
        event.preventDefault();
    });
  });
  
