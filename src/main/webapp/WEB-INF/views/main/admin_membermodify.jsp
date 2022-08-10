<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/admin_header.jsp" %>
<head>
<link rel="stylesheet" href="resources/css/admin_memberinfo.css">
</head>
<div class="aside-main-box">
<div class="aside-box"></div>
<main>
<div>
    <div class="#">
      <div  class="card" align="center">
        <div class="row">
          <div class="center card-title">
                <div class="funds-card-colored">
                    <h3 style="color:black;">회원 정보</h3>
                    <div class="member-table">
                        <div class="funds-table-header">ID</div>
                        <div class="table-data">test1234</div>
                    </div>

                    <div class="member-table">
                        <div class="funds-table-header">비밀번호</div>
                        <div class="table-data"><input type="text" size=10 id="password" name="password"/></div>
                    </div>

                    <div class="member-table">
                        <div class="funds-table-header">이름</div>
                        <div class="table-data">김몰리</div>
                    </div>

                    <div class="member-table">
                        <div class="funds-table-header">생년월일</div>
                        <div class="table-data">2003-01-01</div>
                    </div>

                    <div class="member-table">
                        <div class="funds-table-header">성별</div>
                        <div class="table-data">남자</div>
                    </div>

                    <div class="member-table">
                        <div class="funds-table-header">주소</div>
                        <div class="table-data"><input type="text" size=10 id="address" name="address"/></div>
                    </div>

                    <div class="member-table">
                        <div class="funds-table-header">이메일</div>
                        <div class="table-data"><input type="text" size=10 id="email" name="email"/></div>
                    </div>

                    <div class="member-table">
                        <div class="funds-table-header">가입일자</div>
                        <div class="table-data">2022-06-30</div>
                    </div>


                    <div class="member-table">
                        <div class="funds-table-header">사용자 권한</div>
                        <div class="table-data">
												  <select class="form-control" id="auth">
												    <option>손님</option>
												    <option>관리자</option>
												    <option>요리사</option>
												    <option>직원</option>
												  </select>
												</div>
                    </div>

                    <a type="button" class="btn btn-back pull-right" href="admemberlist.do">리스트</a>
                    <a type="button" class="btn btn-modify pull-right" style="margin-right:10px;" href="admemberinfo.do">수정</a>
                    <!-- end of colored card -->
                </div>
		<!-- end of row -->
	</div>
        </div>
            </div>
                </div>
                    </div>

    
    

<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js'></script>
</main>
</div>
</body>
</html>
</body>
</html>