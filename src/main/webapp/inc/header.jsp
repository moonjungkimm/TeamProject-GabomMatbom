<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="${pageContext.request.contextPath}/images/spoon.svg" type="image/png">
<script src="https://kit.fontawesome.com/5081dee0c3.js" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="${pageContext.request.contextPath}/js/yeeun.js"></script>
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR:wght@100;200;300;400;500;600;700&display=swap" rel="stylesheet" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/base.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/common.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/yeeun.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/moon_css.css" />


<script src="${pageContext.request.contextPath}/resources/js/summernote/summernote-lite.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/summernote/lang/summernote-ko-KR.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/summernote/summernote-lite.css">
	
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css">
<title>가봄,맛봄</title>
<script>
	if (getCookieValue("remember_login")) {
		$.ajax({
			url : "user_login_byCookie.jin",
			type : "POST",
			dataType : "text",
			data : {
				"remember_login" : getCookieValue("remember_login")
			},
			error : function(xhr, status, msg) {
				alert("오류가 발생했습니다. 관리자에게 문의해주세요.\n" + "status : " + status
						+ "/n" + "msg : " + msg);
			},
			success : function(data) {

				if (data == "2000") {

					let aa =""+"${empty sessionScope.login_user_dto}";
					console.log(aa);
					console.log(typeof(aa));
					if(aa.trim()=="true"){
						location.href="index.ye";
					}
						
				}

			}
		});
	}

	//아이디 기억하기 설정된 쿠키 값 확인하기
	function getCookieValue(cookieName) {
		// 쿠키 문자열을 가져옴
		var cookieString = document.cookie;

		// 쿠키를 ; 기준으로 분리
		var cookies = cookieString.split(';');

		// 쿠키를 순회하며 원하는 쿠키를 찾음
		for (var i = 0; i < cookies.length; i++) {
			var cookie = cookies[i].trim();

			// 쿠키의 이름과 값으로 분리
			var cookieParts = cookie.split('=');
			var name = cookieParts[0];
			var value = cookieParts[1];

			// 원하는 쿠키를 찾으면 값을 반환
			if (name === cookieName) {
				return value;
			}
		}

		// 해당 쿠키가 없으면 null 반환
		return null;
	}
</script>
</head>

<body>
	
	
	
		<header>
			<div class="header_column1 header_column hoveractive">
				<a href="index.ye">가봄, 맛봄<img alt="가봄,맛봄"
					src="${pageContext.request.contextPath}/images/spoon.svg"></a>
			</div>
			<div class="header_column2 header_column">

				<c:choose>
					<c:when test="${empty sessionScope.login_user_dto}">
						<!-- 로그인이 되어있지 않은 경우 -->
						<div class="item_inColumn2 hoveractive ">
							<a href="searchResult.ye?ctg_no=&searchKey=">맛봄찾기</a>
						</div>
						<div class="item_inColumn2 hoveractive ">
							<a href="board_list.moon?ctg_no=1">자유게시판</a>
						</div>
						<div class="item_inColumn2 hoveractive ">
							<a href="board_list.moon?ctg_no=2">맛집게시판</a>
						</div>
						<!-- 		 -->
						<!-- 		 -->
						<div class="item_inColumn2 hoveractive ">
							<a href="recipeAll.moon">해볼, 먹어볼</a>
						</div>
						<!-- 		 -->
						<!-- 		 -->
					</c:when>
					<c:otherwise>
						<c:choose>
							<c:when test="${sessionScope.login_user_dto.type_no == 1}">

								<div class="item_inColumn2 hoveractive">
									<a href="admin1.jin">회원관리</a>
								</div>
								<div class="item_inColumn2 hoveractive">
									<a href="${pageContext.request.contextPath}/adminRestList.ye">식당관리</a>
								</div>
								<div class="item_inColumn2 hoveractive">
									<a href="board_list.moon?ctg_no=1">게시판</a>
								</div>
								<!-- 		 -->
								<!-- 		 -->
								<div class="item_inColumn2 hoveractive ">
									<a href="recipeAll.moon">해볼, 먹어볼</a>
								</div>
								<!-- 		 -->
								<!-- 		 -->
							</c:when>
							<c:when test="${sessionScope.login_user_dto.type_no == 2}">

								<div class="item_inColumn2 hoveractive ">
									<a href="searchResult.ye?ctg_no=&searchKey=">맛봄찾기</a>
								</div>
								<div class="item_inColumn2 hoveractive ">
									<a href="board_list.moon?ctg_no=1">자유게시판</a>
								</div>
								<div class="item_inColumn2 hoveractive ">
									<a href="board_list.moon?ctg_no=2">맛집게시판</a>
								</div>
								<div class="item_inColumn2 hoveractive ">
									<a href="searchResult.ye?ctg_no=&searchKey=">가볼,맛볼</a>
								</div>
								<!-- 		 -->
								<!-- 		 -->
								<div class="item_inColumn2 hoveractive ">
									<a href="recipeAll.moon">해볼, 먹어볼</a>
								</div>
								<!-- 		 -->
								<!-- 		 -->
							</c:when>

						</c:choose>

					</c:otherwise>
				</c:choose>

			</div>
			<!--  
			<div class="header_column3 header_column">
				<div class="search_bar_inHeader">
					<form action="#">
						<input type="text" placeholder="식당이름, 지역명, 메뉴명으로 검색"
							class="inputText_inSearchBar"> <input type="submit"
							class="submit_inSearchBar" value="">
						<div class="magnifying-glass">
							<img alt="검색"
								src="${pageContext.request.contextPath}/images/magnifying-glass.svg">
						</div>
					</form>
				</div>

			</div>
			-->
			<div class="header_column4 header_column">
				<div class="session_check">
				
					
					
					<c:choose>
						<c:when test="${empty sessionScope.login_user_dto}">
							<!-- 로그인이 되어있지 않은 경우 -->
							<a href="GoToLoginPage.jin" class="header_session_btn">&nbsp;<i class="fa-solid fa-door-open my_red"></i>&nbsp;로그인&nbsp;</a> <span class="gray_bar">|</span> 
							<a href="GoToJoin1Page.jin" class="header_session_btn">&nbsp;<i class="fa-solid fa-file-signature my_red"></i>&nbsp;회원가입&nbsp;</a>
						</c:when>
						<c:otherwise>
							<c:choose>
								<c:when test="${sessionScope.login_user_dto.type_no == 1}">
								
								<strong class="user_name">${sessionScope.login_user_dto.user_name}</strong> <span class="nim">님</span> 
								<span class="gray_bar">|</span> 
								<a href="mp_tab1.jin?user_no=${sessionScope.login_user_dto.user_no}" class="header_session_btn">&nbsp;<i class="fa-solid fa-user-nurse my_red"></i>&nbsp;ADMIN&nbsp;</a> 
								<span class="gray_bar">|</span>
								<a href="user_logout.jin" class="header_session_btn">&nbsp;<i class="fa-solid fa-right-to-bracket my_red"></i>&nbsp;Log Out&nbsp;</a>
								</c:when>
								<c:when test="${sessionScope.login_user_dto.type_no == 2}">
								
								<div class="profile_img">
									<img src="${pageContext.request.contextPath}/resources/upload/default.svg" id="profile_img_header" class="login_user_profile_img">
								</div>
									<strong class="user_name">${sessionScope.login_user_dto.user_name}</strong> <span class="nim">님</span>&nbsp;<span class="gray_bar">|</span> 
							<a href="mp_tab1.jin?user_no=${sessionScope.login_user_dto.user_no}" class="header_session_btn">&nbsp;<i class="fa-solid fa-inbox my_red"></i>&nbsp;MY&nbsp;</a><span class="gray_bar">|</span>
							<a href="user_logout.jin" class="header_session_btn">&nbsp;<i class="fa-solid fa-right-to-bracket my_red"></i>&nbsp;Log Out&nbsp;</a>
								</c:when>

							</c:choose>

						</c:otherwise>
					</c:choose>



				</div>

			</div>

		</header>
		
		<script>
		//프로필 이미지 가져와서 버튼에 넣기
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
					
					/*console.log("1111111111111111");*/
					console.log(data);
					console.log(typeof(data));
					
					if(data!="false"){//
						/*console.log("2222222222222222222");*/
					
					
						if(start_http(data)){
							
							/*console.log("333333333333333");*/
							
							$('.login_user_profile_img').each(function(){
								console.log("444444444444444");
						        $(this).attr('src', data);
						    });
							
						}else{
							
							/*console.log("555555555555555555");*/
						/*
						$("#profile_img_header").attr("src", "${pageContext.request.contextPath}/resources/upload/"+data);
						*/
						var imgPath = "${pageContext.request.contextPath}/resources/upload/" + data;

						// 이미지가 존재하는지 확인
						var img = new Image();
						/*console.log("66666666666666666");*/
						
						
						
						img.onload = function() {
							 // 이미지가 로드되면, 이미지 경로를 변경하여 이미지를 표시
						    /*console.log("777777777777777777");*/
						  /*  $("#profile_img_header").attr("src", imgPath);*/
						    $('.login_user_profile_img').each(function(){
						    	/*console.log("888888888888888");*/
						        $(this).attr('src', imgPath);
						    });
						    /*console.log("9999999999999999");*/
						};
						/*console.log("10 10 10 10 10 10 10 10 10 10 10000");*/
						
						
						
						img.onerror = function() {
							/*console.log("11 11 11 11 11 11 11 11");*/
						    // 이미지 로드에 실패한 경우, 기본 그림 파일 경로를 사용하여 이미지를 표시
						    console.log("이미지 로드 실패");
						  /*  $("#profile_img_header").attr("src", "${pageContext.request.contextPath}/resources/upload/default.svg");*/
						    $('.login_user_profile_img').each(function(){
						    	/*console.log("12 12 12 12 12 12 12 12");*/
						        $(this).attr('src', "${pageContext.request.contextPath}/resources/upload/default.svg");
						    });
						    /*console.log("13 13 13 13 13 13 13 13");*/
						};
						
						
						
						img.src = imgPath; // 이미지 로드 시도
								
						
						}//else end
					
					}//if end
					
				}//success end
				
			});//ajax end
		</script>
		
		<!-- 여기 위로 1HEADER -->
		<!-- 여기 위로 HEADER -->
		<!-- 여기 위로 HEADER -->