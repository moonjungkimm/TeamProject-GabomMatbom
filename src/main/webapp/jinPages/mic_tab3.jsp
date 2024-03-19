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
	margin: 35px auto;
	margin-bottom : 80px;
	margin-top : 100px;
	display: grid;
	grid-template-columns: 1fr 2fr 1fr;
	grid-gap: 30px;
	row-gap: 50px;
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
	width: 750px;
	margin: 80px auto;
	margin-bottom: 50px;
	font-size: 21px;
	color: #FD9B36;
	line-height: 40px;
	font-size: 21px
}

.pass_intro1 {
	font-size: 42px;
}

.pass_intro2 {
	margin: 40px auto;
}

.pass_intro3 {
	margin: 40px auto;
	font-size: 28px;
}

.column1 {
	text-align: right;
}

.main_form2 {
	/*border: 1px solid red;*/
	height: 130px;
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
	
}

.tab_3 {
	background-color: #FD9B36;
	color: white;
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
.pledge_check{
position: relative;
}
.pledge_message{
	color : #cccccc;
	position: absolute;
	top : -30px;
	left : 0;
}


</style>
<div class="ye-container">
	<div class="join_container">

		<div class="login_box">
			<div class="inner_container">
				
				<div class="tab">
					<a href="GoToMic_tab1Page.jin"><div class="tab_item tab_1">회원정보 변경</div></a> 
					<a href="GoToMic_tab2Page.jin"><div class="tab_item tab_2">비밀번호 변경</div></a> 
					<a href="GoToMic_tab3Page.jin"><div class="tab_item tab_3">회원 탈퇴</div></a>
				</div>


				<form action="delete_user_by_self.jin" id="delete_user_form" method="post">
					
					<input type="hidden" id="user_no" name="user_no" value="${login_user_dto.user_no}">
					
					<div class="pass_intro1 pass_intro">회원 탈퇴 안내</div>
					<div class="pass_intro2 pass_intro">
						탈퇴를 완료하면 계정과 모든 관련 데이터는 영구적으로 삭제됩니다.<br> 이는 되돌릴 수 없는 조치이므로,
						신중하게 결정해 주세요.
					</div>
					<div class="pass_intro3 pass_intro">중요한 데이터나 정보가 있다면 탈퇴 전에 다시
						한번 확인 해 주세요.</div>

					<div class="pass_intro4 pass_intro">탈퇴를 원하실 경우 아래의 '계정 탈퇴'
						버튼을 클릭해 주세요. 그 전에, 탈퇴하는 데 대한 질문이나 우려 사항이 있으시면 언제든지 [고객 지원 센터]에
						문의하실 수 있습니다.</div>
					<div class="main_form">

						<div class="item column1">
							<label for="pledge" class="form-label">탈퇴 서약</label>
						</div>
						<div class="item column2 pledge_check">
							<div class="pledge_message">"${login_user_dto.user_name} 탈퇴 동의합니다" 서약 입력</div>
							<input type="text" id="pledge" name="pledge" class="form-control middle_input"> 
							<label for="pledge" class="check_message"></label>
						</div>
						<div class="item column3"></div>
						<!-- #################################################### -->
						<div class="item column1">
							<label for="user_pw" class="form-label">비밀번호 확인</label>
						</div>
						<div class="item column2 pw_check">
							<input type="password" id="user_pw" name="user_pw"
								class="form-control middle_input">
							<label for="user_pw" class="check_message"></label>
						</div>
						<div class="item column3"></div>
						<!-- #################################################### -->
		
						
					</div>
					<hr>
					<br> <br>

					<div class="reset">
						<input type="reset" class="btn btn-secondary btn-cancel"
							value="취소">
					</div>
					<div class="submit">
						<input type="submit" class="btn btn-danger btn-save" value="계정 탈퇴">
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
let pledge_ok = false;

let pass_form = document.querySelector("#user_pw");
let pledge_form = document.querySelector("#pledge");

let pass_form_label_Check = document.querySelector(".pw_check .check_message");
let pledge_form_label_Check = document.querySelector(".pledge_check .check_message");

let pledge_message = "${login_user_dto.user_name} 탈퇴 동의합니다";
pledge_form.addEventListener('input', function() {
	
	if( pledge_form.value == pledge_message){
		pledge_form_label_Check.innerHTML = "";
	      let p = document.createElement("p");
	      p.innerHTML = "서약 조건 충족";
	      p.classList.add("success");
	      pledge_form_label_Check.appendChild(p);

	      let success = document.createElement("div");
	      success.innerHTML = "<i class='fa-regular fa-circle-check'></i>";
	      success.classList.add("check_success");
	      pledge_form_label_Check.appendChild(success);
	      
	      pledge_ok = true;
	}else{
		pledge_form_label_Check.innerHTML = "";
 	      let p = document.createElement("p");
 	      p.innerHTML = "서약을 정확하게 입력해주세요";
 	      p.classList.add("fail");
 	      pledge_form_label_Check.appendChild(p);

 	      let fail = document.createElement("div");
 	      fail.innerHTML = "<i class='fa-regular fa-circle-xmark'></i>";
 	      fail.classList.add("check_fail");
 	      pledge_form_label_Check.appendChild(fail);

 	      pledge_ok = false;
	}
	
	
});


//최종 폼 제출
let delete_user_form = document.getElementById("delete_user_form");
delete_user_form.addEventListener('submit', function(event) {
	
	
	if(!pledge_ok){
		alert("탈퇴 서약 입력을 확인해주세요.");
		event.preventDefault();
		return;
	}
	
	if($(pass_form).val().length < 8 ){
		alert("비밀번호 입력을 확인해주세요.");
		event.preventDefault();
		return;
	}
	

	let message="회원탈퇴를 진행합니다. 탈퇴가 완료되면 계정을 복구할 수 없습니다. 계속하시겠습니까?";
	if(!confirm(message)){
		event.preventDefault();
	}
	
	
});



</script>



<!-- footer -->
<!-- footer -->
<!-- footer -->
<%@ include file="../inc/footer.jsp"%>