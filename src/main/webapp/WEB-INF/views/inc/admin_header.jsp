<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Admin Dashboard</title>
<link rel='stylesheet' href='//ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/themes/smoothness/jquery-ui.css'>

<script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

<link rel="stylesheet" href="resources/css/admin_dashboard_main.css">

<!-- summernote -->
<script src="resources/js/summernote/summernote-lite.js"></script>
<script src="resources/js/summernote/lang/summernote-ko-KR.js"></script>
<link rel="stylesheet" href="resources/css/summernote/summernote-lite.css">

</head>


<body>

<aside class="sidebar">

  <div id="leftside-navigation" class="nano">
    <ul class="nano-content">
      <li class="Logo-box">
        <div class="grey darken-2 white-text" style="height: 180px;">
          <div class="row">
            <img style="margin-top: 7%;" width="100" height="100" src="resources/img/admin_image.png" class="circle responsive-img" />
            <p style="margin-top: -3%;">
            <a href="home.do"><b>The Four</b></a>
          </p>
          </div>
        </div>
	  </li>
    
      <li>
        <a href="${ctx}/adhome.do"><i class="fa fa-dashboard"></i><span>Dashboard</span></a>
      </li>
      
      <li class="sub-menu">
        <a href="javascript:void(0);"><i class="fa fa-user"></i><span>Client List</span><i class="arrow fa fa-angle-right pull-right"></i></a>
        <ul>
          <li><a href="${ctx}/admemberlist.do">회원 정보</a>
          </li>
          <li><a href="${ctx}/admemberinfo.do">회원 정보 수정</a>
        </ul>
      </li>
      
      <li class="sub-menu">
        <a href="javascript:void(0);"><i class="fa fa-table"></i><span>Reservation</span><i class="arrow fa fa-angle-right pull-right"></i></a>
        <ul>
          <li><a href="${ctx}/adreservation.do">예약 일정 등록</a>
          </li>

          <li><a href="${ctx}/adreservationlist.do">예약자 리스트 확인</a>
          </li>
        </ul>
      </li>
      
      <li class="sub-menu">
        <a href="javascript:void(0);"><i class="fa fa-cutlery" aria-hidden="true"></i><span>Food Register</span><i class="arrow fa fa-angle-right pull-right"></i></a>
        <ul>
          <li><a href="${ctx}/admenuupload.do">신규 메뉴 등록</a>
          </li>
          <li><a href="${ctx}/admenulist.do">기존 메뉴 수정</a>
          </li>
        </ul>
      </li>
      
      <li class="sub-menu">
        <a href="javascript:void(0);"><i class="fa fa-commenting-o" aria-hidden="true"></i></i><span>Notice</span><i class="arrow fa fa-angle-right pull-right"></i></a>
        <ul>
          <li><a href="adnoticelist.do">공지사항 리스트</a>
          </li>
          <li><a href="adqnalist.do">질문 리스트</a>
          </li>
        </ul>
      </li>
      
      <li class="sub-menu">
        <a href="#"><i class="fa fa-address-card" aria-hidden="true"></i><span>Login/Logout</span></a>
      </li>
    </ul>
  </div>
</aside>

<script src='//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='//ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js'></script>
<script src="resources/js/admin_dashboard_main.js"></script>

