<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/header.jsp" %>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/writereply.css">

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
    <div style=" font-weight: bold;margin-top: 10px;">댓글 (10)</div>
    
 
    
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
        <th class="tr1">no</th>
        <th class="tr2">게시글</th>
        <th>댓글 내용</th>
        <th>댓글 작성일</th>       
        <th></th>
        <th>댓글</th>
    </tr>
</thead>
<tbody>
    <tr>
        <td>10</td>
        <td><a href="">오리온 카스타드 클라쓰</a></td>
        <td><a href="">오리온 카스타드 에서 식중독균이 검출....?</a></td>
        <td>2024/01/12</td>
        <td></td>   
        <td>
            <button class="rest-delete" onclick="deleteRest();">
                <img src="images/delete_icon.svg" alt="삭제" />
            </button>
        </td>
    </tr>
 
    <tr>
        <td>9</td>
        <td><a href="">오리온 카스타드 클라쓰</a></td>
        <td><a href="">오리온 카스타드 에서 식중독균이 검출....?</a></td>
        <td>2024/01/12</td>
        <td></td>   
        <td>
            <button class="rest-delete" onclick="deleteRest();">
                <img src="images/delete_icon.svg" alt="삭제" />
            </button>
        </td>
    </tr>
        
    <tr>
        <td>8</td>
        <td><a href="">오리온 카스타드 클라쓰</a></td>
        <td><a href="">오리온 카스타드 에서 식중독균이 검출....?</a></td>
        <td>2024/01/12</td>
        <td></td>   
        <td>
            <button class="rest-delete" onclick="deleteRest();">
                <img src="images/delete_icon.svg" alt="삭제" />
            </button>
        </td>
    </tr>
       
    <tr>
        <td>7</td>
        <td><a href="">오리온 카스타드 클라쓰</a></td>
        <td><a href="">오리온 카스타드 에서 식중독균이 검출....?</a></td>
        <td>2024/01/12</td>
        <td></td>   
        <td>
            <button class="rest-delete" onclick="deleteRest();">
                <img src="images/delete_icon.svg" alt="삭제" />
            </button>
        </td>
    </tr>
     
    <tr>
        <td>6</td>
        <td><a href="">오리온 카스타드 클라쓰</a></td>
        <td><a href="">오리온 카스타드 에서 식중독균이 검출....?</a></td>
        <td>2024/01/12</td>
        <td></td>   
        <td>
            <button class="rest-delete" onclick="deleteRest();">
                <img src="images/delete_icon.svg" alt="삭제" />
            </button>
        </td>
    </tr>

    <tr>
        <td>5</td>
        <td><a href="">오리온 카스타드 클라쓰</a></td>
        <td><a href="">오리온 카스타드 에서 식중독균이 검출....?</a></td>
        <td>2024/01/12</td>
        <td></td>   
        <td>
            <button class="rest-delete" onclick="deleteRest();">
                <img src="images/delete_icon.svg" alt="삭제" />
            </button>
        </td>
    </tr>

    <tr>
        <td>4</td>
        <td><a href="">오리온 카스타드 클라쓰</a></td>
        <td><a href="">오리온 카스타드 에서 식중독균이 검출....?</a></td>
        <td>2024/01/12</td>
        <td></td>   
        <td>
            <button class="rest-delete" onclick="deleteRest();">
                <img src="images/delete_icon.svg" alt="삭제" />
            </button>
        </td>
    </tr>

    <tr>
        <td>3</td>
        <td><a href="">오리온 카스타드 클라쓰</a></td>
        <td><a href="">오리온 카스타드 에서 식중독균이 검출....?</a></td>
        <td>2024/01/12</td>
        <td></td>   
        <td>
            <button class="rest-delete" onclick="deleteRest();">
                <img src="images/delete_icon.svg" alt="삭제" />
            </button>
        </td>
    </tr>

    <tr>
        <td>2</td>
        <td><a href="">오리온 카스타드 클라쓰</a></td>
        <td><a href="">오리온 카스타드 에서 식중독균이 검출....?</a></td>
        <td>2024/01/12</td>
        <td></td>   
        <td>
            <button class="rest-delete" onclick="deleteRest();">
                <img src="images/delete_icon.svg" alt="삭제" />
            </button>
        </td>
    </tr>

    <tr>
        <td>1</td>
        <td><a href="">오리온 카스타드 클라쓰</a></td>
        <td><a href="">오리온 카스타드 에서 식중독균이 검출....?</a></td>
        <td>2024/01/12</td>
        <td></td>   
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