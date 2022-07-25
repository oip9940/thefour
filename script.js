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

  $(document).ready(function(){
    $(window).scroll(function(){
      var scroll = $(window).scrollTop();
      if (scroll > 400) {
        $("header nav").css("background", "rgba(0, 0, 0, 0.5)")

      }
      else{
        $("header nav").css("background", "")
      }
    })
  })