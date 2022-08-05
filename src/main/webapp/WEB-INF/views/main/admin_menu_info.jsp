<%@page import="kr.mr.model.FoodVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../inc/admin_header.jsp" %>
<%
	FoodVO fvo =(FoodVO)request.getAttribute("fvo");
%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<head>

<link rel="stylesheet" href="resources/css/admin_memberinfo.css">
</head>
  <main>
<div style="margin: 10px;">
    <div class="col s6">
    <form action='${ctx}/admenuUpdate.do?food_num=${fvo.food_num}' method='post'>
      <div  class="card" align="center">
        <div class="row" style="padding: 35px;" >
          <div class="center card-title">

                <div class="col-sm-12 funds-card-colored">
                    <h3 style="color:black;">메뉴 정보</h3>
                    <div class="col-sm-6 col-md-4 member-table">
                        <div class="funds-table-header">번호</div>
                        <div class="table-data"><%=fvo.getfood_num()%></div>
                    </div>

                    <div class="col-sm-6 col-md-4 member-table">
                        <div class="funds-table-header">메뉴명</div>
                        <div class="table-data"><input type="text" size=10 id="food_name" name="food_name" value="<%=fvo.getfood_name()%>"/></div>
                    </div>

                    <div class="col-sm-6 col-md-4 member-table">
                        <div class="funds-table-header">카테고리</div>
                        <div class="table-data"><input type="text" size=10 id="food_code" name="food_code" value="<%=fvo.getfood_code()%>"/></div>
                    </div>


                    <div class="col-sm-6 col-md-4 member-table">
                        <div class="funds-table-header">가격</div>
                        <div class="table-data"><input type="text" size=10 id="food_price" name="food_price" value="<%=fvo.getfood_price()%>"/></div>
                    </div>

                    <div class="col-sm-6 col-md-4 member-table">
                        <div class="funds-table-header">메뉴설명</div>
                        <div class="table-data"><input type="text" size=10 id="food_contents" name="food_contents" value="<%=fvo.getfood_contents()%>"/></div>
                    </div>
                    
                    <div class="col-sm-6 col-md-4 member-table">
                        <div class="funds-table-header">상태</div>
                        <div class="table-data">
                        	<select class="form-control" id="food_yn" name="food_yn">
							    <option>y</option>
							    <option>n</option>
							 </select>
                        </div>
                    </div>

                    <a type="button" class="btn btn-back pull-right" href="admemberlist.do">리스트</a>
                    <input type="submit" value="수정하기" class="btn btn-modify pull-right" style="margin-right:10px;"/>
                
                    <!-- end of colored card -->
                </div>
		<!-- end of row -->
	</div>
        </div>
            </div>
                </div>
                    </div>

  </main>
</body>
</html>  
</body>
</html>
