<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/admin_header.jsp" %>
<head>
<link rel="stylesheet" href="resources/css/admin_reservation_list.css?after">
<link rel='stylesheet' href='https://fonts.googleapis.com/css2?family=Jua&display=swap'>
<script src="resources/js/main.min.js"></script>
<link href="resources/css/main.min.css" rel='stylesheet' />
</head>
<script>

        document.addEventListener('DOMContentLoaded', function() {
          var calendarEl = document.getElementById('calendar');
          var calendar = new FullCalendar.Calendar(calendarEl, {
            initialView: 'dayGridMonth'
          });
          calendar.render();
        });
  
</script>
<div class="aside-main-box">
  <div class="aside-box"></div>
<main>
<div class="calender-box">
	<div id='calendar'></div>
</div>
	<div class="board-box">	
		<div class="col s6">
			<div  class="card">
				<div class="row" >
					<div class="left card-title">
						<table class="fixed_headers">
							<thead>
								<tr>
									<th>예약번호</th>
									<th>아이디</th>
									<th>예약일</th>
									<th>예약처리현황</th>
									<th>예약테이블</th>
									<th>예약상태</th>
									<th>예약삭제</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>1</td>
									<td>ymcho</td>
									<td>2022-08-03</td>
									<td>예약</td>
									<td>A</td>
									<td>예약완료</td>
									<td>삭제</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</main>
</div>
</body>
</html>
