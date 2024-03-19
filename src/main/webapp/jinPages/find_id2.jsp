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

.toptier_container {
	/* border: 1px solid red; */
	width: 100%;
	padding: 100px 0;
}

.toptier_box {
	width: 900px;
	height: 560px;
	border: 4px solid #FD9B36;
	border-radius: 0 0 40px 40px;
	margin: 0 auto;
	/*margin-top: 50px;*/
	margin-bottom: 100px;
	box-sizing: border-box;
	padding: 80px 0;
}

.inner_container {
	width: 100%;
	margin: 0 auto;
}

.row_box {
	/* border: 1px solid black; */
	height: 40px;
	text-align: center;
}

.row1 {
	color: #FD9B36;
	font-size: 34px;
	font-weight: bold;
}

.main_form {
	/*border: 1px solid black;*/
	width: 650px;
	height: 310px;
	margin: 0 auto;
	display: grid;
	grid-template-columns: 1fr 2fr 1fr;
	grid-template-rows: 1fr 1fr 1fr 1fr;
	grid-gap: 20px;
}

.item {
	/*border: 1px solid blue;*/
	height: 50px;
}

label {
	font-size: 16px;
	color: #FD9B36;
	line-height: 45px;
}

.btn {
	width: 147px;
	height: 45px;
	font-size: 18px;
	color: white;
	background-color: #FD9B36;
}

.btn-block {
	width: 100%;
}

.middle_input {
	width: 338px;
	height: 45px;
}

.mygray {
	color: #999999;
	text-align: center;
}

.toptier_topbox {
	margin: 0 auto;
	margin-top: 50px;
	border: 4px solid #FD9B36;
	border-radius: 40px 40px 0 0;
	margin-bottom: -4px;
	width: 900px;
	height: 150px;
}

.topbox {
	width: 443px;
	font-size: 22px;
	text-align: center;
	float: left;
	line-height: 142px;
	cursor: pointer;
}

.topbox_section1 {
	border-right: 4px solid #FD9B36;
	border-radius: 36px 0 0 0;
	font-weight: bold;
	background-color: #ffcf9e;
}

.topbox_section2 {
	
}

.your_id {
	width: 600px;
	height: 290px;
	border: 2px solid #d3d3d3;
	border-radius : 20px;
	margin: 0 auto;
	margin-bottom: 50px;
	
}

.message_box {
	text-align: center;
	margin-top : 60px;
	font-size: 20px;
	line-height : 50px;
	/*border: 2px solid #d3d3d3;*/
}
.result_id{
	color : #FD9B36;
	font-weight: bold;
	font-size : 30px;
	line-height : 70px;
}
</style>
<div class="ye-container">
<div class="toptier_container">
	<br> <br>
	<div class="row_box row1">아이디 / 비밀번호 찾기</div>
	<br>

	<div class="toptier_topbox">
		<a href="GoToFind_id1Page.jin"><div class="topbox_section1 topbox">아이디 찾기</div></a>
		<a href="GoToFind_pass1Page.jin"><div class="topbox_section2 topbox">비밀번호 찾기</div></a>
	</div>
	<div class="toptier_box">
		<div class="your_id">
			<div class="message_box">
				<p>회원님의 아이디는</p> 
				<p class="result_id">${find_id_result}</p>
				<p>입니다.</p>
			</div>
		</div>
		<div class="inner_container">


			<div class="main_form">


				<!-- #################################################### -->
				<!-- #################################################### -->

				<div class="item column1"></div>

				<!-- #################################################### -->
				<!-- #################################################### -->


				<div class="item column2">
					<button type="button" class="btn btn-warning btn-block">
					<a href="GoToLoginPage.jin">로그인하러 가기</a>
					</button>
				</div>

				<!-- #################################################### -->

			</div>

		</div>
	</div>
</div>
</div>





<!-- footer -->
<!-- footer -->
<!-- footer -->
<%@ include file="../inc/footer.jsp"%>