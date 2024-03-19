<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../inc/header.jsp"%>
<style>
.wrapper-yeeun fieldset{

padding : 30px!important;

}

</style>
<div class="ye-container">
	<!-- header end -->
	<div class="wrapper-yeeun">
		<h2 class="admin-title">회원 정보</h2>
		<form id="rest-insert-form" method="post" action="UserUpdate_byAdmin.jin">
		
			<fieldset>
			
				<legend>유저 정보</legend>
				
				
				<div>
					<label for="user_no">유저 번호</label>
					<input type="text" name="user_no" id="user_no" value="${user_dto.user_no }" readonly="readonly">
				</div>
				
				<div>
					<label for="type_no">유저 등급</label>
					<input type="text" name="type_no" id="type_no" value="${user_dto.type_no }" readonly="readonly">
				</div>
				
				<div>
					<label for="join_type_no">가입 유형</label>
					<input type="text" name="join_type_no" id="join_type_no" value="${user_dto.join_type_no }" readonly="readonly">
				</div>
				
				<div>
					<label for="user_id">아이디</label>
					<input type="text" id="user_id" name="user_id" value="${user_dto.user_id }" />
				</div>
				
				<div>
					<label for="rest_name">이름</label>
					<input type="text" id="user_name" name="user_name" value="${user_dto.user_name }" />
				</div>
				
				<div>
					<label for="user_nick">닉네임</label>
					<input type="text" id="user_nick" name="user_nick" value="${user_dto.user_nick }" />
				</div>
				
				<div>
					<label for="user_phone">전화번호</label>
					<input type="text" id="user_phone" name="user_phone" value="${user_dto.user_phone }" />
				</div>
				
				<div>
					<label for="user_intro">자기소개</label>
					<textarea type="text" id="user_intro" name="user_intro" >${user_dto.user_intro }</textarea>
				</div>
				
				<div>
					<label for="user_ip">아이피</label>
					<input type="text" id="user_ip" name="user_ip" value="${user_dto.user_ip }" />
				</div>
				
				<div>
					<label for="user_time">가입날짜</label>
					<input type="text" id="user_time" name="user_time" value="${user_dto.user_time }" />
				</div>
				
				
			</fieldset>
			
			
			<div class="btn-box">
				<!-- 저장버튼. 목록버튼-->
				<button class="red-short-btn">삭제</button>
				<button class="save-short-btn">저장</button>
				<a href="admin1.jin" class="default-short-btn">목록</a>
			</div>
		</form>


		
	</div>
</div>
<script>
if(${update}){
	alert("유저 정보 수정 성공");
}
$(".red-short-btn").click(function(){
	 var result = confirm("${user_dto.user_id }유저를 삭제하시겠습니까?");
     if (result) {
         location.href=`UserDelete_byAdmin.jin?user_no=${user_dto.user_no }`
     }
});
</script>
<%@ include file="../inc/footer.jsp"%>