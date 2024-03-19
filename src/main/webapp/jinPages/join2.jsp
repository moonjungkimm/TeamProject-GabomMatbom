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
	height: 1500px;
	padding: 100px 0;
}

.login_box {
	width: 1032px;
	height: 1182px;
	border: 4px solid #DDDDDD;
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
	height: 800px;
	margin: 100px auto;
	display: grid;
	grid-template-columns: 1fr 2fr 1fr;
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
.column3_sms, .column3_location {
	position: relative;
}

/* sms 인증 메시지 창 관련 CSS */
/* sms 인증 메시지 창 관련 CSS */
/* sms 인증 메시지 창 관련 CSS */
.sms_check_wrapper {
	display: none;
}

.sms_check_wrapper .tri1 {
	z-index: 101;
	position: absolute;
	top: -65px;
	left: 70px;
}

.sms_check_wrapper .tri2 {
	z-index: 99;
	position: absolute;
	top: -70px;
	left: 64px;
}

.sms_check_window {
	z-index: 100;
	position: absolute;
	width: 400px;
	height: 200px;
	border: 3px solid #FD9B36;
	box-sizing: border-box;
	padding: 15px;
	padding-top : 25px;
	border-radius: 15px;
	top: -230px;
	left: 10px;
	background-color: white;
	border-radius: 15px;
}

.sms_redirect {
	width: 100%;
	height: 100%;
	/*border: 1px solid black;*/
	text-align: center;
}

.sms_row1 {
	color: #FD9B36;
	font-size: 15px;
}

.sms_row2 {
	/*border : 1px solid blue;*/
	width: 200px;
	margin: 30px auto;
	margin-bottom: 30px;
	margin-left: 133px;
}

#sms_4number {
	width: 100px;
	height: 30px;
}

.btn_sms4 {
	width: 120px;
	height: 35px;
	font-size: 16px;
}

.timerDisplay {
	/*border : 1px solid blue;*/
	position: absolute;
	color: gray;
	top: 77px;
	right: 85px;
}

.timerDisplay img {
	position: absolute;
	top: -10px;
	right: 3px;
	width: 40px;
}
/* sms 인증 메시지 창 관련 CSS */
/* sms 인증 메시지 창 관련 CSS */
/* sms 인증 메시지 창 관련 CSS */

/* location 선택 창 관련 CSS */
/* location 선택 창 관련 CSS */
/* location 선택 창 관련 CSS */
.location_check_wrapper {
	
}

.location_check_wrapper .tri1 {
	z-index: 101;
	position: absolute;
	top: 61px;
	left: 67px;
	width: 30px;
	transform: rotate(180deg);
}

.location_check_wrapper .tri2 {
	z-index: 99;
	position: absolute;
	top: 55px;
	left: 67px;
	width: 30px;
	transform: rotate(180deg);
}

.location_check_window {
	z-index: 100;
	position: absolute;
	width: 400px;
	border: 3px solid #FD9B36;
	box-sizing: border-box;
	padding: 15px;
	border-radius: 15px;
	top: 80px;
	left: 10px;
	background-color: white;
	
}

.location_row1 {
	text-align: center;
	color: #FD9B36;
	font-size: 16px;
	margin-bottom: 15px;
}

.location_row2 {
	display: grid;
	grid-template-columns: repeat(auto-fill, minmax(80px, 1fr));
	gap: 6px;
}

.location_item {
	font-size: 14px;
	color: white;
	text-align: center;
	border-radius: 8px;
	background-color: #FD9B36;
	cursor: pointer;
	line-height: 23px;
}

.location_item:hover {
	opacity: 0.7;
}

.location_item_selected {
	opacity: 0.3;
}

.location_item_selected:hover {
	opacity: 0.3;
}

.displayNone {
	display: none;
}
/* location 선택 창 관련 CSS */
/* location 선택 창 관련 CSS */
/* location 선택 창 관련 CSS */

input[type='email']::placeholder {
	color: #cccccc;
}
</style>
<div class="ye-container">
<div class="join_container">

	<div class="login_box">
		<div class="inner_container">
			<div class="row_box row1">회원가입</div>
			<form action="join_user_form_transfer.jin" method="post"
				id="join_form">
				<div class="main_form">

					<div class="item column1">
						<label for="user_id" class="form-label">* 아이디(이메일)</label>

					</div>
					<div class="item column2 id_check">
						<input type="email" id="user_id" name="user_id"
							class="form-control middle_input" placeholder="nicetomeetyou@welcome.com">
						<label for="user_id" class="check_message"></label>
					</div>
					<div class="item column3">
						<button type="button" class="btn btn-warning id_check_btn">중복확인</button>
					</div>
					<!-- #################################################### -->

					<div class="item column1">
						<label for="user_name" class="form-label">* 이름</label>
					</div>
					<div class="item column2 name_check">
						<input type="text" id="user_name" name="user_name"
							class="form-control middle_input"> 
							<label for="user_name" class="check_message"></label>
					</div>
					<div class="item column3"></div>
					<!-- #################################################### -->
					<!-- #################################################### -->
					<div class="item column1">
						<label for="user_nick" class="form-label">* 닉네임</label>
					</div>
					<div class="item column2 nick_check">
						<input type="text" id="user_nick" name="user_nick"
							class="form-control middle_input"> <label for="user_nick"
							class="check_message"></label>
					</div>
					<div class="item column3"></div>
					<!-- #################################################### -->

					<div class="item column1">
						<label for="user_pw" class="form-label">* 비밀번호</label>
					</div>
					<div class="item column2 pw_check">
						<input type="password" id="user_pw" name="user_pw"
							class="form-control middle_input"> <label for="user_pw"
							class="check_message"></label>
					</div>
					<div class="item column3"></div>
					<!-- #################################################### -->

					<div class="item column1">
						<label for="user_pw2 " class="form-label">* 비밀번호 확인</label>
					</div>
					<div class="item column2 pw2_check">
						<input type="password" id="user_pw2" name="user_pw2"
							class="form-control middle_input"> <label for="user_pw2"
							class="check_message"></label>
					</div>
					<div class="item column3"></div>
					<!-- #################################################### -->

					<div class="item column1">
						<label for="user_phone" class="form-label">* 휴대폰 번호</label>
					</div>
					<div class="item column2 phone_check">
						<input type="tel" id="user_phone" name="user_phone"
							class="form-control middle_input"> <label
							for="user_phone" class="check_message"></label>
					</div>
					<div class="item column3 column3_sms">
						<div class="sms_check_wrapper">
							<div class="sms_check_window">
								<div class="sms_redirect">
									<div class="sms_row1">메시지 보내는 중...</div>
									<div class="sms_row2">
										<input type="tel" id="sms_4number" name="sms_4number"
											class="form-control">
										<p class="timerDisplay">
											<img
												src="${pageContext.request.contextPath}/images/Spinner.svg">
										</p>
									</div>
									<div class="sms_row3">
										<button type="button" class="btn btn-warning btn_sms4">인증 확인</button>
									</div>
								</div>

							</div>
							<img class="tri1"
								src="${pageContext.request.contextPath}/images/tri1.svg">
							<img class="tri2"
								src="${pageContext.request.contextPath}/images/tri2.svg">

						</div>
						<button type="button" class="btn btn-warning phone_check_button">휴대폰
							인증</button>
					</div>
					<!-- #################################################### -->

					<div class="item column1">
						<label for="user_location" class="form-label">&nbsp&nbsp&nbsp관심장소</label>
					</div>
					<div class="item column2 location_check">
						<input type="text" id="user_location" name="user_location"
							class="form-control middle_input" readonly="readonly"
							placeholder="관심장소 추가 버튼을 이용해주세요"> <label
							for="user_location" class="check_message"></label>
					</div>
					<div class="item column3 column3_location">
						<div class="location_check_wrapper displayNone">
							<img class="tri1"
								src="${pageContext.request.contextPath}/images/tri1.svg">
							<img class="tri2"
								src="${pageContext.request.contextPath}/images/tri2.svg">
							<div class="location_check_window">
								<div class="location_row1">관심장소를 추가해주세요 (토글, 최대3개)</div>
								<div class="location_row2"></div>
								<div class="location_row3"></div>

							</div>

						</div>
						<button type="button"
							class="btn btn-warning location_check_button">관심장소 추가</button>
					</div>
					<!-- #################################################### -->
					<!-- #################################################### -->
					<!-- #################################################### -->
					<div class="item column1"></div>
					<div class="item column2"></div>
					<div class="item column3"></div>
					<!-- #################################################### -->
					<div class="item column1"></div>
					<div class="item column2">
						<input type="submit" class="btn btn-warning btn-block"
							value="가입하기">
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
let name_ok = false;
let nick_ok = false;
let pass_ok = false;
let pass2_ok = false;
let phone_ok = false;
let phone_verify_ok = false;


let email_form = document.querySelector("#user_id");
let name_form = document.querySelector("#user_name");
let nick_form = document.querySelector("#user_nick");
let pass_form = document.querySelector("#user_pw");
let pass2_form = document.querySelector("#user_pw2");
let phone_form = document.querySelector("#user_phone");
let sms_4number = document.querySelector("#sms_4number");
let location_form = document.querySelector("#user_location");


let id_check_btn = document.querySelector(".id_check_btn");

let pcb = document.querySelector(".phone_check_button");
let scw = document.querySelector(".sms_check_wrapper");
let timerDisplay = document.querySelector(".timerDisplay");
let sms_row1 = document.querySelector(".sms_row1");
let btn_sms4 = document.querySelector(".btn_sms4");


let lcw = document.querySelector(".location_check_wrapper");
let lcb = document.querySelector(".location_check_button");


let email_form_label_Check = document.querySelector(".id_check .check_message");
let name_form_label_Check = document.querySelector(".name_check .check_message");
let nick_form_label_Check = document.querySelector(".nick_check .check_message");
let pass_form_label_Check = document.querySelector(".pw_check .check_message");
let pass2_form_label_Check = document.querySelector(".pw2_check .check_message");
let phone_form_label_Check = document.querySelector(".phone_check .check_message");
let location_form_label_Check = document.querySelector(".location_check .check_message");


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
id_check_btn.addEventListener("click",function(){
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
					
					if(data=="0"){
						  email_form_label_Check.innerHTML = "";
				          let p = document.createElement("p");
				          p.innerHTML = "아이디 조건 충족";
				          p.classList.add("success");
				          email_form_label_Check.appendChild(p);
				    
				          let success = document.createElement("div");
				          success.innerHTML = "<i class='fa-regular fa-circle-check'></i>";
				          success.classList.add("check_success");
				          email_form_label_Check.appendChild(success);
				          
				          id_verify_ok = true;
						
					}else{
												
						  email_form_label_Check.innerHTML = "";
				          let p = document.createElement("p");
				          p.innerHTML = "이메일 중복! 다른 아이디를 입력해주세요";
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
        p.innerHTML = "이메일 형식을 만족한뒤 중복확인해주세요";
        p.classList.add("fail");
        email_form_label_Check.appendChild(p);
  
        let fail = document.createElement("div");
        fail.innerHTML = "<i class='fa-regular fa-circle-xmark'></i>";
        fail.classList.add("check_fail");
        email_form_label_Check.appendChild(fail);

	}
});




//2. 이름 조건 확인
let namePattern = /^[A-Za-z가-힣ㄱ-ㅎ]+$/;
name_form.addEventListener("input", () => {
	  if (name_form.value.length != 0) {
	    if (2 <= name_form.value.length && name_form.value.length <= 10) {
	    	if (namePattern.test(name_form.value)) {
	      name_form_label_Check.innerHTML = "";
	      let p = document.createElement("p");
	      p.innerHTML = "이름 조건 충족";
	      p.classList.add("success");
	      name_form_label_Check.appendChild(p);

	      let success = document.createElement("div");
	      success.innerHTML = "<i class='fa-regular fa-circle-check'></i>";
	      success.classList.add("check_success");
	      name_form_label_Check.appendChild(success);
			name_ok = true;
	    	}else{
	    	  name_form_label_Check.innerHTML = "";
	  	      let p = document.createElement("p");
	  	      p.innerHTML = "이름은 한글,영문만 가능합니다.";
	  	      p.classList.add("fail");
	  	      name_form_label_Check.appendChild(p);

	  	      let fail = document.createElement("div");
	  	      fail.innerHTML = "<i class='fa-regular fa-circle-xmark'></i>";
	  	      fail.classList.add("check_fail");
	  	      name_form_label_Check.appendChild(fail);

	  	      name_ok = false;
	  	    
	    	}
			
	    } else {
	      name_form_label_Check.innerHTML = "";
	      let p = document.createElement("p");
	      p.innerHTML = "이름은 2자이상 10자이하";
	      p.classList.add("fail");
	      name_form_label_Check.appendChild(p);

	      let fail = document.createElement("div");
	      fail.innerHTML = "<i class='fa-regular fa-circle-xmark'></i>";
	      fail.classList.add("check_fail");
	      name_form_label_Check.appendChild(fail);

	      name_ok = false;
	    }
	  } else {
	    name_form_label_Check.innerHTML = "";
	    name_ok = false;
	  }
	});


//3. 닉네임 조건 확인
let nickPattern = /^[A-Za-z가-힣ㄱ-ㅎ0-9@!_\-&~]+$/;
nick_form.addEventListener("input", () => {
	  if (nick_form.value.length != 0) {
	    if (2 <= nick_form.value.length && nick_form.value.length <= 15) {
	    	if (nickPattern.test(nick_form.value)) {
	      nick_form_label_Check.innerHTML = "";
	      let p = document.createElement("p");
	      p.innerHTML = "닉네임 조건 충족";
	      p.classList.add("success");
	      nick_form_label_Check.appendChild(p);

	      let success = document.createElement("div");
	      success.innerHTML = "<i class='fa-regular fa-circle-check'></i>";
	      success.classList.add("check_success");
	      nick_form_label_Check.appendChild(success);

	      nick_ok = true;
	      
	      }else{
	    	  nick_form_label_Check.innerHTML = "";
		      let p = document.createElement("p");
		      p.innerHTML = "닉네임은 한글,영문,숫자,특수문자 @!_-&~ 만 허용됩니다 ";
		      p.classList.add("fail");
		      nick_form_label_Check.appendChild(p);

		      let fail = document.createElement("div");
		      fail.innerHTML = "<i class='fa-regular fa-circle-xmark'></i>";
		      fail.classList.add("check_fail");
		      nick_form_label_Check.appendChild(fail);

		      nick_ok = false; 
	      }
	      
	    } else {
	      nick_form_label_Check.innerHTML = "";
	      let p = document.createElement("p");
	      p.innerHTML = "닉네임은 2자이상 15자이하";
	      p.classList.add("fail");
	      nick_form_label_Check.appendChild(p);

	      let fail = document.createElement("div");
	      fail.innerHTML = "<i class='fa-regular fa-circle-xmark'></i>";
	      fail.classList.add("check_fail");
	      nick_form_label_Check.appendChild(fail);

	      nick_ok = false;
	    }
	  } else {
	    nick_form_label_Check.innerHTML = "";
	    nick_ok = false;
	  }
	});


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

//6. 폰넘버형식 조건 확인
let phoneNumberRegex = /^010\d{8}$/;
phone_form.addEventListener("input", () =>{
	if (phone_form.value.length != 0) {
        if (phoneNumberRegex.test(phone_form.value)) {
          phone_form_label_Check.innerHTML = "";
          let p = document.createElement("p");
          p.innerHTML = "핸드폰 형식 만족! 휴대폰 인증을 진행해주세요";
          p.classList.add("ing");
          phone_form_label_Check.appendChild(p);
    
          let success = document.createElement("div");
          success.innerHTML = "<i class='fa-regular fa-circle-right'></i>";
          success.classList.add("check_ing");
          phone_form_label_Check.appendChild(success);

          phone_ok = true;

        } else {
          phone_form_label_Check.innerHTML = "";
          let p = document.createElement("p");
          p.innerHTML = "핸드폰 번호 11자리 필요(- 하이픈 제외)";
          p.classList.add("fail");
          phone_form_label_Check.appendChild(p);
    
          let fail = document.createElement("div");
          fail.innerHTML = "<i class='fa-regular fa-circle-xmark'></i>";
          fail.classList.add("check_fail");
          phone_form_label_Check.appendChild(fail);

          phone_ok = false;
          
        }
      } else {
        phone_form_label_Check.innerHTML = "";
        phone_ok = false;
      }
	phone_verify_ok = false;
});

//7. 휴대폰 인증 문자 보내기
let phone_4number_verify_timer;
pcb.addEventListener("click", () => {
	
   if(phone_ok){
	   
	   scw.style.display = "initial";
	   
	   $.ajax({
			url : "sendsmsverify.jin",
			type : "POST",
			dataType : "text",
			data : {
				verify_nubmer : phone_form.value
			},
			error : function(xhr, status, msg) {
				alert("오류가 발생했습니다. 관리자에게 문의해주세요.\n"+"status : "+status + "/n" +"msg : "+ msg);
			},
			success : function(data){
				if(data=="2000"){
					
					setTimeout(() => {
						sms_row1.innerHTML ="휴대폰으로 전송된 4자리 인증번호를 확인해주세요";
					}, 1000);
					let timeLeft = 300; // 초 단위로 5분 설정 (5 * 60)
					 
				       phone_4number_verify_timer = setInterval(function () {
				           if (timeLeft <= 0) {
				               clearInterval(timerInterval);
				               
				               phone_form.value ="";
				               timerDisplay.innerHTML ="";
				               scw.style.display = none;
				               
				               alert("휴대폰 인증 유효기간(5분)이 지났습니다. 다시 시도해주세요.");
				           } else {
				        	   
				               let minutes = Math.floor(timeLeft / 60);
				               let seconds = timeLeft % 60;
				               
				               let text="0"+minutes+":";
				               
				               if(seconds < 10){ text+="0"+seconds}else{text+=seconds};
				               console.log(timeLeft);
				               console.log(text);
				               timerDisplay.innerHTML = text;
				               timeLeft--;
				           }
				       }, 1000);
				}
			}
		});
	   
	   
	   
   }else{
		phone_form_label_Check.innerHTML = "";
        let p = document.createElement("p");
        p.innerHTML = "핸드폰 번호 형식을 갖춘 후 인증해주세요";
        p.classList.add("fail");
        phone_form_label_Check.appendChild(p);
        
        let fail = document.createElement("div");
        fail.innerHTML = "<i class='fa-regular fa-circle-xmark'></i>";
        fail.classList.add("check_fail");
        phone_form_label_Check.appendChild(fail);
        
        
  }
});



//receivesmsverify.jin
//8. 휴대폰 인증 문자 일치 확인하기
btn_sms4.addEventListener("click", () => {

	if(sms_4number.value.length ==4){
		console.log("4넘버 일치체크");
		
		$.ajax({
			url : "receivesmsverify.jin",
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
				
				
					clearInterval(phone_4number_verify_timer);
					console.log("문자인증 과정 최종 통과!!");
					scw.style.display = "none";
					phone_verify_ok = true;
					
					let p = document.createElement("p");
			        p.innerHTML = "휴대폰 본인 인증 완료!";
			        p.classList.add("success");
			        phone_form_label_Check.innerHTML="";
			        phone_form_label_Check.appendChild(p);
					
					let success = document.createElement("div");
			        success.innerHTML = "<i class='fa-regular fa-circle-check'></i>";
			        success.classList.add("check_success");
			        phone_form_label_Check.appendChild(success);
			        
				
				
				}else{
					phone_verify_ok = false;
					sms_row1.innerHTML ="인증번호가 일치하지 않습니다. 다시 확인해주세요";
				}
				
				
			}
		});
		
			       
	}
});


//9. 관심장소 추가하기
//9-1. 관심장소 버튼 토글
lcb.addEventListener("click", () => {
	if (lcw.classList.contains("displayNone")) {
		lcw.classList.remove("displayNone");
	}else{
		lcw.classList.add("displayNone");
	}
});
//9-2. 관심장소 리스트 아작스로 불러오기
let location_row2 = document.querySelector(".location_row2");
let selectedNum=0;
$.ajax({
			url : "locationListPull.jin",
			type : "POST",
			dataType : "json",
			error : function(xhr, status, msg) {
				alert("오류가 발생했습니다. 관리자에게 문의해주세요.\n"+"status : "+status + "/n" +"msg : "+ msg);
			},
			success : function(json){
				json.data.forEach((item) => {
					let div = document.createElement("div");
			        div.innerHTML = item.location_name;
			        div.classList.add("location_item");
			        location_row2.appendChild(div);
			       
			        div.addEventListener("click",function(){
			        	if (div.classList.contains("location_item_selected")) {
			        		
			        		if(location_form.value.includes(div.innerHTML+", ")){
			        			 location_form.value=location_form.value.replace(div.innerHTML+", ","");
			        			  }else if(location_form.value.includes(", "+div.innerHTML)){
			        			 location_form.value=location_form.value.replace(", "+div.innerHTML,"");
			        			  }else{
			        				  location_form.value=location_form.value.replace(div.innerHTML,"");
			        			  }
			        		div.classList.remove("location_item_selected");
			        		 selectedNum--;
			        	  } else {
			        	   
			        		  if(selectedNum<3){
			        			  
			        			  if(selectedNum==0){
				        			  location_form.value=div.innerHTML;
			        			  }else if(selectedNum>=1){
				        			  location_form.value=location_form.value+", "+div.innerHTML;
			        			  }
			        			 div.classList.add("location_item_selected");
			        		  selectedNum++;
			        		  
			        		  }
			        	  }
			        	console.log(selectedNum);
			        	
			        });
			        
					});
				
			}
		});



//최종 폼 제출
let join_form = document.getElementById("join_form");
join_form.addEventListener('submit', function(event) {
	event.preventDefault();
	
	if(!id_ok ){
		alert("아이디 입력을 확인해주세요.");
		
		return;
	}
	if(!id_verify_ok ){
		alert("아이디 유효성 검사를 확인해주세요.");
		
		return;
	}
	if(!name_ok ){
		alert("이름 입력을 확인해주세요.");
		
		return;
	}
	if(!nick_ok ){
		alert("닉네임 입력을 확인해주세요.");
		
		return;
	}
	if(!pass_ok ){
		alert("비밀번호 입력을 확인해주세요.");
		
		return;
	}
	if(!pass2_ok ){
		alert("비밀번호 일치 여부를 확인해주세요.");
		
		return;
	}
	if(!phone_ok ){
		alert("핸드폰 입력을 확인해주세요.");
		
		return;
	}
	if(!phone_verify_ok ){
		alert("핸드폰 인증을 확인해주세요.");
		
		return;
	}
	
	$.ajax({
		url : "join_user_form_transfer.jin",
		type : "POST",
		dataType : "json",
		data : {
			"user_id" : email_form.value,
			"user_name" : name_form.value,
			"user_nick" : nick_form.value,
			"user_pw" : pass_form.value,
			"user_phone" : phone_form.value,
			"user_location" : location_form.value,
		},
		/*
		let email_form = document.querySelector("#user_id");
		let name_form = document.querySelector("#user_name");
		let nick_form = document.querySelector("#user_nick");
		let pass_form = document.querySelector("#user_pw");
		let pass2_form = document.querySelector("#user_pw2");
		let phone_form = document.querySelector("#user_phone");
		let sms_4number = document.querySelector("#sms_4number");
		let location_form = document.querySelector("#user_location");
		*/
		error : function(xhr, status, msg) {
			alert("오류가 발생했습니다. 관리자에게 문의해주세요.\n"+"status : "+status + "/n" +"msg : "+ msg);
		},
		success : function(json){
			
			if(json=="2000"){
				location.href="join_successs.jin";
			}

		}
	});
    
    
  });
















/*
window.addEventListener("beforeunload", function(event) {
    // 경고 메시지를 설정
    event.returnValue = "abc"; // 이 부분에 사용자에게 표시할 메시지를 설정합니다.
    
    // 사용자가 "확인"을 누르면 경고 메시지가 표시됩니다.
    // "확인"을 누르면 이벤트는 계속 진행되고 페이지를 떠나게 됩니다.
    
    // 사용자가 "취소"를 누르면 이벤트가 취소되어 페이지는 떠나지 않습니다.
});
*/
</script>




<!-- footer -->
<!-- footer -->
<!-- footer -->
<%@ include file="../inc/footer.jsp"%>