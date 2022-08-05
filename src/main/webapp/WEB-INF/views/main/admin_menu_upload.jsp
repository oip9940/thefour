<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../inc/admin_header.jsp" %>

   <link rel='stylesheet' href="resources/css/admin_menu_upload.css?after" />


</head>
<body>
<main>
<!-- partial:index.partial.html -->
<div class="form">
<form action="${ctx}/menuInsert.do" method="post">
	<input type="text" name="food_name" placeholder="메뉴명" required>
	
	<input type="text" name="food_code" placeholder="카테고리명" required>

	<input type="text" name="Food_price" placeholder="가격" required>

	<input type="text" name="Food_contents" placeholder="메뉴설명" required>
	
	<button>등록</button>
	</form>
</div>
<!-- partial -->
  <script src='//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script><script  src="resources/js/admin_menu_upload.js"></script>
</main>
</body>
</html>
