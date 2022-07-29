<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../inc/header.jsp" %>


   
   <script src="resources/js/main.min.js"></script>
   
   <link href="resources/css/main.min.css" rel='stylesheet' />
   <link rel='stylesheet' href="resources/css/reservation.css?after" />
  
   

    <script>

        document.addEventListener('DOMContentLoaded', function() {
          var calendarEl = document.getElementById('calendar');
          var calendar = new FullCalendar.Calendar(calendarEl, {
            initialView: 'dayGridMonth'
          });
          calendar.render();
        });
  
      </script>
      
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
					<input type="submit" value="등록" class="btn btn-primary">
					<input type="reset" valus="초기화" class="btn btn-danger">
				</td>
			</tr>
		</form>
	</table>
</div>

        </div>
    </div>
    
    <%@ include file="../inc/footer.jsp" %>
