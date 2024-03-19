<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../inc/header.jsp"%>
<div class="ye-container">

	<c:if test="${not empty list.get(3)}">
		<section class="rest-img-box">
			<c:forEach var="file" items="${list.get(3)}">
				<div
					style="background-image: url('${pageContext.request.contextPath}/resources/uploads/${file.file_name}'); width : calc(100% / ${list.get(3).size()});"></div>
			</c:forEach>
		</section>
	</c:if>
	<c:if test="${empty list.get(3)}">
		<section class="rest-img-empty"></section>
	</c:if>
	<div class="wrapper-yeeun rest-single">
		<section class="rest-info">
			<div class="rest-title">
				<h2 class="rest-name">${list.get(0).rest_name}</h2>
				<p class="ctg-name">${list.get(0).ctg_name}</p>
			</div>
			<p class="rest-desc">${list.get(0).rest_desc}</p>
			<div class="rest-content">
				<div class="rest-text">
					<dl class="rest-address">
						<dt>주소</dt>
						<dd>${list.get(0).rest_address}
							<c:if test="${list.get(0).rest_address2 != null}">, ${list.get(0).rest_address2}</c:if>
						</dd>
					</dl>
					<dl class="rest-tel">
						<dt>전화번호</dt>
						<dd>${list.get(0).rest_tel}</dd>
					</dl>
					<dl class="biz-time">
						<dt>영업시간</dt>
						<dd>
							<ul>
								<c:if test="${list.get(1).get(0).biz_off eq 1}">
									<li>월 (휴무)</li>
								</c:if>
								<c:if test="${list.get(1).get(0).biz_off ne 1}">
									<li>월 (${list.get(1).get(0).biz_open} ~
										${list.get(1).get(0).biz_close})</li>
								</c:if>
								<c:if test="${list.get(1).get(1).biz_off eq 1}">
									<li>화 (휴무)</li>
								</c:if>
								<c:if test="${list.get(1).get(1).biz_off ne 1}">
									<li>화 (${list.get(1).get(1).biz_open} ~
										${list.get(1).get(1).biz_close})</li>
								</c:if>
								<c:if test="${list.get(1).get(2).biz_off eq 1}">
									<li>수 (휴무)</li>
								</c:if>
								<c:if test="${list.get(1).get(2).biz_off ne 1}">
									<li>수 (${list.get(1).get(2).biz_open} ~
										${list.get(1).get(2).biz_close})</li>
								</c:if>
								<c:if test="${list.get(1).get(3).biz_off eq 1}">
									<li>목 (휴무)</li>
								</c:if>
								<c:if test="${list.get(1).get(3).biz_off ne 1}">
									<li>목 (${list.get(1).get(3).biz_open} ~
										${list.get(1).get(3).biz_close})</li>
								</c:if>
								<c:if test="${list.get(1).get(4).biz_off eq 1}">
									<li>금 (휴무)</li>
								</c:if>
								<c:if test="${list.get(1).get(4).biz_off ne 1}">
									<li>금 (${list.get(1).get(4).biz_open} ~
										${list.get(1).get(4).biz_close})</li>
								</c:if>
								<c:if test="${list.get(1).get(5).biz_off eq 1}">
									<li>토 (휴무)</li>
								</c:if>
								<c:if test="${list.get(1).get(5).biz_off ne 1}">
									<li>토 (${list.get(1).get(5).biz_open} ~
										${list.get(1).get(5).biz_close})</li>
								</c:if>
								<c:if test="${list.get(1).get(6).biz_off eq 1}">
									<li>일, 공휴일 (휴무)</li>
								</c:if>
								<c:if test="${list.get(1).get(6).biz_off ne 1}">
									<li>일, 공휴일 (${list.get(1).get(6).biz_open} ~
										${list.get(1).get(6).biz_close})</li>
								</c:if>
							</ul>
						</dd>
					</dl>
					<dl class="rest-date">
						<dt>정보게시일</dt>
						<dd>${list.get(0).rest_time}</dd>
					</dl>
					<a href="mailto:pye6423@gmail.com">식당 정보 수정요청</a>
				</div>
				<div class="rest-map">
					<button class="org-large-btn find-rest-btn">자동차 길찾기</button>
					<button class="org-large-btn find-parking-btn">근처 주차장</button>
				</div>
			</div>
		</section>
		<section class="rest-social">
			<div class="social-item">
				<span class="social-item_span"></span>
				<div class="icon-container">
					<img src="${pageContext.request.contextPath}//images/star_icon.svg"
						alt="" /><span class="social-item-avg"></span>
				</div>
			</div>
			<div class="social-item">
				<button class="heart-like">
					<span>좋아요</span>
					<div class="icon-container">
						<div class="heart-img"></div>
						<span>${list.get(0).rest_like_cnt}</span>
					</div>
				</button>
			</div>
			<div class="social-item">
				<button class="share-page-ye">
					<span>공유하기</span>
					<div class="icon-container">
						<img
							src="${pageContext.request.contextPath}/images/share_icon.svg"
							alt="" />
					</div>
				</button>
			</div>
		</section>
		<section class="rest-menu">
			<h3>메뉴</h3>
			<div class="menu-list">
				<c:forEach var="menu" items="${list.get(2)}">
					<dl>
						<dt>${menu.menu_name}</dt>
						<dd>${menu.menu_price}원</dd>
					</dl>
				</c:forEach>
			</div>
		</section>
		<section class="rest-review">
			<h3 class="rest_review_cnt"></h3>
			<div class="board_single_review">
				<!-- 댓글 감싸는 div -->
				<div class="rest_review_form_wrapper">
					<!-- 댓글 insert 부분 form -->
					<div class="rest_review_star_per_wrapper">
						<!-- 별점 갯수 나타내는 부분 -->
						<div class="rest_review_star_per">
							<div class="rest_review_star_img">
								<img src="${pageContext.request.contextPath}/images/star5.svg"
									alt="별 5개">
							</div>
							<div class="progress-bar">
								<div class="progress progress5"></div>
								<span class="progress_cnt star5"></span>
							</div>
						</div>
						<div class="rest_review_star_per">
							<div class="rest_review_star_img">
								<img src="${pageContext.request.contextPath}/images/star4.svg"
									alt="별 4개">
							</div>
							<div class="progress-bar">
								<div class="progress progress4"></div>
								<span class="progress_cnt star4"></span>
							</div>
						</div>
						<div class="rest_review_star_per">
							<div class="rest_review_star_img">
								<img src="${pageContext.request.contextPath}/images/star3.svg"
									alt="별 3개">
							</div>
							<div class="progress-bar">
								<div class="progress progress3"></div>
								<span class="progress_cnt star3"></span>
							</div>
						</div>
						<div class="rest_review_star_per">
							<div class="rest_review_star_img">
								<img src="${pageContext.request.contextPath}/images/star2.svg"
									alt="별 2개">
							</div>
							<div class="progress-bar">
								<div class="progress progress2"></div>
								<span class="progress_cnt star2"></span>
							</div>
						</div>
						<div class="rest_review_star_per">
							<div class="rest_review_star_img">
								<img src="${pageContext.request.contextPath}/images/star1.svg"
									alt="별 1개">
							</div>
							<div class="progress-bar">
								<div class="progress progress1"></div>
								<span class="progress_cnt star1"></span>
							</div>
						</div>
					</div>
					<div class="rest_review_write">
						<div class="rest_review_user_wrapper">
							<div class="rest_review_user">
								<!-- 닉네임 -->
								<p class="login_user_profile_img"></p>
								<p class="rest_review_nick">${sessionScope.login_user_dto.user_nick }</p>
							</div>
							<div class="rest_review_star_selectbox">
								<select class="review_star">
									<option class="star_1 fa" value="1">&#xf005</option>
									<option class="star_2 fa" value="2">&#xf005 &#xf005</option>
									<option class="star_3 fa" value="3">&#xf005 &#xf005
										&#xf005</option>
									<option class="star_4 fa" value="4">&#xf005 &#xf005
										&#xf005 &#xf005</option>
									<option class="star_5 fa" value="5">&#xf005 &#xf005
										&#xf005 &#xf005 &#xf005</option>
								</select>
							</div>
						</div>
						<div>
							<textarea id="review_content" name="review_content"
								class="rest_review_textarea"></textarea>
						</div>
						<c:choose>
							<c:when test="${empty sessionScope.login_user_dto}">
								<div class="">
									<input type="button" value="리뷰 등록" class="org-large-btn"
										id="rest_review_write_btn_nologin">
								</div>
							</c:when>
							<c:otherwise>
								<div class="">
									<input type="button" value="리뷰 등록" class="org-large-btn"
										id="rest_review_write_btn">
								</div>
							</c:otherwise>
						</c:choose>
					</div>

				</div>
				<div id="sessionUserNo"
					data-user-no="${sessionScope.login_user_dto.user_no }"></div>
				<div class="rest_review_list" id="rest_review_list">

					<!-- 댓글 리스트 -->
					<!-- 댓글 리스트 -->
					<!-- 댓글 리스트 -->

				</div>
			</div>
			<!-- end review -->
		</section>
	</div>
</div>
<div class="layer-pop-modal">
	<div class="layer-pop find-road">
		<p class="popup-title">${list.get(0).rest_name}
			(${list.get(0).rest_address}
			<c:if test="${list.get(0).rest_address2 != null}">, ${list.get(0).rest_address2}</c:if>
			)
		</p>
		<button class="close-pop-btn">
			<img src="${pageContext.request.contextPath}/images/delete_icon.svg" />
		</button>
		<div class="popup-content">
			<!-- <span>현재 위치에서 길찾기</span> -->
			<div class="find-road-tag"></div>
			<a href="https://map.kakao.com/link/to/${list.get(0).rest_name},"
				class="find-road-kakao" target="_blank">kakao map</a>
			<div class="find-road-container">
				<div class="find-road-map"></div>
				<ul class="find-road-info">
				</ul>
			</div>
		</div>
	</div>
	<div class="layer-pop find-parking">
		<p class="popup-title">${list.get(0).rest_name}
			(${list.get(0).rest_address}
			<c:if test="${list.get(0).rest_address2 != null}">, ${list.get(0).rest_address2}</c:if>
			)
		</p>
		<button class="close-pop-btn">
			<img src="${pageContext.request.contextPath}/images/delete_icon.svg" />
		</button>
		<div class="popup-content">
			<span>근처 주차장 정보</span>
			<div class="parking_content_wrapper">

				<!-- <div class="parking_info">
			        <div class="parking_name_wrapper">
			        	<div class="parking_name">주차장 명</div>
			        	<div class="parking_pay">유료</div>
			        </div>
			        <div class="parking_addr">
			        	<p>주소 : 종로구 세종로 80-1</p>
			        </div>
			        <div class="parking_tel">
			        	<p>전화번호 : 02-2290-6566</p>
			        </div>
			        <div class="parking_area">
			        	<div class="parking_capa">총 주차면 : 106</div>
			        	<div class="parking_cur">현재 주차 차량 수 : 55</div>
			        </div>
			        <div class="parking_per">           
						<div class="parking_per_result"></div>
					</div>
					<div class="parking_rates">
						<p>기본 주차 요금 : 400 원<p>
					</div>
					<div class="parking_timeRates">
						<p>기본 주차 시간 : 5 분<p>
					</div>
				</div>	
				<div id="parking_map" class="parking_map" style="width:320px;height:300px;">
					
				</div> -->
			</div>
		</div>
	</div>
</div>

<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e6b5214426df989a43073f46ca3e2ca9&libraries=services"></script>
<script>
var mapContainer = document.querySelector('.rest-map'),
    mapOption = {
        center: new kakao.maps.LatLng(33.450701, 126.570667),
        level: 3
    };
var map = new kakao.maps.Map(mapContainer, mapOption);
var geocoder = new kakao.maps.services.Geocoder();
geocoder.addressSearch('${list.get(0).rest_address}', function(result, status) {
     if (status === kakao.maps.services.Status.OK) {
        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
        var marker = new kakao.maps.Marker({
            map: map,
            position: coords
        });
        var infowindow = new kakao.maps.InfoWindow({
            content: '<div style="width:150px; text-align:center;padding:6px 0;">${list.get(0).rest_name}</div>'
        });
        infowindow.open(map, marker);
        map.setCenter(coords);
    } 
});
</script>
<!-- 예은 start -->
<!-- 예은 start -->
<!-- 예은 start -->
<!-- 예은 start -->
<!-- 예은 start -->
<script>
var linePath = [];
$(function(){
	$('.find-rest-btn').on('click',function(){
		alert('길찾기를 시작합니다.');
		$('.layer-pop-modal').stop().show();
		$('.layer-pop.find-road').stop().fadeIn(200);
		var mapContainer = document.querySelector('.find-road-map'),
	    mapOption = {
	        center: new kakao.maps.LatLng(33.450701, 126.570667),
	        level: 7
	    };
		var map = new kakao.maps.Map(mapContainer, mapOption);
		map.addOverlayMapTypeId(kakao.maps.MapTypeId.TRAFFIC);
		var geocoder = new kakao.maps.services.Geocoder();
		geocoder.addressSearch('${list.get(0).rest_address}', function(result, status) {
	     	if (status === kakao.maps.services.Status.OK) {
		        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
		        var marker = new kakao.maps.Marker({
		            map: map,
		            position: coords
		        });
		        var infowindow = new kakao.maps.InfoWindow({
		            content: '<div style="width:150px; text-align:center;padding:6px 0;">${list.get(0).rest_name}</div>'
		        });
		        infowindow.open(map, marker);
		        map.setCenter(coords);
	    	} 
		});
		var polyline = new kakao.maps.Polyline({
		    path: linePath, // 선을 구성하는 좌표배열 입니다
		    strokeWeight: 7, // 선의 두께 입니다
		    strokeColor: '#0d6efd', // 선의 색깔입니다
		    strokeOpacity: 0.8, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
		    strokeStyle: 'solid' // 선의 스타일입니다
		});
		polyline.setMap(map);  

	})
	$('.close-pop-btn').on('click',function(){
		$('.layer-pop.find-road, .layer-pop.find-parking').stop().fadeOut();
		$('.layer-pop-modal').stop().fadeOut(200);
	})
	
})

$(function(){
	$('.find-parking-btn').on('click',function(){
		 $.ajax({
             url: "findParking.moon?rest_no=" + ${list.get(0).rest_no},
             type: "GET",
             dataType:"json",
             error: function (xhr, status, msg) { 
                 alert(status + "/" + msg);
             },
             success: function (json) {
            	 $(".parking_content_wrapper").empty();
            	 var parkingSpace="";
            	 $.each(json, function(index, data){
            		 
            		 if((data.parkingCapa-data.parkingCur) <= 0 ){
            			 parkingSpace = "만차";
            		 }else{
	            		 parkingSpace = "현재 주차 가능 주차면 : " + (data.parkingCapa-data.parkingCur);
            		 }
	            	 
            		 var parkingInfo = $("<div>").addClass("parking_info")
	                 .append(
	                     $("<div>").addClass("parking_name_wrapper")
	                         .append($("<div>").addClass("parking_name").html(data.parkingName))
	                         .append($("<div>").addClass("parking_pay").addClass(data.parkingPayNM == "무료" ? "free" : "paid").html(data.parkingPayNM))
	                 )
	                 .append(
	                     $("<div>").addClass("parking_addr")
	                         .append($("<p>").html("주소 : " + data.parkingAddress))
	                 )
	                 .append(
	                     $("<div>").addClass("parking_tel")
	                         .append($("<p>").html("전화번호 : " + data.parkingTel))
	                 )
	                 .append(
	                     $("<div>").addClass("parking_area")
	                         .append($("<div>").addClass("parking_capa").html("총 주차면 : " + data.parkingCapa))
	                         .append($("<div>").addClass("parking_cur").addClass(parkingSpace == "만차" ? "full" : "notFull").html(parkingSpace))
	                 )
	                 .append(
	                     $("<div>").addClass("parking_per")
	                         .append($("<div>").addClass("parking_per_result").attr("id", "parking_per_" + index))
	                         .append($("<i>").addClass("parking_per_comment").attr("id", "parking_per_comment_" + index))
	                 )
	                 .append(
	                     $("<div>").addClass("parking_rates")
	                         .append($("<p>").html("기본 주차 요금 : " + data.parkingRates + " 원"))
	                 )
	                 .append(
	                     $("<div>").addClass("parking_timeRates")
	                         .append($("<p>").html("기본 주차 시간 : " + data.parkingTimeRates + " 분"))
	                 );
	
	            	 var parkingMap = $("<div>").addClass("parking_info").attr("id", "parking_info_" + index);
	                 var parkingWidth = (data.parkingCur/data.parkingCapa) * 100 + "%";
	                 
	            
		             $('.parking_content_wrapper').append(parkingInfo);
		             /* $('.parking_content_wrapper').append(parkingMap); */
		             
		             
		             $("#parking_per_" + index).css({
		            	    "height": "40px" 
		            	});
		             
		             $("#parking_per_" + index).stop().animate({
		            	    "width": parkingWidth,
		            	});
		             
		             if((data.parkingCapa-data.parkingCur) >= 11){
		            	 $('#parking_per_comment_' + index).html("여유");
		             }else if((data.parkingCapa-data.parkingCur) > 0){
		            	 $('#parking_per_comment_' + index).html("혼잡");
		             }else{
		            	 $('#parking_per_comment_' + index).html("현재 주차 가능한 곳이 없습니다.");
		             }
		             
            	 })		//end each
	             
           		$('.layer-pop-modal').stop().show();
				$('.layer-pop.find-parking').stop().fadeIn(200);
             }
		})
	})
})




$(function(){
	let address = '<c:out value="${list.get(0).rest_address}" />';
	let userCoord = '<c:out value="${sessionScope.userCoord}" />';
	if(userCoord == ''){//세션에 저장된 좌표가 없는 경우
		if (navigator.geolocation) {
	        navigator.geolocation.getCurrentPosition(function(position) {
	        	userCoord = position.coords.longitude + ',' + position.coords.latitude;
	        	findRestCoord(address, userCoord);
	        }, function(error) {
	            alert('에러 발생');
	        }, { maximumAge: 0, timeout: 30000 });
	    } else {
	        alert('현재 위치를 가져올 수 없습니다.');
	    }
	}else{
		findRestCoord(address, userCoord);
	}
})
function findRestCoord(address, userCoord){
let restCoord = '';
console.log("유저 coor : " + userCoord);
	let APIKEY = "53b7e029069bb988d3e217b3f96575eb";
	$.ajax({
		url : 'https://dapi.kakao.com/v2/local/search/address.json?query='+encodeURIComponent(address),
		type : 'GET',							           
		headers : {'Authorization' : 'KakaoAK ' + APIKEY},     
		error : function(e){
					console.log(e);
					},
		success : function(data){  // 식당의 좌표 구하기
					restCoord = data.documents[0].road_address.x + ',' + data.documents[0].road_address.y;
					$('.find-road-kakao').attr('href',$('.find-road-kakao').attr('href') + data.documents[0].road_address.y+','+data.documents[0].road_address.x);
					findRoad(userCoord, restCoord);
					}
		
	});	
}
// 경로 찾기 함수 start
function findRoad(userCoord,restCoord){
   console.log('userCoord : ' + userCoord + " , restCoord : " + restCoord);
   
   $.ajax({
      url : 'findRestKakao.ye',
      type : "GET",
      data : {origin : userCoord,
            destination : restCoord},
      dataType : "json",
      contentType : 'application/json;charset=UTF-8',
      error : function(xhr, status, msg){
         alert(status + " / " + msg);
      },
      success : function(json){
         console.log(json.routes);
         
         let taxiFare = Number(json.routes[0].summary.fare.taxi).toLocaleString();
         let distance = json.routes[0].sections[0].distance;
         if(distance < 1000){
            distance = distance + 'm';
         }else{
            distance = (distance/1000).toFixed(1)+'km';
         }
         let duration = json.routes[0].sections[0].duration;
         if(duration < 3600){
            duration = Math.floor(duration/60) + '분';
         }else{
            duration = Math.floor(duration/3600)+'시간 '+  Math.floor((duration%3600)/60) + '분';
         }
         
         let totalDistance = $('<span>').text('현재 위치에서 '+distance);
         let totalDuration = $('<span>').text(duration+' 소요');
         let taxi = $('<span>').text('택시요금 '+taxiFare+'원');
         $('.find-road-tag').append(totalDistance).append(totalDuration).append(taxi);
         
         let guides = json.routes[0].sections[0].guides;
         let roads = json.routes[0].sections[0].roads;
         
         console.log (roads[0].name);
         for(let i = 0; i < guides.length-1; i++){
        	 if(i == 0){
        		 $('.find-road-info').append($('<li>').text(i+1 +'. '+ roads[i].name + ' ' +roads[i].distance + "m 직진" )); 
        	 }else{
	        	 $('.find-road-info').append($('<li>').text(i+1 +'. '+ roads[i].name + ' ' + guides[i].guidance + ' 후 ' +roads[i].distance + "m 이동" ));
        	 }
         }
         
        /*  json.routes[0].sections.forEach(function(section,index) {
             section.roads.forEach(function(road){
            	 $('.find-road-info').append($('<li>').text(index +'. '+ road.name + guide.distance + "m 직진"));
           	 })
        	 section.guides.forEach(function(guide){
        		 let name = guide.name;
        		 if(name != ''){name += ' 에서';}
        		 $('.find-road-info').append($('<li>').text(index +'. '+ road.name + guide.distance + "m 이동"));
             })
         }); */

         json.routes[0].sections[0].roads.forEach(function(road,index) {
            let lng = '';
            let lat = '';
            road.vertexes.forEach(function(vertex,index){
               
               if(index%2==0){
                  lng = vertex;
               }else{
                  lat = vertex;
                  linePath.push(new kakao.maps.LatLng(lat, lng));
               }
               
            });
         });
         console.log(linePath);
         
      }
   })
} // 경로 찾기 함수 end
</script>
<!-- 예은 end -->
<!-- 예은 end -->
<!-- 예은 end -->
<!-- 예은 end -->
<!-- 예은 end -->
<script>
$(function(){
	let restNo = '<c:out value="${param.rest_no}" />';
	let userNo = '<c:out value="${sessionScope.login_user_dto.user_no}" />';
	
	if(userNo == ''){
		userNo = 0;
	}
	
	$.ajax({
		url : 'checkRestLike.ye',
		type : 'GET', 
		data : {restNo : restNo, userNo : userNo },
		dataType : "text",
		error : function(xhr, status, msg){
			alert(status + ' / ' + msg);
		},
		success : function(text){
			if (text > 0){
				$('.heart-like').addClass('active');
			}
			
		}
	})
	
	$('.heart-like').on('click',function(){
		if(userNo == ''){
			alert('로그인 후 이용이 가능합니다.');
		}else{
			
			$.ajax({
				url : 'restLike.ye',
				type : 'GET', 
				data : {restNo : restNo, userNo : userNo },
				dataType : "json",
				error : function(xhr, status, msg){
					alert(status + ' / ' + msg);
				},
				success : function(text){
					$('.heart-like .icon-container span').html(text);
					$('.heart-like').toggleClass('active');
				}
			})
			
			
		}
	})
	
})
</script>

<script>
function start_http(str) {
    return /^http/.test(str);
}


// 식당 리뷰 script
	$(function(){
		var reviewWriteNologin = $('#rest_review_write_btn_nologin');
		var reviewWriteBtn = $('#rest_review_write_btn');
		var reviewContent = $('#review_content');
		var sessionUserNo = $("#sessionUserNo").data('user-no');
		var deleteReviewBtn = $('.rest_review_delete_btn_input');
		var reviewCnt ="";
		
		reviewReadAll();
		restReviewStar();
		
		//비로그인시 리뷰 등록 클릭
		reviewWriteNologin.click(function(){
			var result = confirm("로그인 후 이용가능한 서비스입니다. \n로그인 창으로 이동하시겠습니까? ");
            if (result) {
                location.href="${pageContext.request.contextPath }/GoToLoginPage.jin";
            }
		});
		
		reviewWriteBtn.click(function(){
			if(reviewContent.val() == ""){
				alert("리뷰가 빈칸입니다. 확인해주세요 ! ");
				reviewContent.focus();
    			return false;
			}else{
	            $.ajax({
	                url: "rest_review_write.moon?rest_no=" + ${list.get(0).rest_no},
	                type: "POST",
	                dataType: "json",
	                data: {
	                    "user_no": sessionUserNo,
	                    "review_content": reviewContent.val(),
	                    "review_star" : $(".review_star option:selected").val()
	                },
	                error: function (xhr, status, msg) {
	                    alert(status + "/" + msg);
	                },
	                success: function (json) {
	                	reviewContent.val('');
	                	reviewReadAll();
	                	restReviewStar();
	                }
	            });
    		}
		});
		
		//리뷰 리스트 뽑아서
        function reviewReadAll() {
            $.ajax({
                url: "rest_review.moon?rest_no=" + ${list.get(0).rest_no},
                type: "GET",
                dataType: "json",
                error: function (xhr, status, msg) {
                    alert(status + "/" + msg);
                },
                success: function (json) {
                	$(".rest_review_cnt").html("리뷰(" + json.reviewCnt + ")");
                	$(".social-item_span").html("리뷰(" + json.reviewCnt + ")");
                	if(json.reviewCnt != 0){
	                	$(".social-item-avg").html(json.reviewAvg.toFixed(1));
	                	reviewListResult(json);
                	}else{
                		$(".social-item-avg").html("0.0");
	                	reviewCnt = 0;
	                	reviewListResult(json);
                	}
                }
            });
        }
		//뽑아온 리뷰 리스트 보여주기 ~ 
        function reviewListResult(json) {
		
			console.log(json.list)
            $("#rest_review_list").empty();
			//반복문
			if(json.list == 0){
				 var reviewItem = $("<div>").addClass("rest_review_single")
                 .append(
					    $("<p>").addClass("rest_noReview").html("작성된 댓글이 없습니다.")
					);
        		 reviewItem.appendTo("#rest_review_list");
			}else{
				
	         	$.each(json.list, function (idx, list) {
	                var deleteBtn = $(" <img src='${pageContext.request.contextPath}/images/delete_icon.svg' alt='delete버튼' class='rest_review_delete_btn_input'/>");
	                var reply_profile_img = $("<img>").attr("src", "${pageContext.request.contextPath}/images/profile.svg").attr("alt", "작성자 사진").addClass("rest_review_profile");
	                var reviewItem = $("<div>").addClass("rest_review_single").attr("data-no", list.review_no)
	                    .append(
						    $("<div>").addClass("rest_review")
						        .append(
						            $("<div>").addClass("rest_review_list_user")
						           		.append(reply_profile_img)
						                .append($("<p>").addClass("rest_review_user_p").html(list.review_auth))
						                .append($("<p>").addClass("rest_review_time_p").html(list.review_time))
						        )
						        .append(
						            $("<div>").addClass("rest_review_content")
						         		.append($("<img>").attr("src", "${pageContext.request.contextPath}/images/star" + list.review_star + ".svg").attr("alt", "별점 사진"))
						                .append($("<p>").addClass("rest_review_content_p").html(list.review_content))
						        )
						);
	                   
					
	                //로그인 한 유저 본인의 댓글일 경우 삭제 버튼 보여짐
	                if (sessionUserNo == list.user_no) {
	                	reviewItem.append(
	                        $("<div>").addClass("rest_review_delete_btn")
	                            .append(deleteBtn)
	                    );
	                }
	                reviewItem.appendTo("#rest_review_list");
	                
	                function start_http(str) {
	                    return /^http/.test(str);
	            	}
	                
	                //리플 작성 유저 프로필 삽입
	                //console.log(list.user_no);
	                //reply_profile_img
	                $.ajax({
	 		            url : "user_profile_img_check.jin",
	 		            type : "POST",
	 		            dataType : "text",
	 		            data : {
	 		               "user_no" : list.user_no
	 		            },
	 		            error : function(xhr, status, msg) {
	 		               alert("오류가 발생했습니다. 관리자에게 문의해주세요.\n"+"status : "+status + "/n" +"msg : "+ msg);
	 		            },
	 		            success : function(data){
	 		               
	 		               console.log(typeof(data));
	 		               
	 		               if(data!="false"){//
	 		                  console.log("---------------------------------")
	 		                  console.log("유저 프로필 이미지 정보 수신 성공 : "+data);
	 		               
	 		                  if(start_http(data)){
	 		                     
	 		                     $(reply_profile_img).attr("src", "${pageContext.request.contextPath}/resources/upload/"+data);
	 		                     
	 		                  }else{
	 		                     
	 		                  var imgPath = "${pageContext.request.contextPath}/resources/upload/" + data;
	 		
	 		                  // 이미지가 존재하는지 확인
	 		                  var img = new Image();
	 		                                    
	 		                  img.onload = function() {
	 		                     $(reply_profile_img).attr("src",imgPath);
	 		                  };
	 		                  
	 		                  img.onerror = function() {
	 		                     $(reply_profile_img).attr("src","${pageContext.request.contextPath}/resources/upload/default.svg");
	 		                  };
	 		                  
	 		                  img.src = imgPath; // 이미지 로드 시도
	 		                  }//else end
	 		                 }//if end
	 		               }//success end
	 		              });//ajax end
	 		            //리플 작성 유저 프로필 삽입 end 
	                
	                
	                
	                
	            });	//each end 
			}
        }
		
        $(document).on('click', '.rest_review_delete_btn_input', function() {
            var reviewNo = $(this).closest('.rest_review_single').data('no');
            deleteReview(reviewNo);
        });

        //댓글 삭제 버튼 클릭시 
        function deleteReview(reviewNo) {
        	var result = confirm("리뷰를 삭제하시겠습니까?");
            if (result) {
                alert("삭제했습니다!");
	            $.ajax({
	                url: "rest_review_delete.moon?rest_no=" + ${list.get(0).rest_no},
	                type: "POST",
	                dataType: "json",
	                data: {
	                    "review_no": reviewNo
	                },
	                error: function (xhr, status, msg) {
	                    alert(status + "/" + msg);
	                },
	                success: function (json) {
	                	reviewReadAll();   // list
	                	restReviewStar();  // star
	                }
	            });
            }
        }
        
        function restReviewStar(){
            $.ajax({
                 url: "rest_review_star.moon?rest_no=" + ${list.get(0).rest_no},
                 type: "POST",
                 dataType: "json",
                 async : "false",
                 error: function (xhr, status, msg) {
                     alert(status + "/" + msg);
                 },
                 success: function (json) {
                    	$(".progress").empty();
	                    let starArr =  [json.star1, json.star2, json.star3, json.star4, json.star5];
	                    reviewCnt = starArr[0] + starArr[1] + starArr[2] + starArr[3] + starArr[4] ;
	                    
	                    for(let i=1; i<6; i++){
			                let target = ".progress" + i;
		                   	let selector = ".star" + i;	
		                   	let cnt = starArr[i-1];
		                  	$(   target   ).css("width", "0%");
		                	if(reviewCnt != 0){
		                 	    var width = (cnt/reviewCnt)*100 + "%";
		                 	    $(   selector ).html(cnt);
		                 	    $(   target   ).stop().animate({"width":width});
		                	 }else{
		                		 $(selector).html("0");
		                		 $( target ).stop().animate({"width":"100px"});
		                	 } 
	                    }  
                   }
             });
         }
	});
</script>
<script>
//프로필 이미지 가져와서 작성자 이미지 넣기
 function start_http(str) {
          return /^http/.test(str);
   }

 $.ajax({
      url : "user_profile_img_check.jin",
      type : "POST",
      dataType : "text",
      data : {
         "user_no" : "0${singleBoard.user_no}"
      },
      error : function(xhr, status, msg) {
         alert("오류가 발생했습니다. 관리자에게 문의해주세요.\n"+"status : "+status + "/n" +"msg : "+ msg);
      },
      success : function(data){
         
         console.log(typeof(data));
         
         if(data!="false"){//
            
            console.log("유저 프로필 이미지 정보 수신 성공 : "+data);
         
            if(start_http(data)){
               
               $(".board_single_writer_profile_image img").attr("src", "${pageContext.request.contextPath}/resources/upload/"+data);
               
            }else{
               
            var imgPath = "${pageContext.request.contextPath}/resources/upload/" + data;

            // 이미지가 존재하는지 확인
            var img = new Image();
                              
            img.onload = function() {
               $(".board_single_writer_profile_image img").attr("src",imgPath);
            };
            
            img.onerror = function() {
               $(".board_single_writer_profile_image img").attr("src","${pageContext.request.contextPath}/resources/upload/default.svg");
            };
            
            img.src = imgPath; // 이미지 로드 시도
            }//else end
         
         }//if end
         
      }//success end
      
   });//ajax end
</script>


<%@ include file="../inc/footer.jsp"%>