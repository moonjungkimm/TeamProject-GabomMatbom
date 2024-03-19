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

.join_container {
	/* border: 1px solid red; */
	width: 100%;
	height: 1600px;
	/*padding: 100px 0;*/
}

.login_box {
	width: 900px;
	height: 1182px;
	/*border: 4px solid #DDDDDD;*/
	border-radius: 40px;
	margin: 0 auto;
	margin-top: 50px;
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
	width: 720px;
	height: 450px;
	margin: 35px auto;
	display: grid;
	grid-template-columns: 1fr 2fr 1fr;
	grid-gap: 20px;
}

.item {
	/*border: 1px solid blue;*/
	height: 50px;
}

label {
	font-size: 18px;
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

.readonly {
	background-color: #E7E7E7;
}

.readonly:focus {
	background-color: #E7E7E7;
}

input {
	height: 45px;
}

.pass_intro {
	width: 670px;
	margin: 80px auto;
	margin-bottom: 50px;
	font-size: 21px;
	color: #FD9B36;
	line-height: 40px;
	font-size: 21px
}

.pass_intro1 {
	font-size: 40px;
	width: 750px;
}

.pass_intro2 {
	width: 750px;
	margin: 40px auto;
}

.pass_intro3 {
	width: 750px;
	margin: 40px auto;
}

.column1 {
	text-align: right;
}

.main_form2 {
	/*border: 1px solid red;*/
	height: 300px;
}

.btn-cancel {
	width: 162px;
	height: 51px;
	line-height: 39px;
	background-color: #D9D9D9;
	border: none;
	float: left;
	margin-left: 265px;
}

.btn-save {
	width: 162px;
	height: 51px;
	background-color: #FD5A36;
	border: none;
	float: left;
	margin-left: 50px;
}

hr {
	border: none; /* 기본 선 제거 */
	border-top: 2px solid #BBBBBB; /* 원하는 선 색 및 두께 지정 */
}

.tab {
	display: grid;
	grid-template-columns: 1fr 1fr 1fr;
}

.tab:after {
	clear: both;
}

.tab_item {
	line-height: 55px;
	background-color: #FFF5EB;
	color: #FD9B36;
	font-size: 20px;
	text-align: center;
	cursor: pointer;
}

.tab_1 {
	
}

.tab_2 {
	background-color: #FD9B36;
	color: white;
}

.tab_3 {
	
}

.profile {
	width: 720px;
	height: 265px;
	/*border: 1px solid black;*/
	margin: 100px auto;
	display: grid;
	grid-template-columns: 1fr 5fr;
}

.profile_sec1 {
	/*border: 1px solid blue;*/
	
}

.profile_sec2 {
	/*border: 1px solid blue;*/
	
}

.profile_img {
	width: 80px;
	margin: 0 auto;
}

.profile_row2, .profile_row4 {
	color: #909090;
	font-size: 14px;
}

.profile_row2 {
	margin-top: 3px;
	margin-bottom: 35px;
}

.profile_row4 {
	margin-top: 3px;
}

.no-resize {
	resize: none;
	height: 125px;
}

.readonly {
	cursor: pointer;
}
/* 회원가입form 유효성 검사 관련 CSS */
/* 회원가입form 유효성 검사 관련 CSS */
/* 회원가입form 유효성 검사 관련 CSS */
.check_message {
	margin-top: 5px;
	font-size: 16px;
	/*border : 1px solid red;*/
	width: 100%;
	text-align: right;
	line-height: 18px;
	position: relative;
}

.check_message p {
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
	<div class="join_container">

		<div class="login_box">
			<div class="inner_container">



				<div class="tab">
					<a href="GoToMic_tab1Page.jin"><div class="tab_item tab_1">회원정보
							변경</div></a> <a href="GoToMic_tab2Page.jin"><div class="tab_item tab_2">비밀번호
							변경</div></a> <a href="GoToMic_tab3Page.jin"><div class="tab_item tab_3">회원
							탈퇴</div></a>
				</div>


				<form action="user_pass_change.jin" method="POST" id="pass_change_form">
					<input type="hidden" name="user_no" value="${login_user_dto.user_no }">
					<div class="pass_intro1 pass_intro">비밀번호 변경 안내</div>
					<div class="pass_intro2 pass_intro">
						귀하의 계정 보안을 위해 주기적인 비밀번호 변경을 권장합니다.<br> 새 비밀번호를 설정할 때는 다음 사항을
						유의해 주세요
					</div>
					<div class="pass_intro3 pass_intro">
						1. 강력한 비밀번호 사용: 비밀번호는 최소 8자 이상이어야 하며, 대문자, 소문자, 숫자, 특수 문자를 조합하여
						생성해 주세요.<br> 2. 유추하기 어려운 비밀번호 선택: 생일, 전화번호, 주소와 같이 타인이 쉽게 유추할
						수 있는 정보는 사용하지 마세요.<br> 3. 정기적인 변경: 보안을 유지하기 위해 정기적으로 비밀번호를
						변경하는 것이 좋습니다.<br> 4. 다른 사이트와의 중복 사용 금지: 하나의 비밀번호를 여러 사이트에
						동일하게 사용하지 마세요.<br>
					</div>

					<div class="pass_intro4 pass_intro">아래에 현재 비밀번호와 새 비밀번호를 입력한
						후, '비밀번호 변경' 버튼을 클릭해 주세요. 변경 후에는 자동으로 로그아웃되며, 새 비밀번호로 다시 로그인해야
						합니다.</div>
					<div class="main_form main_form2">

						<div class="item column1">
							<label for="user_pw" class="form-label">기존 비밀번호</label>
						</div>
						<div class="item column2 ">
							<input type="password" id="user_pw_before" name="user_pw_before"
								class="form-control middle_input">
						</div>
						<div class="item column3"></div>
						<!-- #################################################### -->

						<div class="item column1">
							<label for="user_pw" class="form-label">새 비밀번호</label>
						</div>
						<div class="item column2 pw_check">
							<input type="password" id="user_pw" name="user_pw"
								class="form-control middle_input"><label for="user_pw"
							class="check_message"></label>
						</div>
						<div class="item column3"></div>
						<!-- #################################################### -->

						<div class="item column1">
							<label for="user_pw" class="form-label">새 비밀번호 확인</label>
						</div>
						<div class="item column2 pw2_check">
							<input type="password" id="user_pw2" name="user_pw2"
								class="form-control middle_input"><label for="user_pw2"
							class="check_message"></label>
						</div>
						<div class="item column3"></div>
						<!-- #################################################### -->
					</div>
					<hr>
					<br> <br>

					<div class="reset">
						<input type="reset" class="btn btn-secondary btn-cancel" value="취소">
					</div>
					<div class="submit">
						<input type="submit" class="btn btn-danger btn-save" value="저장">
					</div>
					<div class="item column3"></div>
					<!-- #################################################### -->
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

    	        pass_ok = true;
    	        
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

//최종 폼 제출
let pass_change_form = document.getElementById("pass_change_form");
pass_change_form.addEventListener('submit', function(event) {
	
	console.log($("#user_pw_before").val());
	console.log($("#user_pw_before").val().length);
	
	if($("#user_pw_before").val().length < 8 ){
		alert("기존 비밀번호 입력을 확인해주세요.");
		event.preventDefault();
		return;
	}
	
	if(!pass_ok ){
		alert("새 비밀번호 입력을 확인해주세요.");
		event.preventDefault();
		return;
	}

	if(!pass2_ok ){
		alert("새 비밀번호 일치 여부를 확인해주세요.");
		event.preventDefault();
		return;
	}
	
	
	
	
});
</script>

<!-- footer -->
<!-- footer -->
<!-- footer -->
<%@ include file="../inc/footer.jsp"%>