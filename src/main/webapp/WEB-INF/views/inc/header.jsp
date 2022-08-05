<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    


<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>

<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>four-Restaurant</title>
    <meta name="description" content="ROSA is an enchanting Parallax Restaurant WordPress Theme that allows you to tell your story in an enjoyable way, perfect for restaurants or coffee shops.">
    <meta name="viewport" content="width = device-width, initial-scale = 1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <!--<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>-->
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <!--Fonts-->
    <link href=" https://fonts.googleapis.com/css?family=Cabin|Herr+Von+Muellerhoff|Source+Sans+Pro " rel="stylesheet ">
    <!--Fonts-->
    <script src='//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <!--FontAwesome-->
    <!--<link rel="stylesheet " href="https://use.fontawesome.com/releases/v5.1.0/css/all.css " integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt " crossorigin="anonymous ">-->
    <script src="https://kit.fontawesome.com/82cfbbd12d.js" crossorigin="anonymous"></script>
    <!--FontAwesome-->
    
	<link rel="stylesheet " href="resources/css/reservation.css">
    <script  src="resources/js/reservation.js"></script>

</head>
<body>
    <header>
        <nav>
            <div class="logo">
                <a href="home.do">THE FOUR</a>
            </div>
            <div class="navigation-bar">
                <ul>
                    <li class="active"><a class="page-scroll" href="#about-us">About&nbsp;us<span class="underline"></span></a></li>
                    <li><a class="page-scroll" href="reservation.do">Reservation<span class="underline"></span></a></li>
                    <li><a class="page-scroll" href="#reservation-section">Food<span class="underline"></span></a></li>
                    <li><a href="clnoticelist.do">Notice<span class="underline"></span></a></li>
                    <c:if test = "${member == null }">
               		<li><a class="page-scroll" href="#login">LOGIN<span class="underline"></span></a></li>
                    </c:if>
	                <c:if test = "${member != null }">
	                <li><a class="page-scroll" href="logout.do">LogOut<span class="underline"></span></a></li>
	                </c:if>
	                <c:if test="${ member != null && member.user_cd == 2}">
	                <li><a href="${ctx}/admin.do"><span class="underline">AdminPage</span></a></li>
	                </c:if>
	                 <c:if test="${ member != null && member.user_cd == 1}">
	                <li><a href="${ctx}/admin.do"><span class="underline">MyPage</span></a></li>
	                </c:if>  
                </ul>
            </div>
        </nav>
    </header>