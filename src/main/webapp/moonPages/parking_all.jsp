<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ include file="../inc/header.jsp"%>

<div class="ye-container">
	<div class="wrapper-yeeun">
		<section class="section-yeeun sec1">
			<h2>오늘의 BEST 레시피</h2>
			<p>${rest }</p>
			<p>${areaCode }</p>
			<ul class="result-rest-list2">
				<c:forEach var="recipe" items="${recipeAll}">
					<li class="rest-large-card"><a
						href="recipedetail.moon?recipe_id=${recipe.recipe_id}"
						title="상세페이지 이동">
							<div class="inner-box">
								<figure class="rest-img-box">
									<img
										src="${recipe.img_url}"
										alt="" />
								</figure>
								<div>
									<%-- <p class="review-box">
										<img
											src="${pageContext.request.contextPath}/images/star_icon.svg"
											alt="별 아이콘" /> <span>${rest.review_avg}
											(${rest.review_cnt})</span>
									</p> --%>
									<p class="rest-name">${recipe.title}</p>
									<p class="rest-desc">${recipe.cooking_time}</p>
								<!-- 	<p class="rest-menu">오늘도 한우 육회비빔밥, 한우 갈비살, 한우 양념 갈비살,오늘도 한우
										육회비빔밥, 한우 갈비살, 한우 양념 갈비살</p> -->
									<p class="rest-address">${recipe.difficulty}</p>
									<p class="rest-tel">${recipe.servings}</p>
									<%-- <span class="ctg-name">${rest.ctg_name}</span> --%>
								</div>
								<%-- <div class="like-box">
									<figure>
										<img
											src="${pageContext.request.contextPath}/images/heart_icon.svg"
											alt="" />
									</figure>
									<span class="like-count">${rest.rest_like_cnt}</span>
								</div> --%>
							</div>
					</a></li>
				</c:forEach>
			</ul>
			<!-- <ul class="pagenation">
				<li class="prebtn"><a href="#"></a></li>
				<li class="active"><a href="">1</a></li>
				<li><a href="">2</a></li>
				<li><a href="">3</a></li>
				<li><a href="">4</a></li>
				<li><a href="">5</a></li>
				<li class="nextbtn"><a href="#"></a></li>
			</ul> -->
		</section>
	</div>
</div>
<script>
$(function(){
	$('.admin-select').on('change',function(){
		let selected = $('.admin-select').val();
		console.log(selected);
	})
})
</script>
<%@ include file="../inc/footer.jsp"%>