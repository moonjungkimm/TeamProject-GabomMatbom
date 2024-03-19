<%@page import="java.math.BigInteger"%>
<%@page import="java.security.SecureRandom"%>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../inc/header.jsp"%>
<!-- header -->
<!-- header -->
<!-- header -->

<%
 	/*http://15.164.164.72:8080/Team_GYMG/naver_login.jin*/
    String clientId = "jjoG5L0Odeyao6UOPCVc";//애플리케이션 클라이언트 아이디값";
    String redirectURI = URLEncoder.encode("http://localhost:8080/Team_GYMG/naver_login.jin", "UTF-8");
    // String redirectURI = URLEncoder.encode("http://15.164.164.72:8080/Team_GYMG/naver_login.jin", "UTF-8");
    SecureRandom random = new SecureRandom();
    String state = new BigInteger(130, random).toString();
    String apiNaver_URL = "https://nid.naver.com/oauth2.0/authorize?response_type=code";
    apiNaver_URL += "&client_id=" + clientId;
    apiNaver_URL += "&redirect_uri=" + redirectURI;
    apiNaver_URL += "&state=" + state;
    session.setAttribute("state", state);
    
    String apiKakao_URL="https://kauth.kakao.com/oauth/authorize?response_type=code&";
    apiKakao_URL+="client_id=5311dcef4df09cce6029d72479addf8c";
    apiKakao_URL+="&redirect_uri=http://localhost:8080/Team_GYMG/Kakao_login.jin";
    // apiKakao_URL+="&redirect_uri=http://15.164.164.72:8080/Team_GYMG/Kakao_login.jin";
%>






<style>

* {
	padding: 0;
	margin: 0;
}

a {
	text-decoration: none;
	color: currentColor;
}

a:link, a:visited, a:hover, a:focus {
	text-decoration: none;
	color: currentColor;
}

body {
	font-family: "Malgun Gothic", dotum, sans-serif;
}

li {
	list-style-type: none;
}

.join_container {
	/* border: 1px solid red; */
	width: 100%;
	height: 1200px;
	padding :  100px 0;
}

.login_box {
	width: 575px;
	height: 856px;
	border: 1px solid #DDDDDD;
	border-radius: 10px;
	margin: 0 auto;
	margin-top: 50px;
	box-sizing: border-box;
	padding: 80px 0;
}

.inner_container {
	width: 425px;
	margin: 0 auto;
}

.row_box {
	/* border: 1px solid black; */
	height: 40px;
	text-align: center;
}

.row_box2 {
	/* border: 1px solid black; */
	height: 65px;
	text-align: center;
}

.row1 {
	color: #FD9B36;
	font-size: 34px;
	font-weight: bold;
}

.row2 {
	height: 40px;
}

.row3 {
	text-align: left;
}

.btn {
	border: none;
	height: 50px;
	line-height: 40px; 
	font-size: 16px;
}

.btn1 {
	background-color: #FD9B36;
	color: white;
}

.btn2 {
	background-color: #FEE500;
	color: black;
}

.btn2:hover {
	background-color: #D6C101;
	color: white;
}

.btn3 {
	background-color: #03C75A;
}

.back {
	background-color: #d8d5d5;
	line-height: 40px;
	border-radius: 15px;
	text-align: center;
	font-size: 14px;
	color: #515151;
}

.hover:hover {
	color: #adadad;
}
.header_column1 a {
    color: #fd9b36;
}
.form-check{
	
}
.form-check-label{
	line-height: 23px;
}

</style>
<div class="ye-container">
	<div class="join_container">

		<div class="login_box">
			<div class="inner_container">
				<div class="row_box row1">로그인</div>
				<div class="row_box"></div>
				<div class="row_box"></div>
				<div class="row_box">
					<div class="form-floating mb-3 mt-3">
						<input type="email" class="form-control" id="user_id"
							placeholder="email" name="user_id"> <label
							for="email">아이디(이메일)</label>
					</div>

				</div>
				<div class="row_box"></div>
				<div class="row_box">
					<div class="form-floating mt-3 mb-3">
						<input type="password" class="form-control" id="user_pw"
							placeholder="password" name="user_pw"> <label
							for="user_pw">패스워드</label>
					</div>

				</div>

				<div class="row_box row2"></div>
				<div class="row_box row3">
					<div class="form-check">
					<div>
					<input type="checkbox" id="remember_id" name="remember_id" class="form-check-input" />
                    <label for="remember_id" class="form-check-label">아이디 기억하기</label>
                    </div>
                    <div>
					<input type="checkbox" id="remember_login" name="remember_login" class="form-check-input" /> 
					<label for="remember_login" class="form-check-label" >로그인 유지</label>
					</div>
					</div>
				</div>
				<div class="row_box2"></div>
				<div class="row_box2">
					<div class="d-grid">
						<button type="button" id="normal_login_btn" class="btn btn-warning btn-block btn1">로그인</button>
					</div>

				</div>
				<div class="row_box2">
					<div class="d-grid">
						<a href="<%=apiKakao_URL%>" id="kakao_login_btn" class="btn btn-primary btn-block btn2">카카오 로그인</a>
					</div>
				</div>
				<div class="row_box2">
					<div class="d-grid">
						<a href="<%=apiNaver_URL%>" id="naver_login_btn" class="btn btn-success btn-block btn3">네이버 로그인</a>
					</div>
				</div>
				<div class="row_box"></div>

				<div class="back">
					<a href="GoToFind_id1Page.jin" class="hover">아이디 찾기</a> | 
					<a href="GoToFind_pass1Page.jin" class="hover">비밀번호 찾기</a> | 
					<a href="GoToJoin1Page.jin" class="hover">회원가입</a>
				</div>
				<div class="row_box2"></div>

			</div>
		</div>
	</div>
</div>
<script>
// button
let normal_login_btn = document.querySelector("#normal_login_btn");
let kakao_login_btn = document.querySelector("#kakao_login_btn");
let naver_login_btn = document.querySelector("#naver_login_btn");

// input
let user_id = document.querySelector("#user_id");
let user_pw = document.querySelector("#user_pw");
let remember_id = document.querySelector("#remember_id");
let remember_login = document.querySelector("#remember_login");


normal_login_btn.addEventListener("click", () =>{

	console.log("remember_id.checked : "+remember_id.checked);
	console.log("remember_login.checked : "+remember_login.checked);
	
	 $.ajax({
			url : "user_login.jin",
			type : "POST",
			dataType : "text",
			data : {
				"login_type" : 1,//normal-1
				"user_id": user_id.value,
				"user_pw": user_pw.value,
				"remember_id": remember_id.checked,
				"remember_login": remember_login.checked
				
			},
			error : function(xhr, status, msg) {
				alert("오류가 발생했습니다. 관리자에게 문의해주세요.\n"+"status : "+status + "/n" +"msg : "+ msg);
			},
			success : function(data){
				
				console.log(data);
				
				if(data=="2000"){
					
					alert("로그인 성공");
				 	location.href="index.ye";	
					
				}else{
					alert("로그인 실패 : 아이디와 비밀번호를 다시 확인해주세요.");
				}
				
				
				
				
			}
		});
	
	
	

});


if(getCookieValue("remember_id")){
	  remember_id.checked=true;
	  user_id.value = getCookieValue("remember_id");
}

//아아이디 기억하기 설정된 쿠키 값 확인하기
function getCookieValue(cookieName) {
    // 쿠키 문자열을 가져옴
    var cookieString = document.cookie;

    // 쿠키를 ; 기준으로 분리
    var cookies = cookieString.split(';');

    // 쿠키를 순회하며 원하는 쿠키를 찾음
    for (var i = 0; i < cookies.length; i++) {
        var cookie = cookies[i].trim();

        // 쿠키의 이름과 값으로 분리
        var cookieParts = cookie.split('=');
        var name = cookieParts[0];
        var value = cookieParts[1];

        // 원하는 쿠키를 찾으면 값을 반환
        if (name === cookieName) {
            return value;
        }
    }

    // 해당 쿠키가 없으면 null 반환
    return null;
}








</script>





	<!-- footer -->
	<!-- footer -->
	<!-- footer -->
	<%@ include file="../inc/footer.jsp"%>