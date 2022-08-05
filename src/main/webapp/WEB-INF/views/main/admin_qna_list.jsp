<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link rel="stylesheet" href="resources/css/bootstrap.min.css">

<%@ include file="../inc/admin_header.jsp" %>
<script type="text/javascript">
	$(document).ready(function(){
		$("#btn-write").click(() => {
			location.href="<c:url value='adqnaregister.do?viewPage=${bp.viewPage}'/>";
		})
		
		/************* 페이징 ***************/
		var moveForm =$("#moveForm");
		$(".page-item a").on("click", function(e){
			e.preventDefault();
			
			moveForm.find("input[name='viewPage']").val($(this).attr("href"));
			moveForm.submit();
		});
		
		/************* 글 상세보기 ***********/
		$(".goView").on("click", function(e){
			e.preventDefault();
			
			moveForm.append("<input type='hidden' name='brd_num' value='"+
					$(this).attr("href")+"'>");
			moveForm.attr("action", "adqnaview.do");
			moveForm.submit();
		});
		
		
		/************* 검색 ****************/
		var sf = $("#searchForm");
		
		$("#btn-search").on("click", function(e){
			if(!sf.find("input[name='keyWord']").val()){
				alert("키워드를 입력하세요!!");
				$("#keyWord").focus();
				return false;
			}
			
			sf.submit();
		});
	});
</script>
<body>
<div>
    <div class="col s6">
      <div  class="card" align="center">
        <div class="row">
          <div class="center card-title">

<!-- http://localhost/day05bbs/list.do  -->
	<div class="container mt-5">

	<h3>Q&A</h3>
	<form action="adqnalist.do" method="get" id="moveForm">
		<input type="hidden" name="viewPage" value="${bp.viewPage}"/>
		<input type="hidden" name="searchType" value="${vo.searchType}"/>
		<input type="hidden" name="keyWord" value="${vo.keyWord}"/>
		
	</form>
<div>

<form id="searchForm" method="post" action="adqnalist.do">
<div class="search" style="display: flex; justify-content: space-between;">
	<div class="m-0 my-1" style="display:inline-block;"><b>${bp.viewPage}</b> / ${bp.totalPage} pages</div>
	<div class="input-group" style="display:inline-block;">
	<select class="form-control" name="searchType" id="searchType" style="width:100px">
        <option
				<c:out value="${vo.searchType == null ? 'selected':''}"/>>선택</option>
			<option value="S"
				<c:out value="${vo.searchType == 'S' ? 'selected':''}"/>>제목</option>
			<option value="C"
				<c:out value="${vo.searchType eq 'C' ? 'selected':''}"/>>내용</option>
			<option value="W"
				<c:out value="${vo.searchType eq 'W' ? 'selected':''}"/>>글쓴이</option>
      </select>
	<input class="form-control rounded-0 rounded-start" type="text" 
			id="keyWord" name="keyWord"	placeholder="Search" 
			style="width:250px; height:35px;" value="${vo.keyWord}">
	    <button id="btn-search" class="btn btn-default" >
	      <i class="glyphicon glyphicon-search"></i>
	    </button>
	</div>
</div>
</form>
<table class="table">
	<thead style="background:#323232; color:white">
		<tr>
		<th class="col-md-1 text-center">번호</th>
				<th class="col-md-6 text-center">제목</th>
				<th class="col-md-2 text-center">이름</th>
				<th class="col-md-3 text-center">날짜</th>
		</tr>
	</thead>
	<tbody>
		<c:set var="bno" value="${bp.startRowNum}"/>
		<c:forEach var="lvo" items="${list}">
		<tr>
			<td>${bno}</td>
			<td><a class="goView" href="<c:url value='${lvo.brd_num}'/>">${lvo.brd_title}</a></td>
			<td>${lvo.brd_id}</td>
			<td><fmt:formatDate pattern="yyyy-MM-dd hh:mm" value="${lvo.brd_date}"/></td>
		</tr>
		<c:set var="bno" value="${bno-1}"/>
		</c:forEach>
	</tbody>
</table>

<!-- 페이지 네비게이션(블럭) -->
<div class="row text-center">
<ul class="pagination justify-content-center my-5">
  <li class="page-item ${bp.prevPage <=0 ? 'disabled' : ''}">
  	<a class="page-link" href="${bp.prevPage}">이전</a>
  </li>
  
  <c:forEach var="i" begin="${bp.blockStart}" end="${bp.blockEnd}">
	  <li class="page-item ${bp.viewPage == i ? 'active':''}">
	  	<a class="page-link" href="${i}">${i}</a>
	  </li>
  </c:forEach>
  
  <li class="page-item ${bp.blockEnd >= bp.totalPage ? 'disabled': ''}">
  	<a class="page-link" href="${bp.nextPage}">다음</a>
  </li>
</ul>
</div>

		
</div>
</div>
</div>
</div>
</div>
</div>
</div>

</body>
</html>
</body>
</html>