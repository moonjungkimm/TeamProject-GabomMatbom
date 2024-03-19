<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../inc/header.jsp"%>
<div class="ye-container">
	<!-- header end -->
	<section class="top-section">
		<div class="top-content">
			<h2>숨겨진 맛봄을 알려줘!</h2>
			<p>
				가봄,맛봄에 나만의 맛집을 공유해주세요!<br />매달 추첨을 통해 소정의 선물을 드려요.
			</p>
			<a href="board_single.moon?board_no=153">자세히보기</a>
		</div>
	</section>
	<div class="wrapper-yeeun">
		<section class="section-yeeun sec1">
			<h2>전국 맛봄 검색</h2>
			<div class="main-search-box">
				<form action="searchResult.ye?" method="get" id="rest-search-form">
					<fieldset>
						<legend>전국 맛집 검색</legend>
						<input type="search" name="ctg_no" hidden />
						<input type="search" id="search" name="searchKey"
							placeholder="식당 이름, 지역명, 메뉴명으로 검색" /> <input
							type="submit" value="" title="식당 검색을 시작합니다" />
					</fieldset>
				</form>
			</div>
		</section>
		<!-- <section class="section-yeeun sec2">
					<h2>지하철 근처 맛봄 찾기</h2>
					<ul>
						<li>
							<a href="?loc_no=1">
								<span>서울/경기/인천</span>
							</a>
						</li>
						<li>
							<a href="?loc_no=2"><span>부산</span></a>
						</li>
						<li>
							<a href="?loc_no=3"><span>대구</span></a>
						</li>
						<li>
							<a href="?loc_no=4"><span>대전</span></a>
						</li>
						<li>
							<a href="?loc_no=5"><span>광주</span></a>
						</li>
					</ul>
				</section> -->
		<section class="section-yeeun sec3">
			<h2>메뉴별 맛봄 찾기</h2>
			<ul class="ctg-list">
				<c:forEach var="ctg" items="${ctgList}" varStatus="status">
					<c:if test="${!status.last}">
					<li><a href="searchResult.ye?ctg_no=${ctg.ctg_no}">
							<figure>
								<img src="${pageContext.request.contextPath}/images/ctg_icon_${ctg.ctg_no}.svg" alt="" />
							</figure> <span>${ctg.ctg_name}</span>
					</a></li>
					</c:if>
				</c:forEach>
			</ul>
		</section>
		<section class="section-yeeun sec4">
			<h2>
				<strong class="current-location"></strong> 근처 맛봄 추천
			</h2>
			<a href="searchResult.ye?ctg_no=&searchKey=" class="more-btn org-short-btn">전체보기</a>
			<ul class="main-rest-list1">
				
					<%-- <li class="rest-small-card">
						<a href="detail.ye?rest_no=${list.rest_no}" title="식당명 상세페이지 이동">
							<div>
								<figure class="rest-img-box">
									<img src="${pageContext.request.contextPath}/images/dummy_rest_img.png" alt="" />
								</figure>
								<p class="review-box">
									<img src="${pageContext.request.contextPath}/images/star_icon.svg" alt="별 아이콘" /> <span>${list.review_avg}
										(${list.review_cnt})</span>
								</p>
								<p class="rest-name">${list.rest_name}</p>
								<p class="rest-desc">${list.rest_desc}</p>
								<span class="ctg-name">${list.ctg_name}</span>
								<div class="like-box">
									<figure>
										<img src="${pageContext.request.contextPath}/images/heart_icon.svg" alt="하트 아이콘" />
									</figure>
									<span class="like-count">${list.rest_like_cnt}</span>
								</div>
							</div>
						</a>
					</li> --%>
				
			</ul>
		</section>
		<section class="section-yeeun sec5">
			<h2>
				<strong>가보고싶어요!</strong> 전국 TOP 6 맛봄
			</h2>
			<ul class="main-rest-list1">
				<c:forEach var="list" items="${likeList}">
					<li class="rest-small-card"><a href="detail.ye?rest_no=${list.rest_no}" title="식당명 상세페이지 이동">
								<div>
									<figure class="rest-img-box">
										<c:choose>
										    <c:when test="${list.file_name == null}">
										        <img src="${pageContext.request.contextPath}/images/rest_no_img.svg" alt="" />
										    </c:when>
										    <c:otherwise>
										        <img src="${pageContext.request.contextPath}/resources/uploads/${list.file_name}" alt="" />
										    </c:otherwise>
										</c:choose>
									</figure>
									<p class="review-box">
										<img src="${pageContext.request.contextPath}/images/star_icon.svg" alt="별 아이콘" /> <span>${list.review_avg}
											(${list.review_cnt})</span>
									</p>
									<p class="rest-name">${list.rest_name}</p>
									<p class="rest-desc">${list.rest_desc}</p>
									<span class="ctg-name">${list.ctg_name}</span>
									<div class="like-box">
										<figure>
											<img src="${pageContext.request.contextPath}/images/heart_icon.svg" alt="하트 아이콘" />
										</figure>
										<span class="like-count">${list.rest_like_cnt}</span>
									</div>
								</div>
						</a></li>
				</c:forEach>
			</ul>
		</section>
		<!--footer start-->
	</div>
</div>

<script>
$(function(){
	getLocation();
})
</script>
<script>
//위치정보 사용
function getLocation() {
	if (navigator.geolocation) {
		navigator.geolocation.getCurrentPosition(getAddressByCoords,redirectLocation, geo_options);
        //navigator.geolocation.getCurrentPosition(successCallback,errorCallback,{ timeout: 10_000 });
	} else {
		alert('현재 위치를 가져올 수 없습니다.');
	}
}

// 위치 정보 조회 성공시 호출
function getAddressByCoords(position) {
	var longitude = position.coords.longitude;
	var latitude = position.coords.latitude;
	console.log("현재 위치  : (경도) "+longitude + ", (위도) " + latitude);
	getAddress(longitude,latitude);
	
}

//위치 정보 조회 실패시 호출
function redirectLocation(error) {
	alert('에러 발생');
}

//타임아웃 변수
var geo_options = {
	maximumAge        : 0, 
	timeout           : 30000
};

// 경도, 위도로 주소값 찾기
function getAddress(longitude,latitude){
	$.ajax({
		url : 'getAddress.ye',
		type : 'GET',
		data : {longitude : longitude , latitude : latitude },
		dataType : 'json',
		contentType : 'application/json;charset=UTF-8',
		error : function(xhr, status, msg){
			alert(status + " / " + msg);
		},
		success : function(data){
			let loc = data.documents[0].region_2depth_name;
			$('.current-location').html(loc);
			$('.more-btn').attr('href','searchResult.ye?ctg_no=&searchKey='+loc);
			getLocList(loc);
		}
	})
}

function getLocList(loc){
	$.ajax({
		url : 'getLocList.ye',
		type : 'GET',
		data : {searchKey : loc},
		dataType : 'json',
		error : function(xhr, status, msg){
			alert(status + " / " + msg);
		},
		success : function(json){
			console.log(json);
			$.each(json,function(index, item){
				var li = $('<li class="rest-small-card"></li>');
				var a = $('<a></a>').attr('href', 'detail.ye?rest_no=' + item.rest_no).attr('title', item.rest_name + '상세페이지 이동');
				var div = $('<div></div>');
				var figure = $('<figure class="rest-img-box"></figure>');
				let imgsrc = '/resources/uploads/'+'<c:out value="${list.file_name}" />';
				if(imgsrc == ''){imgsrc = '/images/rest_no_img.svg'}
				var img = $('<img>').attr('src', '${pageContext.request.contextPath}'+imgsrc).attr('alt', '');
				
				figure.append(img);
				div.append(figure);
				
				var p1 = $('<p class="review-box"></p>');
				var starImg = $('<img>').attr('src', '${pageContext.request.contextPath}/images/star_icon.svg').attr('alt', '별 아이콘');
				var span1 = $('<span></span>').text(item.review_avg + '(' + item.review_cnt + ')');
				p1.append(starImg).append(span1);
				div.append(p1);
				var p2 = $('<p class="rest-name"></p>').text(item.rest_name);
				div.append(p2);
				var p3 = $('<p class="rest-desc"></p>').text(item.rest_desc);
				div.append(p3);
				var span2 = $('<span class="ctg-name"></span>').text(item.ctg_name);
			    div.append(span2);
			    var likeBox = $('<div class="like-box"></div>');
			    var likeFigure = $('<figure></figure>');
			    var heartImg = $('<img>').attr('src', '${pageContext.request.contextPath}/images/heart_icon.svg').attr('alt', '하트 아이콘');
			    likeBox.append(likeFigure.append(heartImg));
			    var likeCount = $('<span class="like-count"></span>').text(item.rest_like_cnt);
			    likeBox.append(likeCount);
			    div.append(likeBox);
			    a.append(div);
			    li.append(a);
			    $('.sec4 ul.main-rest-list1').append(li);

			})
			
		}
	})
}
</script>
<%@ include file="../inc/footer.jsp"%>