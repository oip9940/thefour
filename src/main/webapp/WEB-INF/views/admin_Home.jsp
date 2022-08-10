<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./inc/admin_header.jsp" %>
<head>
<link rel="stylesheet" href="resources/css/admin_main.css">
</head>
<div class="aside-main-box">
  <div class="aside-box"></div>
  <main>
  	<div class="title-box">
  		<span><b>DashBoard</b></span>
  	</div>

  	<div class="chart-box">
      <div class="curve_chart-box">
          <div class="chart-title"><b>월별 방문자 수</b></div>
          <div class="chart-sizing">
          	<div id="curve_chart"></div>
          </div>
      </div>
      
	  <div class="barchart-box">
          <div class="chart-title"><b>시간별 예약자</b></div>
          <div class="chart-sizing">
          	<div id="barchart_values"></div>
          </div>
	  </div>
    </div>
    <div class="status-box">
    </div>
    <div class="menu-box">
    </div>
  </main>
 </div>
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
          legend: { position: 'bottom' },
          chartArea: {
              backgroundColor: {
                  fill: '#313348',
              },
          },
          backgroundColor: {
              fill: '#313348',
          },
          hAxis: {
              title: '월',
              titleTextStyle: {
                  color: '#9ca3a5'
              },
              textStyle:{
                  color: '#9ca3a5'
              }
          },
          vAxis: {
              title: '방문자 수',
              titleTextStyle: {
                  color: '#9ca3a5'
              },
              textStyle:{
                  color: '#9ca3a5'
              }
          },
          legend: {
              textStyle: {
                  color: '#9ca3a5'
          	}
			}
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
          bar: {groupWidth: "95%"},
          legend: { position: "none" },
          chartArea: {
              backgroundColor: {
                  fill: '#313348',
              },
          },
          backgroundColor: {
              fill: '#313348',
          },
          hAxis: {
              title: '예약자 수',
              titleTextStyle: {
                  color: '#9ca3a5'
              },
              textStyle:{
                  color: '#9ca3a5'
              }
          },
          vAxis: {
              title: '시간대',
              titleTextStyle: {
                  color: '#9ca3a5'
              },
              textStyle:{
                  color: '#9ca3a5'
              }
          },
          legend: {
              textStyle: {
                  color: '#9ca3a5'
          	}
			}
        };
        var chart = new google.visualization.BarChart(document.getElementById("barchart_values"));
        chart.draw(view, options);
    }
    </script>
          
</body>
</html>
