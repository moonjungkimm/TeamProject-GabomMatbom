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
}

.mypage_table tr td a:hover {
	color: #fd9b36;
	font-weight: 700;
	transition: 0.1s;
	cursor: pointer;
}

a.edit_btn {
	display: inline-block;
}

/* ------------------change------------ */
.mypage_table tr th {
	text-align: center;
}

/* reset.css 일부*/
button {
	border: none;
	background-color: unset;
	cursor: pointer;
}

table {
	border-collapse: collapse;
	border-spacing: 0;
}

.bar1 {
	/*border : 1px solid black;*/
	height: 120px;
}

.navbar1 {
	/*border : 1px solid blue;*/
	width: 80px;
	height: 80px;
	float: left;
	margin: 20px;
}

.navbar2 {
	/*border : 1px solid blue;*/
	width: 400px;
	height: 80px;
	float: left;
	margin: 20px;
	margin-left: 0;
}

.navbar3 {
	/*border : 1px solid blue;*/
	padding-top: 15px;
	width: 120px;
	height: 80px;
	float: right;
	margin: 20px;
	text-align: center;
}

.bar2 {
	display: flex;
	justify-content: space-evenly;
	font-size: 18px;
}

.bar3 {
	display: flex;
}

.hr {
	border: 1px solid #FD9B36;
}

.tr2 {
	text-align: right;
}

.checkbox-container {
	display: flex;
	justify-content: space-between; /* 요소들을 좌우로 간격을 두고 정렬합니다. */
	align-items: center; /* 요소들을 세로로 정렬합니다. */
	margin-bottom: 10px;
}

a {
	color: #858585; /* 링크의 기본 색상을 지정합니다. */
	text-decoration: none; /* 밑줄 제거 */
}

/* 링크에 호버(마우스를 올렸을 때) 시의 스타일 */
a:hover {
	color: #000000; /* 링크의 호버 시 색상을 지정합니다. */
}

.mp_tab_main {
	width: 1200px;
	margin: 100px auto;
}

.bar5 {
	display: flex;
	justify-content: space-between; /* 요소 간의 간격을 최대한 확보 */
	align-items: center;
}

.bar4 {
	padding-bottom: 10px;
}

#profile_img_mp {
	width: 100%;
	border-radius: 999px;
}

.mp_name {
	font-size: 25px;
	margin-top: 5px;
	margin-bottom: 30px;
	font-weight: bold;
}

.mp_intro {
	color: #999999;
	white-space: nowrap; /* 텍스트가 요소의 크기를 초과할 때 줄 바꿈을 방지합니다. */
	overflow: hidden; /* 요소 내부의 넘치는 부분을 숨깁니다. */
	text-overflow: ellipsis; /* 텍스트가 요소의 크기를 초과할 때 줄임표를 표시합니다. */
}

.nim_small {
	font-size: 18px;
	color: #FD9B36;
	font-weight: normal;
}

.mp_tab {
	/*border : 1px solid blue;*/
	padding: 15px;
}

.user_setting_icon {
	font-size: 40px;
	color: #FD9B36;
}

.user_setting_bottom {
	font-size: 14px;
	color: #FD9B36;
}

.mp_tab_selected {
	background-color: #ffdfbe;
	border-radius: 10px;
	color: white !important;
	cursor: default;
}
.overflow {
 width : 250px;
 display : block;
 white-space: nowrap; 
 overflow: hidden; 
 text-overflow: ellipsis; /* 넘치는 텍스트에 말줄임표 표시 */
}
</style>





<div class="mp_tab_main">

	<div class="bar1">


		<div class="navbar1">
			<div class="profile_img_mp">
				<img
					src="${pageContext.request.contextPath}/resources/upload/default.svg"
					class="login_user_profile_img" id="profile_img_mp">
			</div>
		</div>

		<div class="navbar2">
			<div class="mp_name">${login_user_dto.user_name }
				<span class="nim_small">님</span>
			</div>
			<div class="mp_intro">${login_user_dto.user_intro }</div>

		</div>
		<div class="navbar3 hoveractive">
			<a href="GoToMic_tab1Page.jin"><span class="user_setting_icon"><i
					class="fa-regular fa-address-card"></i></span>
			<p class="user_setting_bottom">회원 정보 수정</p></a>
		</div>

	</div>

	<hr class="hr">

	<div class="bar2">

		<a class="mp_tab mp_tab1 hoveractive" href="mp_tab1.jin?user_no=${sessionScope.login_user_dto.user_no}">작성 게시글</a>
		<a class="mp_tab mp_tab2 hoveractive" href="mp_tab2.jin?user_no=${sessionScope.login_user_dto.user_no}">작성 댓글</a>
		<div class="mp_tab mp_tab3 mp_tab_selected" >작성 리뷰</div>
		<a class="mp_tab mp_tab4 hoveractive" href="mp_tab4.jin?user_no=${sessionScope.login_user_dto.user_no}">좋아요 식당</a> 
		<a class="mp_tab mp_tab5 hoveractive" href="mp_tab5.jin?user_no=${sessionScope.login_user_dto.user_no}">좋아요 게시글</a>

	</div>

	<hr class="hr">






	<table class="mypage_table">
		<!-- <caption>
        작성게시글
    </caption> -->

		<thead>
			<tr>
				<th scope="col">no</th>
				<th scope="col">식당명</th>
				<th scope="col">리뷰 내용</th>
				<th scope="col">작성일자</th>
				
				
				
			</tr>
		</thead>

		<tbody class="board-table">
			<c:forEach var="dto" varStatus="status" items="${list}">
				<tr>
					<td style="width: 150px;">${dto.review_no}</td>
					<td style="width: 250px; text-align : left;" ><a href="detail.ye?rest_no=${dto.rest_no}" class="overflow">${titlelist[status.index] }</a></td>
					<td style="width: 500px; text-align : left; padding-left: 50px;">${dto.review_content}</td>
					<td scope="col">${dto.review_time}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<div>
		<ul class="pagenation">
			<!-- 이전 -->
			<c:if test="${paging.start>= paging.bottomlimit }">
				<li><a
					href="${pageContext.request.contextPath}/mp_tab3.jin?pstartno=${(paging.start-2)*paging.onepagelimit}&user_no=${sessionScope.login_user_dto.user_no}">&lt;</a>
				</li>
			</c:if>


			<!-- 1 2 3 4 5 6 7 8 9 10 -->
			<c:forEach begin="${paging.start }" end="${paging.end }" var="i">
				<li <c:if test="${paging.current==i }">class="active"</c:if>><a
					href="${pageContext.request.contextPath}/mp_tab3.jin?pstartno=${(i-1)*paging.onepagelimit}&user_no=${sessionScope.login_user_dto.user_no}">${i}</a>
				</li>
			</c:forEach>


			<!-- 다음 -->
			<c:if test="${paging.end< paging.pagetotal }">
				<li><a
					href="${pageContext.request.contextPath}/mp_tab3.jin?pstartno=${(paging.end)*paging.onepagelimit}&user_no=${sessionScope.login_user_dto.user_no}">&gt;</a>
				</li>
			</c:if>


		</ul>

	</div>


</div>


<script>


	//프로필 이미지 가져와서 버튼에 넣기
	/*
	 function start_http(str) {
			 return /^http/.test(str);
		}
	 $.ajax({
			url : "user_profile_img_check.jin",
			type : "POST",
			dataType : "text",
			data : {
				"user_no" : "0${login_user_dto.user_no}"
			},
			error : function(xhr, status, msg) {
				alert("오류가 발생했습니다. 관리자에게 문의해주세요.\n"+"status : "+status + "/n" +"msg : "+ msg);
			},
			success : function(data){
				
				console.log(data);
				console.log(typeof(data));
				
				if(data!="false"){//
					
					if(start_http(data)){
						$("#profile_img_mp").attr("src", data);
						
					}else{
					
					var imgPath = "${pageContext.request.contextPath}/resources/upload/" + data;

					// 이미지가 존재하는지 확인
					var img = new Image();
					img.onload = function() {
					    // 이미지가 로드되면, 이미지 경로를 변경하여 이미지를 표시
					    $("#profile_img_mp").attr("src", imgPath);
					};
					img.onerror = function() {
					    // 이미지 로드에 실패한 경우, 기본 그림 파일 경로를 사용하여 이미지를 표시
					    $("#profile_img_mp").attr("src", "${pageContext.request.contextPath}/resources/upload/default.svg");
					};
					img.src = imgPath; // 이미지 로드 시도
					}
					}else{
					
					}//
					
				
			//	
			}
		});
	 */
</script>



<%@ include file="../inc/footer.jsp"%>