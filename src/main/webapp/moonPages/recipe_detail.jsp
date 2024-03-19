<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../inc/header.jsp"%>



<div class="ye-container">
	
	<div class="wrapper-yeeun rest-single recipe_single">
		<section class="rest-info">
			<div class="rest-title">
				<h2 class="rest-name">${recipeDetail.title}</h2>
			</div>
			<div class="view2_summary_info">
				<span class="view2_summary_info1">${recipeDetail.servings}</span>	
				<span class="view2_summary_info2">${recipeDetail.cooking_time}</span>	
				<span class="view2_summary_info3">${recipeDetail.difficulty}</span>			
			</div>
			<!-- 재료 -->
			<div class="ingre_title">
				<b>재료</b>
				<span>Ingredients</span>
			</div>
			<div class="recipe_ingre">
				<c:forEach var="recipeIngredient" items="${recipeIngredients}" varStatus="loop">
					<dl class="recipe_inner-box ${loop.index % 2 == 0 ? 'left-box' : 'right-box'}">
						<dt>${recipeIngredient.ingredient_name}</dt>
				        <dd>${recipeIngredient.ingredient_amount}</dd>
				    </dl>
			    </c:forEach>	
			</div>
			
			<div class="ingre_title">
				<b>조리순서</b>
				<span>Steps</span>
			</div>	
			<div class="recipe_steps">
			    <c:forEach var="recipeStep" items="${recipeSteps}" varStatus="status">
			        <%-- <span>${status.index + 1}</span> --%>
			        <div class="inner-box recipe_step">
			            ${recipeStep.instruction}
			        </div>
			    </c:forEach>
			</div>
	
		</section>
	</div>
</div>

<%@ include file="../inc/footer.jsp"%>