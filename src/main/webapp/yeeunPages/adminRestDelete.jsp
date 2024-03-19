<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../inc/header.jsp"%>
<div class="ye-container">
	<!-- header end -->
	<div class="wrapper-yeeun">
		<h2 class="admin-title">식당 삭제</h2>
		<p class="delete-info">
			식당 삭제를 위해 비밀번호를 입력해주세요.<br /> 해당 식당과 관련된 <strong>모든 자료 (식당
				정보, 영업 시간, 식당 사진, 식당 메뉴)가 삭제</strong>되며, 삭제 이후 <strong>복구가 불가</strong>합니다.
		</p>
		<form action="adminRestDelete.ye?rest_no=${param.rest_no }" method="post" id="rest-delete-form">
			<fieldset>
				<legend>식당 삭제</legend>
				<label for="user_pw">관리자 비밀번호 확인</label> <input type="password"
					id="user_pw" name="pw" placeholder="비밀번호 입력" />
			</fieldset>
		</form>
		<div class="btn-box">
			<button class="red-short-btn">삭제</button>
			<a href="adminRestList.ye" class="default-short-btn">목록</a>
		</div>

		<script
			src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
		<script>
			$(function() {
				// 삭제 버튼 클릭시 form submit
				$('.red-short-btn').on('click', function() {
					$('#rest-delete-form').submit();
				});
			});
		</script>
	</div>
	<!--footer start-->
</div>
<%@ include file="../inc/footer.jsp"%>