<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../inc/header.jsp" %>
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<div class="container d-flex mt-5 mb-5 justify-content-center">
	<div class="w-75 shadow p-5 rounded border">
		<h3>글상세보기</h3>
		<form action="clqnalist.do" method="get" id="moveForm">
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
			<button type="submit" id="btn-modify" class="btn btn-primary me-2">수정하기</button>
			<button type="button" id="btn-list" class="btn btn-primary">리스트</button>
		</div>
		
				<!-------------------- 댓글 UI ------------------>
		<div class="mt-5 mb-2">
			<h6 class=""><i class="fa fa-comments-o"></i> 댓글</h6>
			<div class="mb-3">
				<label for="rep_contents" class="col-form-label">댓글 내용</label>
        <textarea class="form-control" id="rep_contents"></textarea>
        <div style="text-align:right; margin: 10px;">
        <c:if test = "${member == null }">
					<button class="btn btn-primary" id="btn-login">댓글 등록</button>
  			</c:if>
  			<c:if test = "${member != null }">
					<input type="hidden" id="rep_id" value="${member.user_id}"/>
					<button type="button" id="btn-md-register"class="btn btn-sm btn-primary">댓글 등록</button>
				</c:if>
				</div>
      </div>
		</div>
		
		<!------------------- 댓글 영역 ----------------->
		<div class="form-group">
		<ul class="reply" style="list-style:none; padding: 5px 0px;">
			<li>
				<div class="form-control" style="height:auto;">
					<div class="d-flex justify-content-between">
						<h6><b>홍길동</b></h6><span>2022-07-14 16:02</span>
					</div>
					<p>댓글 테스트 입니다.....</p>
				</div>
			</li>
		</ul>
		</div>
	</div>
</div>
<script type="text/javascript" src="resources/js/reply.js"></script>

<script type="text/javascript">
$(document).ready(function(){
	/// 댓글 리스트 ///
	var brd_numValue = "<c:out value='${board.brd_num}'/>";
	
	var rUL = $(".reply");
	
	displayList();
	
	function displayList(){
		replyFunc.getList(
			{brd_num:brd_numValue}, function(list){
				console.log('list: '+ list);
				
				var str= "";
				
				
				if(list == null || list.length == 0){
					rUL.html("");
					return;
				}
				
				for(var i = 0, len = list.length || 0; i < len; i++){
					str +='<li data-rep_num="'+list[i].rep_num+'"><li><div class="form-control" style="height:auto;">'
						+'<div class="d-flex justify-content-between"><h6><b>'
						+list[i].rep_id+'</b></h6>';
					str +='<span>'+replyFunc.showDateTime(list[i].rep_date)+'</span></div>';
					str +='<p>'+list[i].rep_contents+'</p></div></li>'
				}
				
				rUL.html(str);
			});
	} // displayList
	
	///////////////////////// 댓글등록 /////////////////////////
	var modal = $("#replyModal");
	var taReplyContents = $("#rep_contents");
	var ipRep_id = $("#rep_id"); 
	
	var modBtn = $("#btn-md-modify");
	var delBtn = $("#btn-md-remove");
	var regBtn = $("#btn-md-register");
	
	// 댓글 등록 버튼 클릭시 이벤트 처리
	regBtn.on("click", function(e){
		if(taReplyContents.val() == null || taReplyContents.val().trim()==''){
			alert("댓글을 입력하세요!!");
			taReplyContents.focus();
			return;
		}
		
		// 댓글 입력 데이터(JSON)
		var reply = {
				rep_contents:taReplyContents.val(),
				rep_id : ipRep_id.val(),
				brd_num:brd_numValue
		};
		
		replyFunc.register(reply, function(result){
			// 서버에서 넘어온 결과를 띄우기
			alert(result);
			
			displayList();
		});
	});
	
	// 수정 이벤트 처리
	modBtn.on("click", function(e){
		var reply = {rno:modal.data("rno"), 
				reply_contents: taReplyContents.val()};
		
		replyFunc.update(reply, function(result){
			alert(result);
			modal.modal("hide");
			displayList();
		});
	});
	
	// 삭제 이벤트 처리
	delBtn.on("click", function(e){
		var rno = modal.data("rno");
		
		replyFunc.remove(rno, function(result){
			alert(result);
			modal.modal("hide");
			displayList();
		});
	})
	
	var moveForm = $("#moveForm");
	
	
	$("#btn-list").click(() => {
		moveForm.submit();
	})
	
	$("#btn-modify").click(() => {
		moveForm.attr("action", "clqnamodify.do");
		moveForm.submit();
	})
	$("#btn-login").click(()=>{
		alert("로그인이 필요합니다!")
		location.href="<c:url value='home.do#login'/>";
	})
});
</script>
<%@ include file="../inc/footer.jsp" %>
