<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../inc/header.jsp"%>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/reviewstar.css">

<div class="main">


	<div class="mainin_2">
			<form action="" method="post">
				<fieldset>
		<div class="mainnavbar">
				<div class="main2bar-1">
					<p class="navbar0-1" style="padding-right: 10px;">
						<img src="images/img_thunder.png" alt="#"
							style="border: 1px solid black; border-radius: 50%; width: 50px; height: 50px;">
					</p>
				</div>
				<div class="main2bar-2" style="padding-right: 180px;">
					<a href=""><strong style="font-weight: bold;">닉네임</strong></a>
				</div>
		</div>

		<div class="mainnavbar1">
			<div class="reviewtext">

				<input type="text" value="" id="" name=""
					style="width: 500px; height: 120px; border: 2px solid #DDDDDD;">
			</div>

			<div class="reviewbtn" style="padding-top: 5px;">
				<input type="button" value="리뷰등록"
					style="width: 300px; height: 30px; background-color: #FDA54A; border: 2px solid #DDDDDD;">
			</div>

		</div>
			</fieldset>
		</form>
	</div>
	
	
</div>

<hr>

<div class="main3">

	<div class="main3in_1">
		
			<div class="main3bar-1">
				<p class="navbar0-1" style="padding-right: 10px;">
					<img src="images/img_thunder.png" alt="#"
						style="border: 1px solid black; border-radius: 50%; width: 50px; height: 50px;">
				</p>
			</div>

			<div class="main3bar-2" style="padding-right: 50px;">
				<a href=""><strong style="font-weight: bold;">닉네임</strong></a>
			</div>
	</div>

	<div class="reviewtext2">
		<input type="text" value="" id="" name=""
			style="width: 500px; height: 120px; border: 2px solid #DDDDDD;">
	</div>


</div>



<%@ include file="../inc/footer.jsp"%>