<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./inc/admin_header.jsp" %>

  <main>
    <div style="margin: 10px;">
      <div class="col s6">
        <div  class="card" align="center">
          <div class="row" style="padding: 35px;" >
            <div class="left card-title">
              <b>월별 방문자 수</b>
            </div>
          </div>

          <div class="row">
            <div style="width: 100%;">
             <div id="curve_chart"></div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div  style="margin: 10px;">
      <div class="col s6">
        <div style="padding: 35px;" align="center" class="card">
          <div class="row">
            <div class="left card-title">
              <b>시간별 예약자 </b>
            </div>
          </div>
          <div class="row">
            <div id="barchart_values" ></div>
          </div>
        </div>
      </div>
    </div>

    <div class="row" style="margin : 2px">
      <div class="col s6">
        <div style="padding: 35px;" align="center" class="card">
          <div class="row">
            <div class="left card-title">
              <b>Client List</b>
            </div>
          </div>

          <div class="row">

            <a href="${ctx}/admemberlist.do">

              <div style="padding: 30px;" class="grey lighten-3 col s5 waves-effect">
                <i class="fa fa-user"></i>
                <span class="indigo-text text-lighten-1"><h5>회원 정보</h5></span>
              </div>
            </a>
            <div class="col s1">&nbsp;</div>
            <div class="col s1">&nbsp;</div>


			 
            <a href="${ctx}/admemberinfo.do">

              <div style="padding: 30px;" class="grey lighten-3 col s5 waves-effect">
                <i class="fa fa-users"></i>
                <span class="indigo-text text-lighten-1"><h5>회원 정보 수정</h5></span>
              </div>
            </a>
          </div>
        </div>
      </div>

      <div class="col s6">
        <div style="padding: 35px;" align="center" class="card">
          <div class="row">
            <div class="left card-title">
              <b>Reservation</b>
            </div>
          </div>
          <div class="row">
            <a href="${ctx}/adreservation.do">
              <div style="padding: 30px;" class="grey lighten-3 col s5 waves-effect">
                <i class="fa fa-calendar"></i>
                <span class="indigo-text text-lighten-1"><h5>예약 일정 등록</h5></span>
              </div>
            </a>

            <div class="col s1">&nbsp;</div>
            <div class="col s1">&nbsp;</div>

            <a href="${ctx}/adreservationlist.do">
              <div style="padding: 30px;" class="grey lighten-3 col s5 waves-effect">
                <i class="fa fa-calendar-check-o"></i>
                <span class="indigo-text text-lighten-1"><h5>예약자 확인</h5></span>
              </div>
            </a>
          </div>
        </div>
      </div>
    </div>

    <div class="row" style="margin : 2px">
      <div class="col s6">
        <div style="padding: 35px;" align="center" class="card">
          <div class="row">
            <div class="left card-title">
              <b>Food Register</b>
            </div>
          </div>

          <div class="row">

            <a href="${ctx}/admenuupload.do">
              <div style="padding: 30px;" class="grey lighten-3 col s5 waves-effect">
                <i class="fa fa-cutlery"></i>
                <span class="indigo-text text-lighten-1"><h5>신규 메뉴 등록</h5></span>
              </div>
            </a>

            <div class="col s1">&nbsp;</div>
            <div class="col s1">&nbsp;</div>

            <a href="${ctx}/admenulist.do">

              <div style="padding: 30px;" class="grey lighten-3 col s5 waves-effect">
                <i class="fa fa-coffee"></i>
                <span class="indigo-text text-lighten-1"><h5>메뉴리스트</h5></span>
              </div>
            </a>
          </div>
        </div>
      </div>

      <div class="col s6">
        <div style="padding: 35px;" align="center" class="card">
          <div class="row">
            <div class="left card-title">
              <b>Notice</b>
            </div>
          </div>
          <div class="row">

            <a href="adnoticelist.do">

              <div style="padding: 30px;" class="grey lighten-3 col s5 waves-effect">
                <i class="fa fa-bullhorn"></i>
                <span class="indigo-text text-lighten-1"><h5>공지사항 등록</h5></span>
              </div>
            </a>
            <div class="col s1">&nbsp;</div>
            <div class="col s1">&nbsp;</div>


            <a href="adqnalist.do">

              <div style="padding: 30px;" class="grey lighten-3 col s5 waves-effect">
                <!-- <i class="indigo-text text-lighten-1 large material-icons">view_list</i> -->
                <i class="fa fa-comments-o"></i>
                <span class="truncate indigo-text text-lighten-1"><h5>질문게시판 답변</h5></span>
              </div>
            </a>
          </div>
        </div>
      </div>
    </div>
  </main>
</body>

</html>

<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Year', 'Jul', 'Aug'],
          ['01',  700,      400],
          ['02',  800,      600],
          ['03',  660,       740],
          ['04',  700,      800],
          ['05',  800,      600],
          ['06',  900,      500],
          ['07',  800,       807],
          ['08',  875,      860],
          ['09',  420,      780],
          ['10',  800,      500],
          ['11',  600,       400],
          ['12',  700,      540]
        ]);

        var options = {
          curveType: 'function',
          legend: { position: 'bottom' }
        };

        var chart = new google.visualization.LineChart(document.getElementById('curve_chart'));

        chart.draw(data, options);
           

      }
    </script>
    <script type="text/javascript">
      google.charts.load("current", {packages:["corechart"]});
      google.charts.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ["Element", "Density", { role: "style" } ],
          ["16:30-18:00", 10, "#b87333"],
          ["18:00-19:30", 20, "silver"],
          ["19:30-21:00", 30, "gold"],
          ["21:00-22:30", 40, "color: #e5e4e2"]
        ]);
  
        var view = new google.visualization.DataView(data);
        view.setColumns([0, 1,
                         { calc: "stringify",
                           sourceColumn: 1,
                           type: "string",
                           role: "annotation" },
                         2]);
  
        var options = {
          title: "",
          width: 900,
          height: 400,
          bar: {groupWidth: "95%"},
          legend: { position: "none" },
        };
        var chart = new google.visualization.BarChart(document.getElementById("barchart_values"));
        chart.draw(view, options);
    }
    </script>
          
</body>
</html>
