<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/header.jsp" %>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/likewrite.css">

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
    <div style=" font-weight: bold;margin-top: 10px;">게시글 (10)</div>
    
    <div class="navbar3-1">
        <form action="#">
            <label for=""></label>
            <select name="" id="">
                <option>전체</option>
                <option>자유게시판</option>
                <option>맛집게시판</option>
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
        <th>no</th>
        <th>카테고리</th>
        <th>게시글 제목</th>
        <th>댓글 수</th>
        <th>작성자</th>
        <th>작성일자</th>
        <th>삭제하기</th>
    </tr>
</thead>
<tbody>
    <tr>
        <td>3</td>
        <td>자유게시판</td>
        <td>오리온 개판이다</td>
        <td>1</td>
        <td>문도박사</td>
        <td>24/01/06</td>

        <td>           
            <button class="rest-delete" onclick="deleteRest();">
                <img src="images/delete_icon.svg" alt="삭제" />
            </button>
        </td>
    </tr>
 
    <tr>
        <td>2</td>
        <td>자유게시판</td>
        <td>오리온 개판이다</td>
        <td>1</td>
        <td>예은이</td>
        <td>24/01/06</td>

        <td>           
            <button class="rest-delete" onclick="deleteRest();">
                <img src="images/delete_icon.svg" alt="삭제" />
            </button>
        </td>
    </tr>
        
    <tr>
        <td>1</td>
        <td>자유게시판</td>
        <td>오리온 개판이다</td>
        <td>1</td>
        <td>예은이</td>
        <td>24/01/06</td>

        <td>           
            <button class="rest-delete" onclick="deleteRest();">
                <img src="images/delete_icon.svg" alt="삭제" />
            </button>
        </td>
    </tr>
       
    </tbody>
</table>
</div>


<%@ include file="../inc/footer.jsp" %>
