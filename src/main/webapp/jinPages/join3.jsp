<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../inc/header.jsp"%>
<!-- header -->
<!-- header -->
<!-- header -->







<style>
* {
	padding: 0;
	margin: 0;
}

a {
	text-decoration: none;
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

.welcome_img {
	padding-top: 80px;
	width: 150px;
}

.row4 {
	font-size: 48px;
	color: #FD9B36;
}

.row5 {
	font-size: 40px;
	color: #FD9B36;
	line-height: 105px;
}

.row6 {
	margin-top: 50px;
	color: #FD9B36;
	font-size: 24px;
}

.row7 {
	margin: 0 auto;
	margin-top: 50px;
	width: 425px;
}

.btn {
	border: none;
	line-height: 50px;
	font-size: 16px;
	color: white;
	background-color: #FD9B36;
}

.btn1 {
	color: white !important;
}
</style>


<div class="ye-container">
	<div class="join_container">

		<div class="login_box">
			<div class="inner_container">
				<div class="row_box row1">
					<img class="welcome_img" src="images/welcome.svg">
				</div>
				<div class="row_box"></div>
				<div class="row_box"></div>
				<div class="row_box"></div>
				<div class="row_box"></div>
				<div class="row_box"></div>

				<div class="row_box row2"></div>

				<div class="row_box2 row4">가봄,맛봄에 오신 것을 환영합니다!</div>
				<div class="row_box2 row5">회원 가입 완료!</div>
				<div class="row_box2 row6">가봄,맛봄의 다양한 서비스를 자유롭게 이용하실 수 있습니다.</div>
				<div class="row_box2 row7">
					<div class="d-grid">
						<a href="GoToLoginPage.jin" class="btn btn-warning btn-block btn1">로그인
							하러 가기</a>
					</div>

				</div>
				<div class="row_box2 row7">
					<div class="d-grid"></div>
				</div>
				<div class="row_box2 row7">
					<div class="d-grid"></div>
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