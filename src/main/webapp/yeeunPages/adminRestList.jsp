<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../inc/header.jsp"%>
<div class="ye-container">
	<!-- header end -->
	<div class="wrapper-yeeun">
		<h2 class="admin-title">식당 목록</h2>
<!-- 		<div class="search-box">
			<select name="searchType" class="admin-select">
				<option value="default" selected hidden>검색조건 선택</option>
				<option value="rest_no">식당번호</option>
				<option value="rest_name">식당명</option>
			</select> <input type="text" class="admin-short-input" title="검색어 입력"
				placeholder="검색어 입력" /> <input type="button" class="admin-btn-1"
				title="검색시작" value="검색" />
		</div> -->
		<p class="admin-table-count">총 식당수 : ${list.size() }</p>
		<table class="admin-table">
			<!-- <caption>
						식당 목록 테이블
					</caption> -->
			<colgroup>
				<col style="15%">
				<col style="20%">
				<col style="40%">
				<col style="15%">
				<col style="10%">
			</colgroup>
			<thead>
				<tr>
					<th>식당번호</th>
					<th>식당명</th>
					<th>주소</th>
					<th>식당생성시간</th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="rest" items="${list}">
					<tr>
						<td>${rest.rest_no}</td>
						<td><a href="adminRestEdit.ye?rest_no=${rest.rest_no}">${rest.rest_name}</a></td>
						<td><a href="adminRestEdit.ye?rest_no=${rest.rest_no}">${rest.rest_address }<c:if
									test="${rest.rest_address2 != null}">, ${rest.rest_address2 }</c:if></a></td>
						<td>${rest.rest_time }</td>
						<td><a href="adminRestEdit.ye?rest_no=${rest.rest_no}"
							class="edit_btn"><img src="images/edit_icon.svg" alt="수정" /></a>
							<a href="adminRestDelete.ye?rest_no=${rest.rest_no}"
							class="edit_btn"><img src="images/delete_icon.svg" alt="삭제" /></a>
							<!-- <button class="rest-delete" onclick="deleteRest();">
								<img src="images/delete_icon.svg" alt="삭제" />
							</button> --></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

		<ul class="pagenation">
		<!-- 	<li class="prebtn"><a href="#"></a></li>
			<li class="active"><a href="">1</a></li>
			<li><a href="">2</a></li>
			<li><a href="">3</a></li>
			<li><a href="">4</a></li>
			<li><a href="">5</a></li>
			<li class="nextbtn"><a href="#"></a></li> -->
		</ul>
		<div class="btn-box">
			<a href="adminRestWrite.ye" class="org-short-btn" title="식당추가">식당
				추가</a>
		</div>

		<script>
			$(function() {
				$('.rest-delete').on('click', function() {
					let restNo = $(this).closest('tr').find('td:first').html();
					if (confirm(restNo + '번 식당(식당명 : 000)\n식당을 삭제하시겠습니까?')) {
						// 식당 삭제
					}
				});
			});
		</script>
	</div>
	<!--footer start-->
</div>
<%@ include file="../inc/footer.jsp"%>