<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/header.jsp" %>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/postwrite.css">


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
        <th>no</th>
        <th>게시글 제목</th>
        <th>조회수</th>
        <th>주천수</th>
        <th>작성일</th>
        <th></th>
    </tr>
</thead>
<tbody>
    <tr>
        <td>10</td>
        <td><a href="">오리온 카스타드에서 식중독균이 검출됐다네요ㅡㅡ?</a></td>
        <td>12</td>
        <td><a href="" >
            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                <path d="M16.7401 2.96998C15.7475 2.97182 14.7756 3.25451 13.9368 3.78538C13.098 4.31625 12.4266 5.07363 12.0001 5.96998C11.4907 4.88762 10.6268 4.0117 9.55164 3.48724C8.47646 2.96279 7.25441 2.82125 6.08782 3.08607C4.92122 3.35088 3.88005 4.00617 3.13668 4.94344C2.39331 5.8807 1.99233 7.04374 2.00011 8.23998C2.00011 15.6 12.0001 20.92 12.0001 20.92C12.0001 20.92 22.0001 15.6 22.0001 8.23998C22.0001 6.84402 21.4463 5.50509 20.4601 4.51706C19.4739 3.52903 18.1361 2.97263 16.7401 2.96998Z" fill="#FF4D37"/>
            </svg>
        </a></td>
        <td>2024-01-12</td>

        <td>
            <a href="#" class="edit_btn"><img src="images/edit_icon.svg" alt="수정" /></a>
            <button class="rest-delete" onclick="deleteRest();">
                <img src="images/delete_icon.svg" alt="삭제" />
            </button>
        </td>
    </tr>
 
    <tr>
        <td>9</td>
        <td><a href="">오리온 카스타드에서 식중독균이 검출됐다네요ㅡㅡ?</a></td>
        <td>12</td>
        <td><a href="" >
            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                <path d="M16.7401 2.96998C15.7475 2.97182 14.7756 3.25451 13.9368 3.78538C13.098 4.31625 12.4266 5.07363 12.0001 5.96998C11.4907 4.88762 10.6268 4.0117 9.55164 3.48724C8.47646 2.96279 7.25441 2.82125 6.08782 3.08607C4.92122 3.35088 3.88005 4.00617 3.13668 4.94344C2.39331 5.8807 1.99233 7.04374 2.00011 8.23998C2.00011 15.6 12.0001 20.92 12.0001 20.92C12.0001 20.92 22.0001 15.6 22.0001 8.23998C22.0001 6.84402 21.4463 5.50509 20.4601 4.51706C19.4739 3.52903 18.1361 2.97263 16.7401 2.96998Z" fill="#FF4D37"/>
            </svg>
        </a></td>
        <td>2024-01-12</td>

        <td>
            <a href="#" class="edit_btn"><img src="images/edit_icon.svg" alt="수정" /></a>
            <button class="rest-delete" onclick="deleteRest();">
                <img src="images/delete_icon.svg" alt="삭제" />
            </button>
        </td>
    </tr>
        
    <tr>
        <td>8</td>
        <td><a href="">오리온 카스타드에서 식중독균이 검출됐다네요ㅡㅡ?</a></td>
        <td>12</td>
        <td><a href="" >
            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                <path d="M16.7401 2.96998C15.7475 2.97182 14.7756 3.25451 13.9368 3.78538C13.098 4.31625 12.4266 5.07363 12.0001 5.96998C11.4907 4.88762 10.6268 4.0117 9.55164 3.48724C8.47646 2.96279 7.25441 2.82125 6.08782 3.08607C4.92122 3.35088 3.88005 4.00617 3.13668 4.94344C2.39331 5.8807 1.99233 7.04374 2.00011 8.23998C2.00011 15.6 12.0001 20.92 12.0001 20.92C12.0001 20.92 22.0001 15.6 22.0001 8.23998C22.0001 6.84402 21.4463 5.50509 20.4601 4.51706C19.4739 3.52903 18.1361 2.97263 16.7401 2.96998Z" fill="#FF4D37"/>
            </svg>
        </a></td>
        <td>2024-01-12</td>

        <td>
            <a href="#" class="edit_btn"><img src="images/edit_icon.svg" alt="수정" /></a>
            <button class="rest-delete" onclick="deleteRest();">
                <img src="images/delete_icon.svg" alt="삭제" />
            </button>
        </td>
    </tr>
       
    <tr>
        <td>7</td>
        <td><a href="">오리온 카스타드에서 식중독균이 검출됐다네요ㅡㅡ?</a></td>
        <td>12</td>
        <td><a href="" >
            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                <path d="M16.7401 2.96998C15.7475 2.97182 14.7756 3.25451 13.9368 3.78538C13.098 4.31625 12.4266 5.07363 12.0001 5.96998C11.4907 4.88762 10.6268 4.0117 9.55164 3.48724C8.47646 2.96279 7.25441 2.82125 6.08782 3.08607C4.92122 3.35088 3.88005 4.00617 3.13668 4.94344C2.39331 5.8807 1.99233 7.04374 2.00011 8.23998C2.00011 15.6 12.0001 20.92 12.0001 20.92C12.0001 20.92 22.0001 15.6 22.0001 8.23998C22.0001 6.84402 21.4463 5.50509 20.4601 4.51706C19.4739 3.52903 18.1361 2.97263 16.7401 2.96998Z" fill="#FF4D37"/>
            </svg>
        </a></td>
        <td>2024-01-12</td>

        <td>
            <a href="#" class="edit_btn"><img src="images/edit_icon.svg" alt="수정" /></a>
            <button class="rest-delete" onclick="deleteRest();">
                <img src="images/delete_icon.svg" alt="삭제" />
            </button>
        </td>
    </tr>
     
    <tr>
        <td>6</td>
        <td><a href="">오리온 카스타드에서 식중독균이 검출됐다네요ㅡㅡ?</a></td>
        <td>12</td>
        <td><a href="" >
            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                <path d="M16.7401 2.96998C15.7475 2.97182 14.7756 3.25451 13.9368 3.78538C13.098 4.31625 12.4266 5.07363 12.0001 5.96998C11.4907 4.88762 10.6268 4.0117 9.55164 3.48724C8.47646 2.96279 7.25441 2.82125 6.08782 3.08607C4.92122 3.35088 3.88005 4.00617 3.13668 4.94344C2.39331 5.8807 1.99233 7.04374 2.00011 8.23998C2.00011 15.6 12.0001 20.92 12.0001 20.92C12.0001 20.92 22.0001 15.6 22.0001 8.23998C22.0001 6.84402 21.4463 5.50509 20.4601 4.51706C19.4739 3.52903 18.1361 2.97263 16.7401 2.96998Z" fill="#FF4D37"/>
            </svg>
        </a></td>
        <td>2024-01-12</td>

        <td>
            <a href="#" class="edit_btn"><img src="images/edit_icon.svg" alt="수정" /></a>
            <button class="rest-delete" onclick="deleteRest();">
                <img src="images/delete_icon.svg" alt="삭제" />
            </button>
        </td>
    </tr>

    <tr>
        <td>5</td>
        <td><a href="">오리온 카스타드에서 식중독균이 검출됐다네요ㅡㅡ?</a></td>
        <td>12</td>
        <td><a href="" >
            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                <path d="M16.7401 2.96998C15.7475 2.97182 14.7756 3.25451 13.9368 3.78538C13.098 4.31625 12.4266 5.07363 12.0001 5.96998C11.4907 4.88762 10.6268 4.0117 9.55164 3.48724C8.47646 2.96279 7.25441 2.82125 6.08782 3.08607C4.92122 3.35088 3.88005 4.00617 3.13668 4.94344C2.39331 5.8807 1.99233 7.04374 2.00011 8.23998C2.00011 15.6 12.0001 20.92 12.0001 20.92C12.0001 20.92 22.0001 15.6 22.0001 8.23998C22.0001 6.84402 21.4463 5.50509 20.4601 4.51706C19.4739 3.52903 18.1361 2.97263 16.7401 2.96998Z" fill="#FF4D37"/>
            </svg>
        </a></td>
        <td>2024-01-12</td>

        <td>
            <a href="#" class="edit_btn"><img src="images/edit_icon.svg" alt="수정" /></a>
            <button class="rest-delete" onclick="deleteRest();">
                <img src="images/delete_icon.svg" alt="삭제" />
            </button>
        </td>
    </tr>

    <tr>
        <td>4</td>
        <td><a href="">오리온 카스타드에서 식중독균이 검출됐다네요ㅡㅡ?</a></td>
        <td>12</td>
        <td><a href="" >
            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                <path d="M16.7401 2.96998C15.7475 2.97182 14.7756 3.25451 13.9368 3.78538C13.098 4.31625 12.4266 5.07363 12.0001 5.96998C11.4907 4.88762 10.6268 4.0117 9.55164 3.48724C8.47646 2.96279 7.25441 2.82125 6.08782 3.08607C4.92122 3.35088 3.88005 4.00617 3.13668 4.94344C2.39331 5.8807 1.99233 7.04374 2.00011 8.23998C2.00011 15.6 12.0001 20.92 12.0001 20.92C12.0001 20.92 22.0001 15.6 22.0001 8.23998C22.0001 6.84402 21.4463 5.50509 20.4601 4.51706C19.4739 3.52903 18.1361 2.97263 16.7401 2.96998Z" fill="#FF4D37"/>
            </svg>
        </a></td>
        <td>2024-01-12</td>

        <td>
            <a href="#" class="edit_btn"><img src="images/edit_icon.svg" alt="수정" /></a>
            <button class="rest-delete" onclick="deleteRest();">
                <img src="images/delete_icon.svg" alt="삭제" />
            </button>
        </td>
    </tr>

    <tr>
        <td>3</td>
        <td><a href="">오리온 카스타드에서 식중독균이 검출됐다네요ㅡㅡ?</a></td>
        <td>12</td>
        <td><a href="" >
            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                <path d="M16.7401 2.96998C15.7475 2.97182 14.7756 3.25451 13.9368 3.78538C13.098 4.31625 12.4266 5.07363 12.0001 5.96998C11.4907 4.88762 10.6268 4.0117 9.55164 3.48724C8.47646 2.96279 7.25441 2.82125 6.08782 3.08607C4.92122 3.35088 3.88005 4.00617 3.13668 4.94344C2.39331 5.8807 1.99233 7.04374 2.00011 8.23998C2.00011 15.6 12.0001 20.92 12.0001 20.92C12.0001 20.92 22.0001 15.6 22.0001 8.23998C22.0001 6.84402 21.4463 5.50509 20.4601 4.51706C19.4739 3.52903 18.1361 2.97263 16.7401 2.96998Z" fill="#FF4D37"/>
            </svg>
        </a></td>
        <td>2024-01-12</td>

        <td>
            <a href="#" class="edit_btn"><img src="images/edit_icon.svg" alt="수정" /></a>
            <button class="rest-delete" onclick="deleteRest();">
                <img src="images/delete_icon.svg" alt="삭제" />
            </button>
        </td>
    </tr>

    <tr>
        <td>2</td>
        <td><a href="">오리온 카스타드에서 식중독균이 검출됐다네요ㅡㅡ?</a></td>
        <td>12</td>
        <td><a href="" >
            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                <path d="M16.7401 2.96998C15.7475 2.97182 14.7756 3.25451 13.9368 3.78538C13.098 4.31625 12.4266 5.07363 12.0001 5.96998C11.4907 4.88762 10.6268 4.0117 9.55164 3.48724C8.47646 2.96279 7.25441 2.82125 6.08782 3.08607C4.92122 3.35088 3.88005 4.00617 3.13668 4.94344C2.39331 5.8807 1.99233 7.04374 2.00011 8.23998C2.00011 15.6 12.0001 20.92 12.0001 20.92C12.0001 20.92 22.0001 15.6 22.0001 8.23998C22.0001 6.84402 21.4463 5.50509 20.4601 4.51706C19.4739 3.52903 18.1361 2.97263 16.7401 2.96998Z" fill="#FF4D37"/>
            </svg>
        </a></td>
        <td>2024-01-12</td>

        <td>
            <a href="#" class="edit_btn"><img src="images/edit_icon.svg" alt="수정" /></a>
            <button class="rest-delete" onclick="deleteRest();">
                <img src="images/delete_icon.svg" alt="삭제" />
            </button>
        </td>
    </tr>

    <tr>
        <td>1</td>
        <td><a href="">오리온 카스타드에서 식중독균이 검출됐다네요ㅡㅡ?</a></td>
        <td>12</td>
        <td><a href="" >
            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                <path d="M16.7401 2.96998C15.7475 2.97182 14.7756 3.25451 13.9368 3.78538C13.098 4.31625 12.4266 5.07363 12.0001 5.96998C11.4907 4.88762 10.6268 4.0117 9.55164 3.48724C8.47646 2.96279 7.25441 2.82125 6.08782 3.08607C4.92122 3.35088 3.88005 4.00617 3.13668 4.94344C2.39331 5.8807 1.99233 7.04374 2.00011 8.23998C2.00011 15.6 12.0001 20.92 12.0001 20.92C12.0001 20.92 22.0001 15.6 22.0001 8.23998C22.0001 6.84402 21.4463 5.50509 20.4601 4.51706C19.4739 3.52903 18.1361 2.97263 16.7401 2.96998Z" fill="#FF4D37"/>
            </svg>
        </a></td>
        <td>2024-01-12</td>

        <td>
            <a href="#" class="edit_btn"><img src="images/edit_icon.svg" alt="수정" /></a>
            <button class="rest-delete" onclick="deleteRest();">
                <img src="images/delete_icon.svg" alt="삭제" />
            </button>
        </td>
    </tr>
    </tbody>
</table>
</div>

<%@ include file="../inc/footer.jsp" %>