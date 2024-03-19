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
input[type='email']::placeholder {
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

			<form action="GoToFind_pass2Page.jin" id="find_pass_form1" method="post">
				<div class="main_form">
					<div class="item column1"></div>
					<div class="item column2 mygray">비밀번호를 찾을 아이디를 입력해주세요</div>
					<div class="item column3"></div>
					<!-- #################################################### -->

					<div class="item column1">
						<label for="user_id" class="form-label">아이디(이메일)</label>
					</div>
					<div class="item column2 id_check">
						<input type="email" id="user_id" name="user_id"
							class="form-control middle_input" placeholder="nicetomeetyou@welcome.com" >
						<label for="user_id" class="check_message"></label>
					</div>
					<div class="item column3"></div>
					<!-- #################################################### -->
					<!-- #################################################### -->
					<!-- #################################################### -->
					<div class="item column1"></div>
					<div class="item column2"></div>
					<div class="item column3"></div>
					<!-- #################################################### -->
					<!-- #################################################### -->

					<div class="item column1"></div>
					<div class="item column2">
						<input type="submit" class="btn btn-warning btn-block" value="확인">
					</div>
					<div class="item column3"></div>
					<!-- #################################################### -->

				</div>
			</form>
		</div>
	</div>
</div>
</div>
<script>
let id_ok = false;
let id_verify_ok = false;
let email_form = document.querySelector("#user_id");
let email_form_label_Check = document.querySelector(".id_check .check_message");
let id_check_btn = document.querySelector("#find_pass_form1");

//1. 아이디(email) 조건 확인
email_form.addEventListener("input", () =>{

    let email = email_form.value;
    let emailRegex = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
    
    if (email_form.value.length != 0) {
        if (emailRegex.test(email)) {
          email_form_label_Check.innerHTML = "";
          let p = document.createElement("p");
          p.innerHTML = "이메일 형식 충족, 중복확인 진행해주세요";
          p.classList.add("ing");
          email_form_label_Check.appendChild(p);
    
          let success = document.createElement("div");
          success.innerHTML = "<i class='fa-regular fa-circle-right'></i>";
          success.classList.add("check_ing");
          email_form_label_Check.appendChild(success);

          id_ok = true;
          id_verify_ok = false;

        } else {
          email_form_label_Check.innerHTML = "";
          let p = document.createElement("p");
          p.innerHTML = "이메일 형식으로 입력해주세요";
          p.classList.add("fail");
          email_form_label_Check.appendChild(p);
    
          let fail = document.createElement("div");
          fail.innerHTML = "<i class='fa-regular fa-circle-xmark'></i>";
          fail.classList.add("check_fail");
          email_form_label_Check.appendChild(fail);

          id_ok = false;
          id_verify_ok = false;
        }
      } else {
        email_form_label_Check.innerHTML = "";
        id_ok = false;
        id_verify_ok = false;
      }

});


//1-1 아이디 중복 검사
id_check_btn.addEventListener("submit",function(event){
	
	event.preventDefault();
	
	if(id_ok){
		
		 $.ajax({
				url : "IDduplicateCheck.jin",
				type : "POST",
				dataType : "text",
				data : {
					inputID : email_form.value
				},
				error : function(xhr, status, msg) {
					alert("오류가 발생했습니다. 관리자에게 문의해주세요.\n"+"status : "+status + "/n" +"msg : "+ msg);
				},
				success : function(data){
					
					console.log(data);
					console.log(typeof(data));
					
					if(data>= 1){
						  email_form_label_Check.innerHTML = "";
				          let p = document.createElement("p");
				          p.innerHTML = "이메일로 인증번호 전송중...";
				          p.classList.add("success");
				          email_form_label_Check.appendChild(p);
				    
				          let success = document.createElement("div");
				          success.innerHTML = "<i class='fa-regular fa-circle-check'></i>";
				          success.classList.add("check_success");
				          email_form_label_Check.appendChild(success);
				          
				          id_verify_ok = true;
				          
				          location.href="GoToFind_pass2Page.jin?user_id="+email_form.value;
				          
				          
				          
				          
						
					}else{
						 	
						  alert("일치하는 회원 아이디가 없습니다 \n다시 확인해주세요");
						  email_form_label_Check.innerHTML = "";
				          let p = document.createElement("p");
				          p.innerHTML = "일치하는 아이디 없음";
				          p.classList.add("fail");
				          email_form_label_Check.appendChild(p);
				    
				          let fail = document.createElement("div");
				          fail.innerHTML = "<i class='fa-regular fa-circle-xmark'></i>";
				          fail.classList.add("check_fail");
				          email_form_label_Check.appendChild(fail);

				          id_verify_ok = false;
						
						
					}
				}
			});
		
		
		
		
	}else{
	  	
	  email_form_label_Check.innerHTML = "";
      let p = document.createElement("p");
      p.innerHTML = "이메일 형식을 만족한뒤 확인해주세요";
      p.classList.add("fail");
      email_form_label_Check.appendChild(p);

      let fail = document.createElement("div");
      fail.innerHTML = "<i class='fa-regular fa-circle-xmark'></i>";
      fail.classList.add("check_fail");
      email_form_label_Check.appendChild(fail);

	}
	
	
	
});





</script>





<!-- footer -->
<!-- footer -->
<!-- footer -->
<%@ include file="../inc/footer.jsp"%>