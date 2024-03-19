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
	height: 625px;
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
	padding-bottom: 50px;
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
	margin: 0 auto;
	display: grid;
	grid-template-columns: 1fr 2fr 1fr;
	grid-gap: 20px;
	grid-row-gap: 35px;
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

.none {
	display: none;
}

.spinner {
	
}

.spinner img {
	width: 30px;
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

.timer_wrapper{
	position: relative;
}
.timerDisplay{
	position: absolute;
	top : -70px;
	right : 20px;
	color : #888888;
}

</style>
<div class="ye-container">
<div class="toptier_container">
	<br> <br>
	<div class="row_box row1">아이디 / 비밀번호 찾기</div>
	<br>

	<div class="toptier_topbox">
		<a href="GoToFind_id1Page.jin">
		<div class="topbox_section1 topbox">아이디 찾기</div></a> 
		<a href="GoToFind_pass1Page.jin">
		<div class="topbox_section2 topbox">비밀번호 찾기</div></a>
	</div>
	<div class="toptier_box">
		<div class="inner_container">

			<form action="find_id.jin" id="find_id_form" method="get">
				<div class="main_form">
					<div class="item column1"></div>
					<div class="item column2 mygray">회원가입시 등록한 휴대폰으로 인증해주세요</div>
					<div class="item column3"></div>
					<!-- #################################################### -->

					<div class="item column1">
						<label for="user_name" class="form-label">이름</label>
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
						<label for="user_phone" class="form-label">휴대폰 번호</label>
					</div>
					<div class="item column2 phone_check">
						<input type="tel" id="user_phone" name="user_phone"
							class="form-control middle_input"> <label
							for="user_phone" class="check_message"></label>
					</div>
					<div class="item column3">
						<button type="button" class="btn btn-warning phone_check_button">휴대폰
							인증</button>
					</div>
					<!-- #################################################### -->
					<!-- #################################################### -->
					<div class="item column1 none1 none">
						<label for="sms_4number" class="form-label none2 none">인증
							문자</label>
					</div>
					<div class="item column2 none1 none">
						<p class="spinner none3">
							인증 문자 전송 중... <img
								src="${pageContext.request.contextPath}/images/Spinner.svg">
						</p>
						<input type="tel" id="sms_4number" name="sms_4number"
							class="form-control middle_input none2 none">
					</div>
					<div class="item column3 none1 none">
						<button type="button" class="btn btn-warning btn_sms4 none2 none">인증
							확인</button>
					</div>
					<!-- #################################################### -->
					<!-- #################################################### -->
					<div class="item column1"></div>
					<div class="item column2 timer_wrapper">
					<div class="timerDisplay"></div>
					</div>
					<div class="item column3"></div>
					<!-- #################################################### -->
					<!-- #################################################### -->

					<div class="item column1"></div>
					<div class="item column2">
						<input type="submit" class="btn btn-warning btn-block last"
							value="아이디 찾기">
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
let name_ok = false;
let phone_ok = false;
let phone_verify_ok = false;

let name_form = document.querySelector("#user_name");
let phone_form = document.querySelector("#user_phone");
let sms_4number = document.querySelector("#sms_4number");

let pcb = document.querySelector(".phone_check_button");

let timerDisplay = document.querySelector(".timerDisplay");

let btn_sms4 = document.querySelector(".btn_sms4");

let name_form_label_Check = document.querySelector(".name_check .check_message");
let phone_form_label_Check = document.querySelector(".phone_check .check_message");

let find_id_form = document.querySelector("#find_id_form");

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
	   
	 let elements = document.querySelectorAll(".none1");
	 for (let i = 0; i < elements.length; i++) {
	  elements[i].classList.remove("none");
	 }
	 
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
						
						let elements = document.querySelectorAll(".none2");
						 for (let i = 0; i < elements.length; i++) {
						  elements[i].classList.remove("none");
						 }
						 document.querySelector(".none3").classList.add("none");
						 }, 1000);
					
					let timeLeft = 300; // 초 단위로 5분 설정 (5 * 60)
					 
				       phone_4number_verify_timer = setInterval(function () {
				           if (timeLeft <= 0) {
				               clearInterval(timerInterval);
				               
 				             /* reset */
				             let elements = document.querySelectorAll(".none1");
				          	 for (let i = 0; i < elements.length; i++) {
				          	  elements[i].classList.add("none");
				          	 }
				          	 elements = document.querySelectorAll(".none2");
							 for (let i = 0; i < elements.length; i++) {
							  elements[i].classList.add("none");
							 }
							 document.querySelector(".none3").classList.remove("none");  
							 /* reset */
				          	 
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
			        
			        /* reset */
		             let elements = document.querySelectorAll(".none1");
		          	 for (let i = 0; i < elements.length; i++) {
		          	  elements[i].classList.add("none");
		          	 }
		          	 elements = document.querySelectorAll(".none2");
					 for (let i = 0; i < elements.length; i++) {
					  elements[i].classList.add("none");
					 }
					 document.querySelector(".none3").classList.remove("none");  
					 /* reset */
			        
					 var lastElement = document.querySelector(".last");
					 timerDisplay.innerHTML = "";

// 요소가 존재한다면 포커스를 설정합니다.
if (lastElement) {
  lastElement.focus();
}
			        
				
				}else{
					phone_verify_ok = false;
					alert("인증번호가 일치하지 않습니다. 다시 확인해주세요");
				}
				
				
			}
		});
		
			       
	}else{
		alert("인증번호 4자리를 입력해주세요");
	}
});


find_id_form.addEventListener('submit', function(event) {
	
	console.log("name_ok :"+name_ok);
	console.log("phone_ok :"+phone_ok);
	console.log("phone_verify_ok :"+phone_verify_ok);
	if(!name_ok ){
		alert("이름 입력을 확인해주세요.");
		event.preventDefault();
		return;
	}
	
	if(!phone_ok ){
		alert("휴대폰 입력을 확인해주세요.");
		event.preventDefault();
		return;
	}
	if(!phone_verify_ok ){
		alert("휴대폰을 인증해 주세요.");
		event.preventDefault();
		return;
	}
	
	
	
});






</script>





<!-- footer -->
<!-- footer -->
<!-- footer -->
<%@ include file="../inc/footer.jsp"%>