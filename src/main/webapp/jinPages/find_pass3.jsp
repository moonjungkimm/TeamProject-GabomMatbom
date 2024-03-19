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
	/*height: 510px;*/
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
	/*height: 310px;*/
	margin: 0 auto;
	display: grid;
	grid-template-columns: 1fr 2fr 0.8fr;
	grid-template-rows: 1fr 1fr 1fr 1fr;
	grid-gap: 20px;
	row-gap : 30px;
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
	font-size : 22px;
	
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
  color: #rgb(83, 81, 81);
}
.result_id{
line-height : 30px;
	font-size : 18px;
	color : #FD9B36;
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

			<form action="changeUserPass.jin?user_id=${param.user_id}" id="changePassForm"  method="post">
				<div class="main_form">
					<div class="item column1"></div>
					<div class="item column2 mygray">새로운 비밀번호를 설정해주세요<br>
					<p class="result_id">( ID : ${param.user_id} )</p></div>
					<div class="item column3"></div>
					<!-- #################################################### -->

					<div class="item column1">
						<label for="user_pw" class="form-label">새 비밀번호</label>
					</div>
					<div class="item column2 pw_check">
						<input type="password" id="user_pw" name="user_pw"
							class="form-control middle_input" > <label for="user_pw"
							class="check_message"></label>
					</div>
					<div class="item column3"></div>
					<!-- #################################################### -->
					<!-- #################################################### -->
					<!-- #################################################### -->
					<div class="item column1">
						<label for="user_pw2" class="form-label">새 비밀번호 확인</label>
					</div>
					<div class="item column2 pw2_check">
						<input type="password" id="user_pw2" name="user_pw2"
							class="form-control middle_input" > <label for="user_pw2"
							class="check_message"></label>
					</div>
					<div class="item column3">
					
					</div>
					<!-- #################################################### -->
					<div class="item column1"></div>
					<div class="item column2"></div>
					<div class="item column3"></div>
					
					
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

let pass_ok = false;
let pass2_ok = false;

let pass_form = document.querySelector("#user_pw");
let pass2_form = document.querySelector("#user_pw2");

let pass_form_label_Check = document.querySelector(".pw_check .check_message");
let pass2_form_label_Check = document.querySelector(".pw2_check .check_message");

let changePassForm = document.querySelector("#changePassForm");


//4. PASS 조건 확인
let passPattern = /[!~@#$%^&*\-_=+]/g;
pass_form.addEventListener("input", () => {
  if (pass_form.value.length != 0) {
    if (4 <= pass_form.value.length && pass_form.value.length <= 20) {
  	  let specialCharacterCount = 0;
  	  let matches = pass_form.value.match(passPattern);
  	  if (matches) {
  	    specialCharacterCount = matches.length;
  	  }
  	  if (specialCharacterCount >= 1 && specialCharacterCount <= 3) {
  		    pass_form_label_Check.innerHTML = "";
  	        let p = document.createElement("p");
  	        p.innerHTML = "비밀번호 조건 충족 <i class='fa-solid fa-square'></i><i class='fa-solid fa-square'></i><i class='fa-solid fa-square'></i>";
  	        p.classList.add("success");
  	        pass_form_label_Check.appendChild(p);
  	  
  	        let success = document.createElement("div");
  	        success.innerHTML = "<i class='fa-regular fa-circle-check'></i>";
  	        success.classList.add("check_success");
  	        pass_form_label_Check.appendChild(success);

  		  }else{
  			
  			  pass_form_label_Check.innerHTML = "";
  		        let p = document.createElement("p");
  		        p.innerHTML = "특문 !~@#$%^&*-_=+ 1~3자 필요 <i class='fa-regular fa-square'></i><i class='fa-solid fa-square'></i><i class='fa-solid fa-square'></i>";
  		        p.classList.add("fail");
  		        pass_form_label_Check.appendChild(p);
  		  
  		        let fail = document.createElement("div");
  		        fail.innerHTML = "<i class='fa-regular fa-circle-xmark'></i>";
  		        fail.classList.add("check_fail");
  		        pass_form_label_Check.appendChild(fail);

  		        pass_ok = false;
  			  
  			  
  			  
  		  } 
  	  
     
      pass_ok = true;
    } else {
      pass_form_label_Check.innerHTML = "";
      let p = document.createElement("p");
      p.innerHTML = "비밀번호는 4~ 20자 <i class='fa-regular fa-square'></i><i class='fa-regular fa-square'></i><i class='fa-solid fa-square'></i>";
      p.classList.add("fail");
      pass_form_label_Check.appendChild(p);

      let fail = document.createElement("div");
      fail.innerHTML = "<i class='fa-regular fa-circle-xmark'></i>";
      fail.classList.add("check_fail");
      pass_form_label_Check.appendChild(fail);

      pass_ok = false;
    }
  } else {
    pass_form_label_Check.innerHTML = "";
    pass_ok = false;
  }
  pass_match()
});



//5. PASS2 조건 확인
pass2_form.addEventListener("input", () => {
  pass_match();
});

function pass_match(){
  if (pass2_form.value.length != 0) {
      if (pass_form.value == pass2_form.value) {
        pass2_form_label_Check.innerHTML = "";
        let p = document.createElement("p");
        p.innerHTML = "비밀번호 일치";
        p.classList.add("success");
        pass2_form_label_Check.appendChild(p);
  
        let success = document.createElement("div");
        success.innerHTML = "<i class='fa-regular fa-circle-check'></i>";
        success.classList.add("check_success");
        pass2_form_label_Check.appendChild(success);

        pass2_ok = true;
      } else {
        pass2_form_label_Check.innerHTML = "";
        let p = document.createElement("p");
        p.innerHTML = "비밀번호 불일치";
        p.classList.add("fail");
        pass2_form_label_Check.appendChild(p);
  
        let fail = document.createElement("div");
        fail.innerHTML = "<i class='fa-regular fa-circle-xmark'></i>";
        fail.classList.add("check_fail");
        pass2_form_label_Check.appendChild(fail);

        pass2_ok = false;
      }
    } else {
      pass2_form_label_Check.innerHTML = "";
      pass2_ok = false;
    }
}


changePassForm.addEventListener("submit", (event) => {

	if(!pass_ok ){
		alert("pass 입력을 확인해주세요.");
		event.preventDefault();
		return;
	}
	if(!pass2_ok ){
		alert("pass2 입력을 확인해주세요.");
		event.preventDefault();
		return;
	}
	
	
	
});













</script>





<!-- footer -->
<!-- footer -->
<!-- footer -->
<%@ include file="../inc/footer.jsp"%>