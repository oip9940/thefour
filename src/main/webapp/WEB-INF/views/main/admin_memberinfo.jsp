<%@page import="kr.mr.model.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="ctx" value="${pageContext.request.contextPath}"/>
 
<%@ include file="../inc/admin_header.jsp" %>
<%
	UserVO uvo =(UserVO)request.getAttribute("uvo");
%>
<head>

<link rel="stylesheet" href="resources/css/admin_memberinfo.css">
</head>
  <main>
<div style="margin: 10px;">
    <div class="col s6">
    	<form action='${ctx}/admemberupdate.do?user_num=${uvo.user_num}' method='post'>
	      <div  class="card" align="center">
	        <div class="row" style="padding: 35px;" >
	          <div class="center card-title">
	
	                <div class="col-sm-12 funds-card-colored">
	                    <h3 style="color:black;">회원 정보</h3>
	                    <div class="col-sm-6 col-md-4 member-table">
	                        <div class="funds-table-header">ID</div>
	                        <div class="table-data"><%=uvo.getUser_id()%></div>
	                    </div>
	
	                    <div class="col-sm-6 col-md-4 member-table">
	                        <div class="funds-table-header">비밀번호</div>
	                        <div class="table-data"><input type="text" size=10 id="user_pw" name="user_pw" value="<%=uvo.getUser_pw()%>"/></div>
	                    </div>
	
	                    <div class="col-sm-6 col-md-4 member-table">
	                        <div class="funds-table-header">이름</div>
	                        <div class="table-data"><%=uvo.getUser_name()%></div>
	                    </div>
	
	                    <div class="col-sm-6 col-md-4 member-table">
	                        <div class="funds-table-header">생년월일</div>
	                        <div class="table-data"><%=uvo.getUser_birth()%></div>
	                    </div>
	                    
	                    <div class="col-sm-6 col-md-4 member-table">
	                        <div class="funds-table-header">전화번호</div>
	                        <div class="table-data"><input type="text" size=10 id="user_tel" name="user_tel" value="<%=uvo.getUser_tel()%>"/></div>
	                    </div>
	
	
	                    <div class="col-sm-6 col-md-4 member-table">
	                        <div class="funds-table-header">이메일</div>
	                        <div class="table-data"><input type="text" size=10 id="user_email" name="user_email" value="<%=uvo.getUser_email()%>"/></div>
	                    </div>
	
	
	                    <div class="col-sm-6 col-md-4 hidden-xs member-table">
	                        <div class="funds-table-header">사용자 권한</div>
	                        <div class="table-data">
							  <select class="form-control" id="user_auth" name="user_auth">
							    <option>손님</option>
							    <option>관리자</option>
							    <option>요리사</option>
							    <option>직원</option>
							  </select>
							</div>
	                    </div>
	                    
	                    <div class="col-sm-6 col-md-4 member-table">
	                        <div class="funds-table-header">&nbsp</div>
	                        <div class="table-data">&nbsp</div>
	                    </div>
	                    
	                    <div class="col-sm-6 col-md-4 member-table">
	                        <div class="funds-table-header">&nbsp</div>
	                        <div class="table-data">&nbsp</div>
	                    </div>
  

                    <a type="button" class="btn btn-back pull-right" href="admemberlist.do">리스트</a>
                    <input type="submit" value="수정하기" class="btn btn-modify pull-right" style="margin-right:10px;"/>
                    <!-- end of colored card -->
                </div>
		<!-- end of row -->
	</div>
        </div>
            </div>
            	</form>
	                </div>
	                    </div>

</main> 

