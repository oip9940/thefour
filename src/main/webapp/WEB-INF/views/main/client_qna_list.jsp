<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/header.jsp" %>
<head>
    <script src='resources/js/main.min.js'></script>
		<link rel="stylesheet" href="resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="resources/css/client_faq.css">
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">

</head>
<script type="text/javascript">
	$(document).ready(function(){
		$("#btn-write").click(() => {
			location.href="<c:url value='clqnaregister.do?viewPage=${bp.viewPage}'/>";
		})
		
		$("#btn-login").click(() =>{
			alert("로그인이 필요합니다!")
			location.href="<c:url value='home.do#login'/>";
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
			moveForm.attr("action", "clqnaview.do");
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

    <section class="faq">
        <div class="faq-inner">
            <h1>자주 묻는 질문</h1>
            <div class="accordion">
                <input type="radio" name="faq-item" id="faq1">
                <label for="faq1">질문1<span><i class="xi-plus"></i></span></label>
                <div class="faq-content">
                    따뜻한 오아이스도 일월과 그들의 없으면 철환하였는가? 생생하며, 기쁘며, 청춘 그들의 바이며, 힘차게 소리다.이것은 새가 청춘에서만 것이다. 그것을 있음으로써 무엇을 끓는 그들의 불어 속에서 것이다. 무엇이 청춘 우리의 지혜는 끓는다. 인간이 내려온 그들의 뭇 반짝이는 구하기 찾아 귀는 쓸쓸하랴? 든 인간이 있음으로써 황금시대를 능히 충분히 청춘을 반짝이는 인간의 이것이다. 싹이 끓는 힘차게 그리하였는가? 거친 스며들어 무한한 때까지 힘있다. 없으면, 예가 가는 부패뿐이다. 끓는 가장 무엇이 위하여서, 긴지라 위하여, 꽃이 풍부하게 살았으며, 있는가?
                </div>

                <input type="radio" name="faq-item" id="faq2">
                <label for="faq2">질문2<span><i class="xi-plus"></i></span></label>
                <div class="faq-content">
                    따뜻한 오아이스도 일월과 그들의 없으면 철환하였는가? 생생하며, 기쁘며, 청춘 그들의 바이며, 힘차게 소리다.이것은 새가 청춘에서만 것이다. 그것을 있음으로써 무엇을 끓는 그들의 불어 속에서 것이다.
                </div>
                
                <input type="radio" name="faq-item" id="faq3">
                <label for="faq3">질문3<span><i class="xi-plus"></i></span></label>
                <div class="faq-content">
                    따뜻한 오아이스도 일월과 그들의 없으면 철환하였는가? 생생하며, 기쁘며, 청춘 그들의 바이며, 힘차게 소리다.이것은 새가 청춘에서만 것이다. 그것을 있음으로써 무엇을 끓는 그들의 불어 속에서 것이다.
                </div>

                <input type="radio" name="faq-item" id="faq4">
                <label for="faq4">질문4<span><i class="xi-plus"></i></span></label>
                <div class="faq-content">
                    따뜻한 오아이스도 일월과 그들의 없으면 철환하였는가? 생생하며, 기쁘며, 청춘 그들의 바이며, 힘차게 소리다.이것은 새가 청춘에서만 것이다. 그것을 있음으로써 무엇을 끓는 그들의 불어 속에서 것이다.
                </div>

                <input type="radio" name="faq-item" id="faq5">
                <label for="faq5">질문5<span><i class="xi-plus"></i></span></label>
                <div class="faq-content">
                    따뜻한 오아이스도 일월과 그들의 없으면 철환하였는가? 생생하며, 기쁘며, 청춘 그들의 바이며, 힘차게 소리다.이것은 새가 청춘에서만 것이다. 그것을 있음으로써 무엇을 끓는 그들의 불어 속에서 것이다.
                </div>

                <input type="radio" name="faq-item" id="faq6">
                <label for="faq6">질문6<span><i class="xi-plus"></i></span></label>
                <div class="faq-content">
                    따뜻한 오아이스도 일월과 그들의 없으면 철환하였는가? 생생하며, 기쁘며, 청춘 그들의 바이며, 힘차게 소리다.이것은 새가 청춘에서만 것이다. 그것을 있음으로써 무엇을 끓는 그들의 불어 속에서 것이다.
                </div>
            </div>
        </div>
    </section>
    
	<!-- board -->
	<div class="container mt-5">

	<h3>Q&A</h3>
	<form action="clqnalist.do" method="get" id="moveForm">
		<input type="hidden" name="viewPage" value="${bp.viewPage}"/>
		<input type="hidden" name="searchType" value="${vo.searchType}"/>
		<input type="hidden" name="keyWord" value="${vo.keyWord}"/>
		
	</form>
<div>

<form id="searchForm" method="post" action="clqnalist.do">
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
  <div class="text-center mb-3">
	<c:if test = "${member == null }">
		<button class="btn btn-primary" id="btn-login">글쓰기</button>
  </c:if>
  <c:if test = "${member != null }">
		<button class="btn btn-primary" id="btn-write">글쓰기</button>
  </c:if>
	</div>

</div>
</div>


    <%@ include file="../inc/footer.jsp" %>