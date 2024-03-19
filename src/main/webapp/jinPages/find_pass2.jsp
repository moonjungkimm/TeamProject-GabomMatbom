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
	height: 510px;
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
	grid-template-columns: 1fr 2fr 0.8fr;
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
	width: 100%;
	height: 45px;
}

.mygray {
	color: #FD9B36;
	font-size : 30px;
	text-align: center;
}
.mygray2 {
	
	font-size : 18px;
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
	cursor : pointer;
}

.topbox_section1 {
	border-right: 4px solid #FD9B36;
	border-radius: 36px 0 0 0;
	
	
}

.topbox_section2 {
	/*border-right: 4px solid #FD9B36;*/
	width : 449px;
	border-radius: 0 36px 0 0;
	font-weight: bold;
	background-color: #ffcf9e;
}

input::placeholder {
	color: #cccccc;
}
/* 회원가입form 유효성 검사 관련 CSS */
/* 회원가입form 유효성 검사 관련 CSS */
/* 회원가입form 유효성 검사 관련 CSS */
.check_message {
	margin-top : 5px;
	font-size: 16px;
	/*border : 1px solid red;*/
	width: 100%;
	text-align: right;
	line-height: 18px;
	position: relative;
}
.check_message p{
	line-height: 22px;
}
.check_success {
	position: absolute;
	color: rgb(56, 255, 56);
	top: -39px;
	right: 12px;
	font-size: 25px;
}

.check_ing {
	position: absolute;
	color: #A7C5FF;
	top: -39px;
	right: 12px;
	font-size: 25px;
	
}

.check_fail {
	position: absolute;
	color: rgb(252, 87, 16);
	top: -39px;
	right: 12px;
	font-size: 25px;
}

.ing {
	color: #A7C5FF;
	margin-bottom: 0;
}

.success {
	color: rgb(56, 255, 56);
	margin-bottom: 0;
}

.fail {
	color: rgb(252, 87, 16);
	margin-bottom: 0;
}
.header_column1 a {
    color: #fd9b36;
}

/* 회원가입form 유효성 검사 관련 CSS */
/* 회원가입form 유효성 검사 관련 CSS */
/* 회원가입form 유효성 검사 관련 CSS */
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
		<div class="inner_container">

			<form action="GoToFind_pass3Page.jin?user_id=${param.user_id}" id="find_pass2_form" method="post">
				<div class="main_form">
					<div class="item column1"></div>
					<div class="item column2 mygray">${param.user_id}</div>
					<div class="item column3"></div>
					<!-- #################################################### -->

					<div class="item column1">
						<label for="user_name" class="form-label"></label>
					</div>
					<div class="item column2 mygray2">
						이메일로 전송된 인증번호를 확인해주세요
					</div>
					<div class="item column3"></div>
					<!-- #################################################### -->
					<!-- #################################################### -->
					<!-- #################################################### -->
					<div class="item column1">
						<label for="user_phone" class="form-label">인증번호</label>
					</div>
					<div class="item column2 phone_check">
						<input type="tel" id="user_phone" name="user_phone"
							class="form-control middle_input sms_4number" ><label
							for="user_phone" class="check_message"></label>
					</div>
					<div class="item column3">
					<button type="button" class="btn btn-warning btn_sms4">인증하기</button>
					</div>
					<!-- #################################################### -->
					<div class="item column1"></div>
					<div class="item column2"></div>
					<div class="item column3"></div>
					
					
					<!-- #################################################### -->



					<div class="item column1"></div>
					<div class="item column2">
						<input type="submit" class="btn btn-warning btn-block last" value="비밀번호 재설정">
					</div>
					<div class="item column3"></div>
					<!-- #################################################### -->

				</div>
			</form>
		</div>
	</div>
</div>
</div>
<script type="text/javascript">
let btn_sms4 = document.querySelector(".btn_sms4");
let sms_4number = document.querySelector(".sms_4number");
let email_verify_ok = false;
let phone_form_label_Check = document.querySelector(".phone_check .check_message");
let find_pass2_form = document.querySelector("#find_pass2_form");

//메일 인증번호 확인
btn_sms4.addEventListener("click", () => {

	if(sms_4number.value.length ==4){
		console.log("4넘버 일치체크");
		
		$.ajax({
			url : "receiveemailverify.jin",
			type : "POST",
			dataType : "text",
			data : {
				input4number : sms_4number.value
			},
			error : function(xhr, status, msg) {
				alert("오류가 발생했습니다. 관리자에게 문의해주세요.\n"+"status : "+status + "/n" +"msg : "+ msg);
			},
			success : function(data){
				
				console.log(data);
				if(data=="2000"){
				
				console.log("이메일 문자인증 과정 최종 통과!!");
					
					email_verify_ok = true;
					
					let p = document.createElement("p");
			        p.innerHTML = "이메일 인증 완료!";
			        p.classList.add("success");
			        phone_form_label_Check.innerHTML="";
			        phone_form_label_Check.appendChild(p);
					
					let success = document.createElement("div");
			        success.innerHTML = "<i class='fa-regular fa-circle-check'></i>";
			        success.classList.add("check_success");
			        phone_form_label_Check.appendChild(success);
			        
			        
			        
					 var lastElement = document.querySelector(".last");
					

// 요소가 존재한다면 포커스를 설정합니다.
if (lastElement) {
  lastElement.focus();
}
			        
				
				}else{
					email_verify_ok = false;
					phone_form_label_Check.innerHTML = "";
			        let p = document.createElement("p");
			        p.innerHTML = "인증번호가 일치하지 않습니다";
			        p.classList.add("fail");
			        phone_form_label_Check.appendChild(p);
			        
			        let fail = document.createElement("div");
			        fail.innerHTML = "<i class='fa-regular fa-circle-xmark'></i>";
			        fail.classList.add("check_fail");
			        phone_form_label_Check.appendChild(fail);
					
					
					
					
				}
				
				
				
				
			}
		});
		
			       
	}else{
		email_verify_ok = false;
		alert("인증번호 4자리를 입력해주세요");
	}
});


find_pass2_form.addEventListener('submit', function(event) {
	
	
	if(!email_verify_ok ){
		alert("이메일 인증을 확인해주세요");
		event.preventDefault();
		return;
	}
	
	
	
	
});






</script>






<!-- footer -->
<!-- footer -->
<!-- footer -->
<%@ include file="../inc/footer.jsp"%>