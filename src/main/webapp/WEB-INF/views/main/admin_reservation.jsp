<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../inc/admin_header.jsp" %>
<head>
<script src="resources/js/main.min.js"></script>
<link href="resources/css/main.min.css" rel='stylesheet' />
<link rel='stylesheet' href="resources/css/admin_reservation.css?after" />

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js?ver=1"></script>
<!-- 헤더랑 결합시 admin_header 서랍 글자 줄어드는 현상 발생 아래 두 코드-------------------------------------------------->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css?ver=1"/>
<!------------------------------------------------------------------------------------------------------->
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
<main>
		<div class="card" align="center" style="margin:10px" >
		<div class="height-div">
			<div id='calendar'></div>
	  		<div id='input'>
			<h3>예약 일정</h3>
			<table class="table table-borderless">
				<form action = "#" method="post">
					<tr>
						<td>이름</td>
						<td>
							<input class="form-control" type="text" name="bName"/>
						</td>
					</tr>
		            <tr>
						<td>비밀번호</td>
						<td>
							<input class="form-control" type="text" name="bName"/>
						</td>
					</tr>
					<tr>
						<td>연락처</td>
						<td>
							<input class="form-control" type="text" name="bTitle"/>
						</td>
					</tr>
		            <tr>
						<td>예약일자</td>
						<td>
							<input class="form-control" type="text" name="bName"/>
						</td>
					</tr>
		            <tr>
						<td>예약시간</td>
						<td>
							<input class="form-control" type="text" name="bName"/>
						</td>
					</tr>
					<tr>
						<td>요청사항</td>
						<td>
							<textarea class="form-control" name="bContent"></textarea>
						</td>
					</tr>
					<tr> 
						<td colspan="2" align="center">
							<input type="submit" value="예약취수" class="btn grey">
							<input type="reset" valus="초기화" class="btn btn-danger">
						</td>
					</tr>
				</form>
			</table>
			</div>
			
		</div>
	</div>
</main>
</body>
</html>
