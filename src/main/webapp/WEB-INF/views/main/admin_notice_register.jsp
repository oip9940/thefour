<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/admin_header.jsp"%>

<style>
	.ck-editor__editable { height: 200px;}
	.ck-content {font-size: 12px;}
</style>
<!-- <script src="https://cdn.ckeditor.com/ckeditor5/34.2.0/classic/ckeditor.js"></script>
<script src="https://cdn.ckeditor.com/ckeditor5/34.0.0/classic/translations/ko.js"></script>
 -->
<!-- <script src="ckeditor/ckeditor.js"></script> -->
<div class="container d-flex mt-5 mb-5 justify-content-center">
	<div class="w-75 shadow p-5 rounded border">
		<h3>글쓰기</h3>
		<form method="post" action="<c:url value='adnoticeregister.do'/>">
			<div class="form-group">
				<label for="brd_title">제목</label>
				<input type="text" class="form-control" id="brd_title" 
					name="brd_title" placeholder="글 제목을 입력하세요"/>
			</div>
			<div class="form-group">
				<label for="brd_contents">내용</label>
				<textarea class="form-control" id="brd_contents" 
					name="brd_contents" rows="3"></textarea>
 			</div>
			<div class="form-group">
				<label for="brd_id">글쓴이</label>
				<input type="text" class="form-control" id="brd_id" 
					name="brd_id" placeholder="이름을 입력하세요"/>
			</div>
			<div class="form-group mt-4">
				<button type="submit" class="btn btn-primary">등록</button>
				<button type="button" id="btn-list" class="btn btn-secondary">리스트</button>
			</div>
		</form>

	</div>
</div>
<script type="text/javascript">
	$(document).ready(function(){
		$("#btn-list").click(() => {
			location.href="<c:url value='adnoticelist.do?viewPage=${viewPage}'/>";
		})
	});
</script>
