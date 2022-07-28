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