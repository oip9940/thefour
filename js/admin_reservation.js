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

  select: function(arg) { // 캘린더에서이벤트를 생성
    let title = prompt('일정 내용을 입력하세요 :');
    if (title) {
        calendar.addEvent({
            title: title,
            start: arg.start,
            end: arg.end,
            allDay: arg.allDay
        })
    }