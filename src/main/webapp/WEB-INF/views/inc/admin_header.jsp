<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Admin Dashboard</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css'>
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/css/materialize.min.css'>
<link rel="stylesheet" href="resources/css/admin_dashboard_main.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<script src="resources/js/admin_dashboard_main.js"></script>
<script src='https://code.jquery.com/jquery-2.2.4.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/js/materialize.min.js'></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

</head>



<body>



  <ul id="slide-out" class="side-nav fixed z-depth-2">
    <li class="center no-padding">
      <div class="grey darken-2 white-text" style="height: 180px;">
        <div class="row">
           <img style="margin-top: 7%;" width="100" height="100" src="resources/img/admin_image.png" class="circle responsive-img" />

          <p style="margin-top: -3%;">
            <a href="home.do">The Four</a>
          </p>
        </div>
      </div>
    </li>



    <ul class="collapsible" data-collapsible="accordion">
	    <li id="dash_dashboard">
	    	<a class="waves-effect" href="${ctx}/adhome.do">
	    		<b>Dashboard</b>
	    	</a>
	    </li>
      <li id="dash_clientlist">
        <div id="dash_clientlist_header" class="collapsible-header waves-effect"><b>Client List</b></div>
        <div id="dash_clienlist_body" class="collapsible-body">
          <ul>
            <li id="client_info">

              <a class="waves-effect" style="text-decoration: none;" href="${ctx}/admemberlist.do">회원 정보</a>
            </li>

            <li id="client_modify">
              <a class="waves-effect" style="text-decoration: none;" href="${ctx}/admemberinfo.do">회원 정보 수정</a>

            </li>
          </ul>
        </div>
      </li>

      <li id="dash_reservation">
        <div id="dash_reservation_header" class="collapsible-header waves-effect"><b>Reservation</b></div>
        <div id="dash_reservation_body" class="collapsible-body">
          <ul>
            <li id="book_date">
              <a class="waves-effect" style="text-decoration: none;" href="${ctx}/adreservation.do">예약 일정 등록</a>
            </li>
            <li id="booker_list">
              <a class="waves-effect" style="text-decoration: none;" href="${ctx}/adreservationlist.do">예약자 리스트 확인</a>
            </li>
          </ul>
        </div>
      </li>

      <li id="dash_foodregister">
        <div id="dash_foodregister_header" class="collapsible-header waves-effect"><b>Food Register</b></div>
        <div id="dash_foodregister_body" class="collapsible-body">
          <ul>
            <li id="menu_add">

              <a class="waves-effect" style="text-decoration: none;" href="${ctx}/admenuupload.do">신규 메뉴 등록</a>
            </li>

            <li id="menu_modify">
              <a class="waves-effect" style="text-decoration: none;" href="${ctx}/admenulist.do">기존 메뉴 수정</a>

            </li>
          </ul>
        </div>
      </li>

      <li id="dash_notice">
        <div id="dash_notice_header" class="collapsible-header waves-effect"><b>Notice</b></div>
        <div id="dash_notice_body" class="collapsible-body">
          <ul>
            <li id="notice_register">

              <a class="waves-effect" style="text-decoration: none;" href="adnoticelist.do">공지사항 리스트</a>
            </li>

            <li id="board_answer">
              <a class="waves-effect" style="text-decoration: none;" href="adqnalist.do">질문 리스트</a>

            </li>
          </ul>
        </div>
      </li>

      <li id="dash_brands">
        <div id="admin_login_logout" class="collapsible-header waves-effect"><b>Login/Logout</b></div>
      </li>
    </ul>
  </ul>

  <header>
    <ul class="dropdown-content" id="user_dropdown">
      <li><a class="indigo-text" href="#!">Profile</a></li>
      <li><a class="indigo-text" href="#!">Logout</a></li>
    </ul>

    <nav class="grey darken-2" role="navigation">
      <div class="nav-wrapper">
        <ul class="right hide-on-med-and-down">
          <li>
            <a class='right dropdown-button' href='' data-activates='user_dropdown'><i class=' material-icons'>account_circle</i></a>
          </li>
        </ul>
        <a href="#" data-activates="slide-out" class="button-collapse"><i class="mdi-navigation-menu"></i></a>
      </div>
    </nav>
  </header>