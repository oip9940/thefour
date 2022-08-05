<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../inc/header.jsp" %>

<div class="container d-flex mt-5 justify-content-center">
	<div class="w-75 shadow p-5 rounded border">
		<form id="moveForm" method="post" action="<c:url value='clqnamodify.do'/>">
			<input type="hidden" name="viewPage" value="${viewPage}"/>
			<input type="hidden" name="keyWord" value="${bvo.keyWord}"/>
			<input type="hidden" name="searchType" value="${bvo.searchType}"/>
			
			<h3>글수정 하기</h3>
			<div class="d-flex">
				<div class="form-group">
					<label for="subject">번호</label>
					<input type="text" class="form-control" id="brd_num" 
						name="brd_num" readonly value="${board.brd_num}"/>
				</div>
				<div class="form-group px-2">
					<label for="writer">글쓴이</label>
					<input type="text" class="form-control" id="brd_id" 
						name="brd_id" readonly value="${board.brd_id}"/>
				</div>
				<div class="form-group">
					<label for="hit">등록날짜</label>
					<input type="text" class="form-control" id="brd_date" 
					name="hit" disabled value="<fmt:formatDate pattern='yyyy-MM-dd hh:mm' value='${board.brd_date}'/>"/>
				</div>
			</div>
	
			<div class="form-group">
				<label for="subject">제목</label>
				<input type="text" class="form-control" id="brd_title" 
					name="brd_title" value="${board.brd_title}"/>
			</div>
	
			<div class="form-group">
				<label for="contents">내용</label>
				<textarea class="form-control" id="brd_contents" 
					name="brd_contents" rows="4">${board.brd_contents}</textarea>
			</div>

			<div class="form-group mt-4">
				<button type="submit" id="btn-modify" class="btn btn-primary me-2">수정하기</button>
				<button type="button" id="btn-remove" data-link="remove" class="btn btn-danger me-2">삭제</button>
				<button type="button" id="btn-list" data-link="list" class="btn btn-secondary">리스트</button>
			</div>
		</form>
	</div>
</div>
<script type="text/javascript">
	$(document).ready(function(){
		
		var moveForm = $("#moveForm");
		
		$("button").on("click", function(e){
			e.preventDefault();
			
			var linkBtn = $(this).data("link");
			
			if(linkBtn === "remove"){
				moveForm.attr("action", "clqnaremove.do");
			}else if(linkBtn === "list"){
				moveForm.attr("action", "clqnalist.do").attr("method", "get");
				
				// clone()은 복사해옴.
				var viewPageObj = $("input[name='viewPage']").clone();
				var keyWordObj = $("input[name='keyWord']").clone();
				var searchTypeObj = $("input[name='searchType']").clone();
				
				// list로 넘어가는 파라미터는 viewPage, keyWord, searchType만
				// 필요하다. 나머지는 필요없기 때문에 지워버리고 
				// 세계의 파라미터만 담아서 보냄
				moveForm.empty();
				
				moveForm.append(viewPageObj);
				moveForm.append(keyWordObj);
				moveForm.append(searchTypeObj);
			}
			moveForm.submit();
		});
	});
</script>
<%@ include file="../inc/footer.jsp" %>
