<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../inc/admin_header.jsp" %>

   <link rel='stylesheet' href="resources/css/admin_menu_upload.css?after" />

</head>
<body>
<div class="aside-main-box">
  <div class="aside-box"></div>
<main>
<div class="form">
<h3> 카테고리 등록</h3>
<form action="${ctx}/catInsert.do" method="post">

   <input type="text" name="cat_num" placeholder="카테고리 번호" required>
   
   <input type="text" name="code" placeholder="카테고리 코드" required>

   <input type="text" name="cat_name" placeholder="카테고리 명" required>

   
   <button>등록</button>
   </form>
</div>

<div class="form">
<h3> 메뉴 등록</h3>

<form action="${ctx}/menuInsert.do" method="post">
       
   
            <div class="form_section_content">
               <div class="cate_wrap">
                  <span style="color: #b3b3b3">대분류</span>
                     <select class="cate1">
                        <option selected value="none">선택</option>
                     </select>
               </div>
            </div>
      
         
         
         <input type="text" name="food_name" placeholder="메뉴명" required>
         
         <input type="text" name="food_code" placeholder="카테고리명" required>
      
         <input type="text" name="Food_price" placeholder="가격" required>
      
         <input type="text" name="Food_contents" placeholder="메뉴설명" required>
   
   <!-- <button id="cancelBtn" class="btn">취소</button> -->
   <br>
   <button>등 록</button>
   </form>
</div>
<!-- partial -->
  <script src='//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script><script  src="../resources/js/admin_menu_upload.js"></script>
</main>
</div>
<script>
let catList = JSON.parse('${catList}');

let cate1Array = new Array();
let cate1Obj = new Object();

let cateSelect1 = $(".cate1");   

for(let i = 0; i < catList.length; i++){
   if(catList[i].tier === 1){
      cate1Obj = new Object();
      
      cate1Obj.cateName = cateList[i].cateName;
      cate1Obj.cateCode = cateList[i].cateCode;
      cate1Obj.cateParent = cateList[i].cateParent;
      
      cate1Array.push(cate1Obj);            
      
   }
}   

function makeCateArray(obj,array,catList, code){
   for(let i = 0; i < catList.length; i++){
      if(catList[i].code === code){
         obj = new Object();
         
         obj.catName = catList[i].catName;
         obj.catCode = catList[i].catCode;
         obj.catPar = catList[i].catePar;
         
         array.push(obj);            
         
      }
   }
}   
/* 배열 초기화 */
makeCateArray(cate1Obj,cate1Array,catList,1);


$(document).ready(function(){
   console.log(cate1Array);
});

for(let i = 0; i < cate1Array.length; i++){
   cateSelect1.append("<option value='"+cate1Array[i].catCode+"'>" + cate1Array[i].catName + "</option>");
}

/* $(document).ready(function(){
   console.log('${catList}');
}); */


</script>    


</body>
</html>
