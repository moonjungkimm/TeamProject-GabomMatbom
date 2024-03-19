<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ include file="../inc/header.jsp"%>

<div class="ye-container">
	<div class="wrapper-yeeun">
		<section class="section-yeeun sec1">
			<h2>오늘의 BEST 레시피</h2>
			<ul class="result-rest-list2">
				<c:forEach var="recipe" items="${recipeAll}">
					<li class="rest-large-card"><a
						href="recipedetail.moon?recipe_id=${recipe.recipe_id}"
						title="상세페이지 이동">
							<div class="inner-box">
								<figure class="recipe-img-box">
									<img
										src="${recipe.img_url}"
										alt="레시피 사진" />
								</figure>
								<div class="recipe">
									<p class="rest-name">${recipe.title}</p>
									<div class="recipe_desc">
										<p class="rest-desc recipe_cooking_time">소요시간 : ${recipe.cooking_time}</p>
										<p class="rest-add recipe_difficulty">난이도 : ${recipe.difficulty}</p>
										<p class="rest-tel recipe_servings">인분 : ${recipe.servings}</p>
									</div>
								</div>
							</div>
					</a></li>
				</c:forEach>
			</ul>
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