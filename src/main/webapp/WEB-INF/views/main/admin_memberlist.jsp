<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ include file="../inc/admin_header.jsp" %>
<head>
<link rel="stylesheet" href="resources/css/admin_memberlist.css">
<link rel='stylesheet' href='https://fonts.googleapis.com/css2?family=Jua&display=swap'>
</head>
<main>
	<div style="margin: 10px;">	
		<div class="col s6">
			<div  class="card" align="center">
				<div class="row" >
					<div class="left card-title">
						<table class="fixed_headers">
							<thead>
								<tr>
									<th>아이디</th>
									<th>비밀번호</th>
									<th>이름</th>
									<th>생년월일</th>
									<th>전화번호</th>
									<th>이메일</th>
									<th>보기</th>
									<th>삭제</th> 	
								</tr>
							</thead>
							<tbody>
								<c:forEach var="vo" items="${list}">
								<tr>
									<td>${vo.user_id}</td>
									<td>${vo.user_pw}</td>
									<td>${vo.user_name}</td>
									<td>${vo.user_birth}</td>
									<td>${vo.user_tel}</td>
									<td>${vo.user_email}</td>
									<td><a href="admemberinfo.do?user_num=${vo.user_num}" class="btn btn-primary">보기</a></td>
									<td><a href="admemberdelete.do?user_num=${vo.user_num}" data-value="${vo.user_num}" data-name="del" onclick="movePage(this)" class="btn btn-warning">삭제</a></td>
								</tr>
								</c:forEach>				
								<form name = "actionForm" method="post">
									<input type="hidden" name="id"/>
								</form>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
<script type="text/javascript">
// 삭제, 회원정보보기 선택시 호출
function movePage(obj){
	event.preventDefault();
	
	actionForm.action = obj.href;
	
	actionForm.id.value=obj.dataset.value;
	
	if(obj.dataset.name == "del"){
		var res = confirm("삭제 하시겠습니까?");
		if(res) {
			actionForm.submit();
		}
		return;
	}else{
		actionForm.submit();
	}
}
</script>
</main>


