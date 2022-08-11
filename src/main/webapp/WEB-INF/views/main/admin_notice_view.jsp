<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../inc/admin_header.jsp" %>
<link rel="stylesheet" href="resources/css/admin_notice_view.css">
<div class="aside-main-box">
  <div class="aside-box"></div>
<main>
<div class="container d-flex mt-5 justify-content-center">
	<div class="w-75 shadow p-5 rounded border">
		<h3>글상세보기</h3>
		<form action="adnoticelist.do" method="get" id="moveForm">
			<input type="hidden" name="viewPage" value="${viewPage}"/>
			<input type="hidden" name="searchType" value="${bvo.searchType}"/>
			<input type="hidden" name="keyWord" value="${bvo.keyWord}"/>
			<input type="hidden" name="brd_num" value="${board.brd_num}"/>
		</form>
		
		<div class="d-flex justify-content-between">
			<div class="form-group">
				<label for="subject">번호</label>
				<input type="text" class="form-control" id="brd_num" 
					name="bid" disabled value="${board.brd_num}"/>
			</div>
			<div class="form-group px-2">
				<label for="writer">글쓴이</label>
				<input type="text" class="form-control" id="brd_id" 
					name="writer" disabled value="${board.brd_id}"/>
			</div>
			<div class="form-group">
				<label for="hit">등록날짜</label>
				<input type="text" class="form-control" id="hit" 
					name="hit" disabled value="<fmt:formatDate pattern='yyyy-MM-dd hh:mm' value='${board.brd_date}'/>"/>
			</div>
		</div>
		
		<div class="form-group">
			<label for="subject">제목</label>
			<input type="text" class="form-control" id="brd_title" 
				name="subject" disabled value="${board.brd_title}"/>
		</div>

		<div class="form-group">
			<label for="contents">내용</label>
			<textarea class="form-control" id="brd_contents" 
				name="contents" rows="4" disabled><c:out value="${board.brd_contents}" escapeXml="false"/></textarea>
		</div>
		<div class="form-group mt-4">
			<button type="submit" id="btn-modify" class="btn btn-danger me-2">수정</button>
			<button type="button" id="btn-list" class="btn btn-primary">리스트</button>
		</div>
	</div>
</div>
</main>
</div>
<script type="text/javascript">
$(document).ready(function(){
	var moveForm = $("#moveForm");
	
	
	$("#btn-list").click(() => {
		moveForm.submit();
	})
	
	$("#btn-modify").click(() => {
		moveForm.attr("action", "adnoticemodify.do");
		moveForm.submit();
	})
});
</script>
</body>
</html>