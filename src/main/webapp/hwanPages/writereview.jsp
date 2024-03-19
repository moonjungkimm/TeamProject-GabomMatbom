<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/header.jsp" %>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/writereview.css">

 <div class="likeresmain">


<div class="bar1">
    
    <div>
        <p class="navbar0-1"><img src="images/img_thunder.png" alt="#" style="border: 1px solid black; border-radius: 50%; width: 50px; height: 50px;"></p>
    </div>
    <div class="navbar1-1">
        <a href=""><strong style="font-weight:  bold;">피지환</strong>님</a>
    </div>
    <div class="navbar1-2 navbar1-1-2">
        <a href="">회원 정보 변경</a>
    </div>
    
</div>
<hr class="hr">

<div class="bar2">
    
  <a href="postwrite.jee">작성 게시글</a>
    
    <a href="writereply.jee">작성 댓글</a>
    
    <a href="writereview.jee">작성 리뷰</a>
    
    <a href="likeres.jee">좋아요 식당</a>
    
    <a href="likewrite.jee">좋아요 게시글</a>
    
</div>

<hr class="hr">

<div class="bar4">
  
      

</div>


   
<div class="bar3">
    <div style=" font-weight: bold;margin-top: 10px;">리뷰 (10)</div>
    
   
    
    <div class="navbar3-2">
        <form action="#">
            <label for=""></label>
            <select name="" id="">
                <option>최신순</option>
                <option>오래된순</option>
            </select>
        </form>
    </div> 
</div>



<table class="admin-table">
    <!-- <caption>
        작성게시글
    </caption> -->

<thead>
    <tr>
        <th scope="col">no</th>
        <th scope="col">식당명</th>
        <th scope="col">리뷰내용</th>
        <th scope="col">작성일자</th>
        <th scope="col"></th>
        <th scope="col">삭제하기</th>
    </tr>
</thead>
<tbody>
    	<c:set  var="total"   value="${list.size()}" />
		<c:forEach   var="dto"  items="${list}"  varStatus="status">
    <tr>
        <td>${dto.review_no}</td>
        <td>${dto.rest_name}</td>
        <td>${dto.review_content}</td>   
        <td>${dto.review_time}</td>
        <td></td>
        
        <td>   
          
           <input type="image"  src="images/xicon.svg" alt="삭제" class="rest-delete"  data-rno="${dto.review_no}"/>
           
        </td>
    </tr>
 </c:forEach>
    <tr>
    </tbody>
</table>
	<script>
	$(function(){
		$(".rest-delete").on("click", function(){
			let rno_v= $(this).attr("data-rno");
			$.ajax({
				url:"deletereview.jee",
				type:"GET" , 
				dataType:"json" ,
				data:{"rno":rno_v},
				error:function(xhr, status, msg){ alert(status+"/" +msg);} , 
				success:function(json){
					let msg = '관리자에게 문의바랍니다.';
					if(json.result == 1){ msg = '삭제성공!';  }
					alert(msg);
					
					location.ref="writereview.jee";
					/* milkReadAll(); */
					
				}
			});
		});
	});
	
	
	</script>    
</div>

<%@ include file="../inc/footer.jsp" %>