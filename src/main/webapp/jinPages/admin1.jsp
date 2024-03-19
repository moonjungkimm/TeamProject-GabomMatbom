<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../inc/header.jsp"%>
<style>
.mypage_table {
	width: 100%;
	border-collapse: separate;
	border-spacing: 0 10px;
}

.mypage_table tbody tr {
	height: 40px;
	text-align: center;
	background-color: rgba(253, 155, 54, 0.1);
}

.mypage_table tr td {
	margin-top: 5px;
}

.mypage_table tr td, .mypage_table tr th {
	padding: 10px 10px;
}

.mypage_table tr td:first-child, .mypage_table tr th:first-child {
	border-radius: 30px 0 0 30px;
	/* padding: 20px 10px; */
}

.mypage_table tr td:last-child, .mypage_table tr th:last-child {
	border-radius: 0 30px 30px 0;
	padding: 10px 20px;
}

.mypage_table thead th {
	font-weight: 600;
	background-color: #ffdfbe;
	font-size: 16px;
	text-align : center;
}

.mypage_table tr td a:hover {
	color: #fd9b36;
	font-weight: 700;
	transition: 0.1s;
	cursor: pointer;
}


</style>
<div class="ye-container">
	<!-- header end -->
	<div class="wrapper-yeeun">
		<h2 class="admin-title">회원 목록</h2>

		<p class="admin-table-count">총 회원수 : ${total }</p>
		
		<table class="mypage_table">
		<thead>
			<tr>
				<th scope="col">회원 번호</th>
				<th scope="col">가입 유형</th>
				<th scope="col">아이디</th>
				<th scope="col">닉네임</th>
				<th scope="col">가입 시간</th>
				
				
				
			</tr>
		</thead>

		<tbody class="user-table">
			<c:forEach var="dto" varStatus="status" items="${list}">
				<tr>
					<td style="width: 120px;">${dto.user_no}</td>
					<td style="width: 100px;">
					<c:if test="${dto.join_type_no eq 1}"> 일반 가입</c:if>
					<c:if test="${dto.join_type_no eq 2}"> 네이버 연동</c:if>
					<c:if test="${dto.join_type_no eq 3}"> 카카오 연동</c:if>
					
					</td>
					<td style="width: 300px;"><a href="UserDetail_byAdmin.jin?user_no=${dto.user_no}">${dto.user_id}</a></td>
					<td style="width: 250px;">${dto.user_nick}</td>
					<td >${dto.user_time}</td>
					
					
					
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<div>
		<ul class="pagenation">
			<!-- 이전 -->
			<c:if test="${paging.start>= paging.bottomlimit }">
				<li><a
					href="${pageContext.request.contextPath}/admin1.jin?pstartno=${(paging.start-2)*paging.onepagelimit}">&lt;</a>
				</li>
			</c:if>


			<!-- 1 2 3 4 5 6 7 8 9 10 -->
			<c:forEach begin="${paging.start }" end="${paging.end }" var="i">
				<li <c:if test="${paging.current==i }">class="active"</c:if>><a
					href="${pageContext.request.contextPath}/admin1.jin?pstartno=${(i-1)*paging.onepagelimit}">${i}</a>
				</li>
			</c:forEach>


			<!-- 다음 -->
			<c:if test="${paging.end< paging.pagetotal }">
				<li><a
					href="${pageContext.request.contextPath}/admin1.jin?pstartno=${(paging.end)*paging.onepagelimit}">&gt;</a>
				</li>
			</c:if>


		</ul>

	</div>
			
		<script>
		/*
			$(function() {
				$('.user-delete').on('click', function() {
					let userNo = $(this).closest('tr').find('td:first').html();
					if (confirm(userNo + '번 식당(식당명 : 000)\n식당을 삭제하시겠습니까?')) {
						// 식당 삭제
					}
				});
			});
		*/
		</script>
	</div>
	<!--footer start-->
</div>
<%@ include file="../inc/footer.jsp"%>