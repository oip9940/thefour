<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>four-Restaurant</title>
    <script
     src="https://code.jquery.com/jquery-3.4.1.js"
     integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
     crossorigin="anonymous"></script>
    <meta name="description" content="ROSA is an enchanting Parallax Restaurant WordPress Theme that allows you to tell your story in an enjoyable way, perfect for restaurants or coffee shops.">
    <meta name="viewport" content="width = device-width, initial-scale = 1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <!--<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>-->
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <!--Fonts-->
    <link href=" https://fonts.googleapis.com/css?family=Cabin|Herr+Von+Muellerhoff|Source+Sans+Pro " rel="stylesheet ">
    <!--Fonts-->
    <script src='//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <!--FontAwesome-->
    <!--<link rel="stylesheet " href="https://use.fontawesome.com/releases/v5.1.0/css/all.css " integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt " crossorigin="anonymous ">-->
    <script src="https://kit.fontawesome.com/82cfbbd12d.js" crossorigin="anonymous"></script>
    <!--FontAwesome-->
    
    <script  src="resources/js/script.js"></script>
    <link rel="stylesheet " href="resources/css/main.css ">
    
    <!-- detepicker -->
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css"/>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
    <script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
</head>
<script type="text/javascript">
   $(function() {
      // var today1 = new Date();
      // datepicker 한국어로 사용하기 위한 언어설정
      $.datepicker.setDefaults($.datepicker.regional['ko']);
      $("#testDatepicker").datepicker({
         changeMonth: true,
         changeYear:true,
         nextText: '다음달',
         prevText: '이전달',
         yearRange:'c-100:c+0',
         showButtonPanel:true,
         currentText:'오늘날짜',
         closeText:'닫기',
         dateFormat: 'yymmdd',
         showMonthAfterYear: true , // 월, 년순의 셀렉트 박스를 년,월 순으로 바꿔준다.
         dayNamesMin: ['월', '화', '수', '목', '금', '토', '일'], // 요일의 한글 형식.
         monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] // 월의 한글 형식.
      });
   });
</script>
<header>
    <nav>
        <div class="logo">
            <a href="home.do">THE FOUR</a>
        </div>
        <div class="navigation-bar">
            <ul>
                <li class="active"><a class="page-scroll" href="#about-us">About&nbsp;us<span class="underline"></span></a></li>
                <li><a class="page-scroll" href="#menu">Reservation<span class="underline"></span></a></li>
                <li><a class="page-scroll" href="#reservation-section">Food<span class="underline"></span></a></li>
                <li><a href="${ctx}/clnoticelist.do">Notice<span class="underline"></span></a></li>
               
                 <c:if test = "${member == null }">
                <li><a class="page-scroll" href="#login">LOGIN<span class="underline"></span></a></li>
                </c:if>
                <c:if test = "${member != null }">
                <li><a class="page-scroll" href="logout.do">LogOut<span class="underline"></span></a></li>
                </c:if>
                <c:if test="${ member != null && member.user_cd == 2}">
                <li><a href="${ctx}/adhome.do"><span class="underline">AdminPage</span></a></li>
                </c:if>
                 <c:if test="${ member != null && member.user_cd == 1}">
                <li><a href="${ctx}/adhome.do"><span class="underline">MyPage</span></a></li>
                </c:if>  
            </ul>
        </div>
    </nav>
    <div class="text">
        <h2>Welcome</h2>
        <h1>THE FOUR</h1>
        <div class="arrow">
            <i class="fas fa-asterisk"></i>
        </div>
        <span>Ready To Be Opened</span>
        <div class="button"><button><a href="${ctx}/reservation.do">Reservation</a></button></div>
    </div>
</header>
<!--End Header-->

<!--start About Us-->
<div id="about-us">
    <div class="text">
        <h2>About-Us</h2>
        <h3>Restaurant Story</h3>
        <div><i class="fas fa-asterisk "></i></div>
        <p>This is a company, a restaurant, a company, a restaurant, a restaurant, or a company, or a restaurant, and the conclusion is a project sample. This is a company, a restaurant, a company, a restaurant, a restaurant, or a company, or a restaurant,
            and the conclusion is a project sample.</p>
        <div>
            <a class="a-CTA " href="# "></a>
        </div>
    </div>
    <div class="image-container ">
        <div class="about_us1 ">
            <img src="resources/img/about_us_1.jpg" alt=" about_us Photo ">
        </div>
        <div class="about_us2 ">
            <img src="resources/img/about_us_2.jpg" alt=" about_us Photo ">
        </div>
    </div>
</div>
<!--About Us 종료-->

<!--고정 3개 이미지 시작-->
<div class="recipes">
    <div class="image"></div>
    <div class="text">
        <h2 class="fix-text">Tasteful</h2>
        <h3>Recipes</h3>
    </div>
</div>
<!--고정 3개 이미지 종료-->



<!--메뉴 섹션 시작-->

<div id="menu">
    <div class="box-model">
        <i class="fas fa-times fa-2x close"></i>
        <div class="arrow">
            <div class="arrow arrow-right"></div>
            <div class="arrow arrow-left"></div>
        </div>
        <div class="box-image-container">
            <div class="box-image">
                <img src=""  alt="Food Photo">
            </div>
        </div>
    </div>
    <div class="menu-image-container">
        <div class="image">
            <img src="resources/img/steak_l.jpg" alt="Food Photo">
        </div>
        <div class="image">
            <img src="resources/img/steak_r.jpg" alt="Food Photo">
        </div>
        <div class="image">
            <img src="resources/img/pasta.jpg" alt="Food Photo">
        </div>
        <div class="image">
            <img src="resources/img/salad.jpg" alt="Food Photo">
        </div>
    </div>
    <div class="text">
        <h2>Restaurant</h2>
        <h3>Reservation</h3>
        <div><i class="fas fa-asterisk"></i></div>
        <p>For those with pure food indulgence in mind, come next door and sate your desires with our ever changing internationally and seasonally inspired small plates.  We love food, lots of different food, just like you.</p>
        <div><a class="a-CTA" href="${ctx}/reservation.do">View The Reservation</a></div>
    </div>
</div>
<div class="fixed-image">
    <div class="text">
        <h2>The Perfect</h2>
        <h3>Blend</h3>
    </div>
</div>

<div id="reservation-section">
    <div class="text">
        <h2>Development</h2>
        <h3>varied Food</h3>
        <div><i class="fas fa-asterisk "></i></div>
        <p>This is a company, a restaurant, a company, a restaurant, a restaurant, or a company, or a restaurant, and the conclusion is a project sample. This is a company, a restaurant, a company, a restaurant, a restaurant, or a company, or a restaurant,
            and the conclusion is a project sample.</p>
            <div><a class="a-CTA" href="${ctx}/clientmenu.do">View The Menu</a></div>
    </div>
    <div class="image-container">
        <div class="reservation1">
            <img src="resources/img/reservation-l.jpg" alt="reservation Photo1">
        </div>
        <div class="reservation2">
            <img src="resources/img/reservation-r.jpg" alt="reservation photo2">
        </div>
    </div>
</div>
<div id="header-move">
<a name="loginh"></a>
</div>
<!-- 로그인 폼 -->
<div id = "login">
        <div class="login_form">
        <div id="back"> <!-- 배경 사진 자리 -->
            <div class="backRight"></div>
            <div class="backLeft"></div>
        </div>

        <div id="slideBox">
            <div class="topLayer">
                <div class="left">
                    <div class="content"><!-- Sign Up 박스 -->
                        <h2>Sign Up</h2>
                        <form id="join_form" method="post">
                        <div class="div-pa">
                           <div class="div1">
                            <div class="form-group">
                                <label for="ID" class="form-label">ID</label>
                                <input class="id_input" name="user_id"><br>
                            </div>
                             <div>
                                <span class="id_input_rea">사용 가능한 아이디입니다.</span>
                        <span class="id_input_ref">아이디가 이미 존재합니다.</span>
                            </div>
                            <div class="form-group">
                                <label for="Password" class="form-label">Password</label>
                                <input class="pw_input" name="user_pw">
                            </div>
                            <div class="form-group">
                                <label for="Password" class="form-label">Confirm Password</label>
                                <input  class="pwck_input">
                            </div>
                            <div class="form-group"> 
                                <label for="name" class="form-label">Name</label>
                                <input class="user_input" name="user_name">
                            </div>
                       
                            </div>
                            
                            <div class="div2">
                             <div class="form-group"> 
                                <label for="brith" class="form-label">Birthday</label>
                                <input type="text" id="testDatepicker" name="user_birth">
                            </div>
                              <div class="form-group"> <!-- address는 다음 우편번호 api 넣을 생각 해두자 -->
                                <label for="phone" class="form-label">Phone</label>
                                <input class="user_phone" name ="user_tel">
                            </div>
                            <div class="form-group"> 
                               <!-- address는 다음 우편번호 api 넣을 생각 해두자 -->
                                <label for="email" class="form-label">Email</label>
                                <input class="mail_input" name="user_email">
                            </div>
                            
                                  		
                                       <div class="mail_check_wrap">
                                          <div class="mail_check_input_box" id="mail_check_input_box_false">
                                            <input class="mail_check_input" disabled="disabled">
                                         </div>
                                         <div class="mail_check_button">
                                              <label for="email_check" class="form-label">
                                                 <div class="mail_check_button">
                                                    <span="auth">인증요청</span>
                                                 </div>
                                                 </label>
                                         </div>
                                     </div>
                                     <div class="clearfix"></div>
                                              <span id="mail_check_input_box_warn"></span> 
									                                                
                               </div>
                            </div>
                        </form>
                        <button class="sign_up" type="submit">Sign up</button>
                        <button id="goLeft" class="change_r">Login</button>
                    </div>
                </div>
                <c:if test = "${member == null }">
                <div class="right">
                <div class="content1"><!-- Login 박스 -->
                    <h2>Login</h2>
                    <form id="login_form" method="get">                         
                       <div class="form-group">
                            <label for="ID" class="form-label">ID</label>
                            <input class="id_input" name="user_id">
                        </div>
                        <div class="form-group">
                            <label for="Password" class="form-label">Password</label>
                            <input class="pw_iput" name="user_pw">
                        </div>
                        
                         <c:if test = "${result == 0 }">
                        <div class = "login_warn">입력한 ID 또는 Password를 확인해주세요.</div>
                        </c:if>
                        
                    </form>
                    <button class="login_button" type="submit">Login</button>
                    <button id="goRight" class="change">Sign Up</button>
                </div>
                </div>
                </c:if>
                <c:if test = "${member != null }">
                <div class="right">
                <div class="textm"><!-- Login 박스 -->
                    <p class="design">Welcome ${member.user_id}</p>
                    <p class="design1">We sincerely welcome your visit to our home page.</p>
                </div>
                </div>
                </c:if>
                
            </div>
        </div>
    </div>
</div>
<!-- login_form end -->
<div class="height-div">

</div>
<!-- footer -->
<footer class="site-footer">
    <div class="container">
      <div class="row">
        <div class="col-sm-12 col-md-6">
          <h6>About US</h6>
          <p class="text-justify">이곳은 소개 문구 들어갈 자리입니다. 이곳은 소개 문구 들어갈 자리입니다. 이곳은 소개 문구 들어갈 자리입니다. 이곳은 소개 문구 들어갈 자리입니다. 이곳은 소개 문구 들어갈 자리입니다. 이곳은 소개 문구 들어갈 자리입니다. </p>
        </div>
        
        <div class="col-xs-4 col-md-2">
            <h6><a href="#">Home</a></h6>
            <br/>
            <h6><a href="#">Reservation</a></h6>
        </div>

        <div class="col-xs-4 col-md-2">
            <h6><a href="#">Food</a></h6>
            <ul class="footer-links">
            <li><a href="#">Steak</a></li>
            <li><a href="#">Pasta</a></li>
            <li><a href="#">Drink</a></li>
          </ul>
        </div>

        <div class="col-xs-4 col-md-2">
          <h6>Other</h6>
          <ul class="footer-links">
            <li><a href="#">Notice</a></li>
            <li><a href="#">FAQ</a></li>
          </ul>
        </div>
      </div>
      <hr>
    </div>
    <div class="container">
      <div class="row">
        <div class="col-md-4 col-sm-3 col-xs-6">
          <p class="footer-text">대전시 서구 계룡로 491번길 86 (둔산동 1221번지)</p>
          <p class="footer-text">Copyright &copy; 2017 All Rights Reserved by SaJo.</p>
        </div>
        <div class="col-md-4 col-sm-3 col-xs-6">
          <a href="#">개인정보처리방침</a> | <a href="#">이용약관</a> | <a href="#">광고/제휴문의</a>
          <p>사업자 등록 번호 : 111-11-111</p>
        </div>

        <div class="col-md-4 col-sm-6 col-xs-12">
          <ul class="social-icons">
            <li><a class="facebook" href="#"><i class="fa fa-facebook"></i></a></li>
            <li><a class="twitter" href="#"><i class="fa fa-twitter"></i></a></li>
            <li><a class="dribbble" href="#"><i class="fa fa-dribbble"></i></a></li>
            <li><a class="linkedin" href="#"><i class="fa fa-linkedin"></i></a></li>   
          </ul>
        </div>
      </div>
    </div>
    <!-- footer End -->
</footer>

<script>

var code = "";


$(document).ready(function(){
   //회원가입 버튼(회원가입 기능 작동)
   $(".sign_up").click(function(){
       /* 입력값 변수 */
        var id = $('.id_input').val();                 // id 입력란
        var pw = $('.pw_input').val();                // 비밀번호 입력란
        var pwck = $('.pwck_input').val();            // 비밀번호 확인 입력란
        var name = $('.user_input').val();            // 이름 입력란
        var birth = $('.user_birth').val();           // 생년월일 입력란
        var tel = $('user_tel').val();              // 전화번호 입력란
        var mail = $('.mail_input').val();            // 이메일 입력란
        var addr = $('.email_check').val();        // 이메일 확인란
        
        
       $("#join_form").attr("action", "home.do");
       $("#join_form").submit();
   });
});

//아이디 중복검사
$('.id_input').on("propertychange change keyup paste input", function(){

   var memberId = $('.id_input').val();         // .id_input에 입력되는 값
   var data = {memberId : memberId}            // '컨트롤에 넘길 데이터 이름' : '데이터(.id_input에 입력되는 값)'
   
   $.ajax({
      type : "post",
      url : "/memberIdChk",
      data : data,
      success : function(result){
          //console.log("성공 여부" + result);
          
         // console.log("성공 여부" + result);
         if(result != 'fail'){
            $('.id_input_rea').css("display","none");
            $('.id_input_ref').css("display", "none");            
         } else {
            $('.id_input_ref').css("display","inline-block");
            $('.id_input_rea').css("display", "none");            
         }
         
      }// success 종료
   }); // ajax 종료      

});// function 종료

/* 로그인 버튼 클릭 메서드 */
$(".login_button").click(function(){
    
   // alert("로그인 버튼 작동");
    
    $("#login_form").attr("action", "home.do");
     $("#login_form").submit();
});

/* 인증번호 이메일 전송 */
$(".mail_check_button").click(function(){
    var email = $(".mail_input").val();        // 입력한 이메일
    var cehckBox = $(".mail_check_input");        // 인증번호 입력란
    var boxWrap = $(".mail_check_input_box");    // 인증번호 입력란 박스
    
    
    $.ajax({
           
           type:"GET",
           url:"mailCheck?email=" + email,
           success:function(data){
               console.log("data : " + data); 
               cehckBox.attr("disabled",false);
               boxWrap.attr("id", "mail_check_input_box_true");
               code = data;
           }
                   
       });
});



/* 인증번호 비교 */
$(".mail_check_input").blur(function(){
    var inputCode = $(".mail_check_input").val();        // 입력코드    
    var checkResult = $("#mail_check_input_box_warn");    // 비교 결과   
    
    if(inputCode == code){                            // 일치할 경우
           checkResult.html("인증번호가 일치합니다.");
           checkResult.attr("class", "correct");        
       } else {                                            // 일치하지 않을 경우
           checkResult.html("인증번호를 다시 확인해주세요.");
           checkResult.attr("class", "incorrect");
       }    
   
});
 

</script>

</html>