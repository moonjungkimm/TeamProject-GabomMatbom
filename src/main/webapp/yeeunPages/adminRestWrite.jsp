<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../inc/header.jsp"%>
<div class="ye-container">
	<div class="wrapper-yeeun">
		<h2 class="admin-title">식당 추가</h2>
		<form id="rest-insert-form" method="post" action="adminRestWrite.ye" enctype="multipart/form-data">
			<fieldset>
				<legend>식당정보</legend>
				<h3>식당정보</h3>
				<div class="mg70">
					<label for="ctg_no">카테고리</label><select id="ctg_no" name="ctg_no">
						<option value="" selected hidden>카테고리 선택</option>
						<option value="1">한식</option>
						<option value="2">양식</option>
						<option value="3">중식</option>
						<option value="4">일식</option>
						<option value="5">아시안</option>
						<option value="6">분식</option>
						<option value="7">고기/구이</option>
						<option value="8">피자/치킨</option>
						<option value="9">레스토랑</option>
						<option value="10">뷔페</option>
						<option value="11">카페/디저트</option>
						<option value="12">주점</option>
						<option value="13">기타</option>
					</select>
				</div>
				<div>
					<label for="rest_name">상호명</label><input type="text"
						id="rest_name" name="rest_name" placeholder="식당 상호명 입력" />
				</div>
				<div>
					<label for="rest_tel">전화번호</label><input type="text" id="rest_tel"
						name="rest_tel" placeholder="- 포함 입력" />
				</div>
				<div>
					<label for="rest_address">주소</label><input type="text"
						id="rest_address" name="rest_address"
						onclick="sample6_execDaumPostcode() " /> <input type="button"
						onclick="sample6_execDaumPostcode()" value="주소검색" />
				</div>
				<div>
					<label for="rest_address2">상세주소</label><input type="text"
						id="rest_address2" name="rest_address2" placeholder="상세주소"
						title="상세주소 입력" />
				</div>
				<div class="mg30">
					<label for="rest_desc">상세정보</label><textarea id="rest_desc" name="rest_desc"></textarea>
				</div>
			</fieldset>
			<fieldset>
				<legend>영업시간</legend>
				<h3>영업시간</h3>
				<table class="mg70 mg30">
					<caption></caption>
					<thead>
						<tr>
							<th></th>
							<th>오픈시간</th>
							<th>마감시간</th>
							<th>휴무</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>월</td>
							<td><input type="time" title="월요일 오픈시간 입력" name="biz_open1"
								id="biz_open1" value="10:00" /></td>
							<td><input type="time" title="월요일 마감시간 입력" name="biz_close1"
								id="biz_close1" value="22:00" /></td>
							<td><input type="checkbox" title="월요일 휴무 여부" name="biz_off1"
								class="workingDays" /></td>
						</tr>
						<tr>
							<td>화</td>
							<td><input type="time" title="화요일 오픈시간 입력" name="biz_open2"
								id="biz_open2" value="10:00" /></td>
							<td><input type="time" title="화요일 마감시간 입력" name="biz_close2"
								id="biz_close2" value="22:00" /></td>
							<td><input type="checkbox" title="화요일 휴무 여부" name="biz_off2"
								class="workingDays" /></td>
						</tr>
						<tr>
							<td>수</td>
							<td><input type="time" title="수요일 오픈시간 입력" name="biz_open3"
								id="biz_open3" value="10:00" /></td>
							<td><input type="time" title="수요일 마감시간 입력" name="biz_close3"
								id="biz_close3" value="22:00" /></td>
							<td><input type="checkbox" title="수요일 휴무 여부" name="biz_off3"
								class="workingDays" /></td>
						</tr>
						<tr>
							<td>목</td>
							<td><input type="time" title="목요일 오픈시간 입력" name="biz_open4"
								id="biz_open4" value="10:00" /></td>
							<td><input type="time" title="목요일 마감시간 입력" name="biz_close4"
								id="biz_close3" value="22:00" /></td>
							<td><input type="checkbox" title="목요일 휴무 여부" name="biz_off4"
								class="workingDays" /></td>
						</tr>
						<tr>
							<td>금</td>
							<td><input type="time" title="금요일 오픈시간 입력" name="biz_open5"
								id="biz_open5" value="10:00" /></td>
							<td><input type="time" title="금요일 마감시간 입력" name="biz_close5"
								id="biz_close5" value="22:00" /></td>
							<td><input type="checkbox" title="금요일 휴무 여부" name="biz_off5"
								class="workingDays" /></td>
						</tr>
						<tr>
							<td>토</td>
							<td><input type="time" title="토요일 오픈시간 입력" name="biz_open6"
								id="biz_open6" value="10:00" /></td>
							<td><input type="time" title="토요일 마감시간 입력" name="biz_close6"
								id="biz_close6" value="22:00" /></td>
							<td><input type="checkbox" title="토요일 휴무 여부" name="biz_off6"
								class="workingDays" /></td>
						</tr>
						<tr>
							<td>일,공휴일</td>
							<td><input type="time" title="일,공휴일 오픈시간 입력"
								name="biz_open7" id="biz_open7" value="10:00" /></td>
							<td><input type="time" title="일,공휴일 마감시간 입력"
								name="biz_close7" id="biz_close7" value="22:00" /></td>
							<td><input type="checkbox" title="일,공휴일 휴무 여부"
								name="biz_off7" class="workingDays" /></td>
						</tr>
					</tbody>
				</table>
			</fieldset>
			<fieldset>
				<legend>식당 사진 업로드</legend>
				<h3>식당사진</h3>
				<div class="mg70 mg30">
					<input type="file" name="uploadFiles" multiple />
				</div>
			</fieldset>
			<fieldset>
				<legend>메뉴</legend>
				<h3>메뉴</h3>
				<div class="mg70 menu-box">
					<div>
						<label for="menu_name1">메뉴명</label><input type="text"
							id="menu_name1" name="menu_name1" placeholder="메뉴명 입력" />
					</div>
					<div>
						<label for="menu_price1">메뉴 가격</label><input type="number"
							id="menu_price1" name="menu_price1" placeholder="가격 입력" />
					</div>
				</div>
				<div class="menu-box">
					<div>
						<label for="menu_name2">메뉴명</label><input type="text"
							id="menu_name2" name="menu_name2" placeholder="메뉴명 입력" />
					</div>
					<div>
						<label for="menu_price2">메뉴 가격</label><input type="number"
							id="menu_price2" name="menu_price2" placeholder="가격 입력" />
					</div>
					<button class="menu-delete-btn">
						<img
							src="${pageContext.request.contextPath}/images/delete_icon.svg"
							alt="삭제" />
					</button>
				</div>
				<div class="menu-box">
					<div>
						<label for="menu_name3">메뉴명</label><input type="text"
							id="menu_name3" name="menu_name3" placeholder="메뉴명 입력" />
					</div>
					<div>
						<label for="menu_price3">메뉴 가격</label><input type="number"
							id="menu_price3" name="menu_price3" placeholder="가격 입력" />
					</div>
					<button class="menu-delete-btn">
						<img
							src="${pageContext.request.contextPath}/images/delete_icon.svg"
							alt="삭제" />
					</button>
				</div>
				<input type="hidden" name="menuSize" value="" class="menuSize">
				<div class="btn-box">
					<input type="button" class="mg30 menuMore" value="메뉴 추가" />
				</div>
			</fieldset>
			<div class="btn-box">
				<!-- 저장버튼. 목록버튼-->
				<button class="save-short-btn">저장</button>
				<a href="adminRestList.ye" class="default-short-btn">목록</a>
			</div>
		</form>

		<script
			src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>


		<script>
			function sample6_execDaumPostcode() {
				new daum.Postcode({
					oncomplete : function(data) {
						var addr = '';
						if (data.userSelectedType === 'R') {
							addr = data.roadAddress;
						} else {
							addr = data.jibunAddress;
						}
						document.getElementById('rest_address').value = addr;
						document.getElementById('rest_address2').focus();
					},
				}).open();
			}
		</script>

		<script>
			$(function() {
				// 체크되어있는 workingDays 의 time에 addClass input-block 주기 
				$('.workingDays:checked').each(
						function() {
							$(this).closest('tr').find('input[type="time"]')
									.addClass('input-block');
						});

				// form 전송시 메뉴 길이 함께 전송 
				$('#rest-insert-form').on('submit', function(e) {
					/* e.preventDefault(); */
					/* alert($('.menu-box').length);  */
					$('.menuSize').val($('.menu-box').length);
				})

				// 휴무 선택시 시간 선택 막기
				$('.workingDays').on(
						'click',
						function() {
							let targets = $(this).parent().parent().find(
									'input[type="time"]');
							targets.toggleClass('input-block');

							for (let i = 0; i < 2; i++) {
								let target = $(targets[i]);
								let isReadonly = target.prop('readonly');
								target.prop('readonly', !isReadonly);
							}
						});

				// 메뉴 삭제버튼 클릭시 메뉴란 지우기
				$('.menu-delete-btn').on('click', function(e) {
					e.preventDefault();
					$(this).parent('.menu-box').remove();
				});

				// 저장 버튼 클릭시 form submit
				/* $('.save-short-btn').on('click', function() {
					$('#rest-insert-form').submit();
				}); */

				// 메뉴 추가 버튼 클릭시 div 추가
				$('.menuMore')
						.on(
								'click',
								function() {
									let menuSize = $('.menu-box').length;
									// 가장 맨 뒤의 .menu-box를 찾음
									var lastMenuBox = $('.menu-box').last();

									var newDiv1 = $('<div class="menu-box">');

									var newDiv2 = $('<div>');
									newDiv2.append('<label for="menu_name'
											+ (menuSize + 1) + '">메뉴명</label>');
									newDiv2
											.append('<input type="text" id="menu_name'
													+ (menuSize + 1)
													+ '" name="menu_name'
													+ (menuSize + 1)
													+ '" placeholder="메뉴명 입력" />');

									var newDiv3 = $('<div>');
									newDiv3.append('<label for="menu_price'
											+ (menuSize + 1)
											+ '">메뉴 가격</label>');
									newDiv3
											.append('<input type="number" id="menu_price'
													+ (menuSize + 1)
													+ '" name="menu_price'
													+ (menuSize + 1)
													+ '" placeholder="가격 입력" />');

									var buttonBox = $(
											'<button class="menu-delete-btn"/>')
											.append(
													'<img src="${pageContext.request.contextPath}/images/delete_icon.svg" alt="삭제" />');

									newDiv1.append(newDiv2).append(newDiv3)
											.append(buttonBox);
									// 새로운 <div>를 가장 맨 뒤의 .menu-box 뒤에 추가
									lastMenuBox.after(newDiv1);

									$(document).on(
											'click',
											'.menu-delete-btn',
											function(e) {
												e.preventDefault();
												$(this).parent('.menu-box')
														.remove();
											});
								});

			});
		</script>
	</div>
</div>
<%@ include file="../inc/footer.jsp"%>
