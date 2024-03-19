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
	height: 1000px;
	padding: 100px 0;
}

.login_box {
	width: 1000px;
	height: 856px;
	/*border: 1px solid #DDDDDD;*/
	border-radius: 10px;
	margin: 0 auto;
	margin-top: 0px;
	box-sizing: border-box;
	padding: 0;
}

.inner_container {
	width: 805px;
	margin: 0 auto;
}

.row_box {
	/*border: 1px solid black;*/
	height: 40px;
	text-align: center;
}

.row_box2 {
	/*border: 1px solid black;*/
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
	color: black;
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
.welcome_img{
	padding-top : 80px;
	width : 150px;
}
.row4{
	font-size : 48px;
	color : #FD9B36;
	
}
.row5{
font-size : 30px;
	color : #999999;
	line-height : 75px;
}

.row7{
margin : 0 auto;
	width : 425px;
}
.btn{
line-height : 41px;
color : white;
}

</style>


<div class="ye-container">
	<div class="join_container">

		<div class="login_box">
			<div class="inner_container">
				<div class="row_box row1"><img class="welcome_img" src="images/welcome.svg"></div>
				<div class="row_box"></div>
				<div class="row_box"></div>
				<div class="row_box"></div>
				<div class="row_box"></div>
				<div class="row_box"></div>

				<div class="row_box row2"></div>
				
				<div class="row_box2 row4">가봄,맛봄에 오신 것을 환영합니다!</div>
				<div class="row_box2 row5">가봄 ,맛봄 회원가입 방식을 선택해주세요.</div>
				<div class="row_box2 row6"></div>
				<div class="row_box2 row7">
					<div class="d-grid">
						<a href="GoToJoin2Page.jin" class="btn btn-warning btn-block btn1">일반
							가입</a>
					</div>

				</div>
				<div class="row_box2 row7">
					<div class="d-grid">
						<a href="<%=apiKakao_URL %>" class="btn btn-primary btn-block btn2">카카오로
							회원가입</a>
					</div>
				</div>
				<div class="row_box2 row7">
					<div class="d-grid">
						<a href="<%=apiNaver_URL %>" class="btn btn-success btn-block btn3">네이버로
							회원가입</a>
					</div>
				</div>
				<div class="row_box"></div>

				<div class="row_box2"></div>


			</div>
		</div>
	</div>
</div>





	<!-- footer -->
	<!-- footer -->
	<!-- footer -->
	<%@ include file="../inc/footer.jsp"%>