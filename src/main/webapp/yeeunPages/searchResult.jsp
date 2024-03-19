<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ include file="../inc/header.jsp"%>

<div class="ye-container">
	<div class="wrapper-yeeun">
		<section class="section-yeeun sec1">
			<h2>맛봄 검색</h2>
			<div class="main-search-box">
				<form action="searchResult.ye?" method="get" id="rest-search-form">
					<fieldset>
						<legend>전국 맛집 검색</legend>
						<input type="search" id="search" name="searchKey"
							value="${param.searchKey }" placeholder="식당 이름, 지역명, 메뉴명으로 검색" />
						<input type="submit" value="" title="식당 검색을 시작합니다" />
					</fieldset>
					<fieldset>
						<div class="filter-container">
							<h3>카테고리 선택</h3>
							<div class="chk-container">
								<div class="chk-group">
									<input type="checkbox" id="ctg_all" name="ctg_no" value="0"
										<c:if test='${paramValues.ctg_no[0] eq "" || paramValues.ctg_no[0] eq 0}'>checked</c:if> />
									<div class="chkbox-custom"></div>
									<label class="chkbox-label" for="ctg_all">전체</label>
								</div>
								<c:forEach var="ctg" varStatus="status" items="${ctgList}">
									<c:if test="${!status.last}">
										<div class="chk-group">
											<input type="checkbox" id="ctg_${ctg.ctg_no}" name="ctg_no"
												value="${ctg.ctg_no}"
												<c:forEach var="ctgNo" items="${paramValues.ctg_no}">
							<c:if test="${ctgNo eq ctg.ctg_no}">
	                    		checked
	                		</c:if>
                		</c:forEach>
												<c:if test='${paramValues.ctg_no[0] eq ""}'>checked</c:if> />
											<div class="chkbox-custom"></div>
											<label class="chkbox-label" for="ctg_${ctg.ctg_no}">${ctg.ctg_name}</label>
										</div>
									</c:if>
								</c:forEach>

							</div>
							<script>
								$(function() {
									$('.chkbox-custom')
											.on(
													'click',
													function() {
														$(this)
																.siblings(
																		'input[type="checkbox"]')
																.trigger(
																		'click');
													});
									$('#ctg_all')
											.on(
													'click',
													function() {
														let ischecked = $(this)
																.prop('checked');
														let chkboxes = $('.chk-group input[type="checkbox"]');
														for (let i = 0; i < chkboxes.length; i++) {
															let chk = chkboxes[i];
															$(chk).prop(
																	'checked',
																	ischecked);
														}
													});
									$('input[name="ctg_no"]')
											.not('[value="0"]')
											.on(
													'click',
													function() {
														let chkboxes = $(
																'.chk-group input[type="checkbox"]')
																.not(
																		'[value="0"]');
														for (let i = 0; i < chkboxes.length; i++) {
															let chk = chkboxes[i];
															// console.log(i + '번째 : ' + $(chk).prop('checked'));
															if ($(chk).prop(
																	'checked') == false) {
																$('#ctg_all')
																		.prop(
																				'checked',
																				false);
																return;
															}
														}
														$('#ctg_all')
																.prop(
																		'checked',
																		true);
													});
								});
							</script>
							<button class="org-large-btn">필터 적용</button>
						</div>
					</fieldset>

				</form>
			</div>

			<div class="sort-box">
				<h3>
					검색 결과 <strong>${searchResult.size()}</strong>
				</h3>
				<!-- <select name="sort" class="admin-select">
					<option value="reviewAvg" selected>별점순</option>
					<option value="like">좋아요순</option>
				</select> -->
			</div>
			<ul class="result-rest-list2">
				<c:forEach var="rest" items="${searchResult}">
					<li class="rest-large-card"><a
						href="detail.ye?rest_no=${rest.rest_no}"
						title="${rest.rest_name} 상세페이지 이동">
							<div class="inner-box">
								<figure class="rest-img-box">
									<c:choose>
									    <c:when test="${rest.file_name == null}">
									        <img src="${pageContext.request.contextPath}/images/rest_no_img.svg" alt="" />
									    </c:when>
									    <c:otherwise>
									        <img src="${pageContext.request.contextPath}/resources/uploads/${rest.file_name}" alt="" />
									    </c:otherwise>
									</c:choose>
								</figure>
								<div>
									<p class="review-box">
										<img
											src="${pageContext.request.contextPath}/images/star_icon.svg"
											alt="별 아이콘" /> <span>${rest.review_avg}
											(${rest.review_cnt})</span>
									</p>
									<p class="rest-name">${rest.rest_name}</p>
									<p class="rest-desc">${rest.rest_desc}</p>
								<!-- 	<p class="rest-menu">오늘도 한우 육회비빔밥, 한우 갈비살, 한우 양념 갈비살,오늘도 한우
										육회비빔밥, 한우 갈비살, 한우 양념 갈비살</p> -->
									<p class="rest-address">${rest.rest_address}
										<c:if test="${rest.rest_address2 != null}">, ${rest.rest_address2}</c:if>
									</p>
									<p class="rest-tel">${rest.rest_tel}</p>
									<span class="ctg-name">${rest.ctg_name}</span>
								</div>
								<div class="like-box">
									<figure>
										<img
											src="${pageContext.request.contextPath}/images/heart_icon.svg"
											alt="" />
									</figure>
									<span class="like-count">${rest.rest_like_cnt}</span>
								</div>
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