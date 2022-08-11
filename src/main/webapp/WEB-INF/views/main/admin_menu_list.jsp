<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/admin_header.jsp" %>
<head>
<link rel="stylesheet" href="resources/css/admin_menu_list.css?after">
<link rel='stylesheet' href='https://fonts.googleapis.com/css2?family=Jua&display=swap'>
</head>
<div class="aside-main-box">
  <div class="aside-box"></div>
<main>
	<div>	
		<div class="col s6">
			<div  class="card" align="center">
				<div class="row" >
					<div class="left card-title">
						<table class="fixed_headers">
							<thead>
								<tr>
									<th>메뉴번호</th>
									<th>카테고리</th>
									<th>메뉴명</th>
									<th>가격</th>
									<th>메뉴설명</th>
									<th>상태</th>
									<th>수정</th>
									<th>삭제</th>
									
								</tr>
							</thead>
							<tbody>
								<c:forEach var="vo" items="${list}">
									<tr>
	 									<td>${vo.food_num}</td>
										<td>${vo.food_code}</td>
										<td>${vo.food_name}</td>
										<td>${vo.food_price}</td>
										<td>${vo.food_contents}</td>
										<td>${vo.food_yn}</td>
										<td><input type="button" value="수정" 
											class="btn btn-danger" 
										onclick="menuInfo(${vo.food_num})"></td>
										
										<td><input type="button" value="삭제" 
											class="btn btn-danger" 
										onclick="menuDel(${vo.food_num})"></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</main>
</div>

<script type="text/javascript">
	function menuDel(no){
		location.href="menuDelete.do?food_num="+no;
	}
	function menuInfo(no){
		location.href="admenuInfo.do?food_num="+no;
	}

</script>
</body>
</html>
