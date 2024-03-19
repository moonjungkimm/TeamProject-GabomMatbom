<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/header.jsp" %>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/likeres.css">


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

    <div class="navbar4-1">
        <form action="#">
            <label for=""></label>
            <select name="" id="" style="float-right;">
                <option>식당명 오름차순</option>
                <option>식당명 내림차순</option>
            </select>
        </form>
    </div> 
    
<div class="bar4">
    <fieldset>
      
        <div class="checkbox-container">
        <div class="menuindex">
          <input type="checkbox" id="all" name="all" checked />
          <label for="all">전체</label>
        </div>

          <div class="menuindex">
          <input type="checkbox" id="kfood" name="kfood" />
          <label for="kfood">한식</label>
        </div>

          <div class="menuindex">
          <input type="checkbox" id="jfood" name="jfood" />
          <label for="jfood">일식</label>
        </div>

          <div class="menuindex">
          <input type="checkbox" id="asianfood" name="asianfood" />
          <label for="asianfood">아시안</label>
        </div>

          <div class="menuindex">
          <input type="checkbox" id="boonsick" name="boonsick" />
          <label for="boonsick">분식</label>
        </div>

          <div class="menuindex">
          <input type="checkbox" id="gogi" name="gogi" />
          <label for="gogi">고기/구이</label>
        </div>

          <div class="menuindex">
          <input type="checkbox" id="pizza" name="pizza" />
          <label for="pizza">피자/치킨</label>
        </div>

          <div class="menuindex">
          <input type="checkbox" id="res" name="res" />
          <label for="res">레스토랑</label>
        </div>

          <div class="menuindex">
          <input type="checkbox" id="buffet" name="buffet" />
          <label for="buffet">뷔페</label>
        </div>

          <div class="menuindex">
          <input type="checkbox" id="dsert" name="dsert" />
          <label for="dsert">카페/디저트</label>
        </div>

          <div class="menuindex">
          <input type="checkbox" id="saloon" name="saloon" />
          <label for="saloon">주점</label>
        </div>

          <div class="menuindex">
          <input type="checkbox" id="guitar" name="guitar" />
          <label for="guitar">기타</label>
        </div>
    </div>
 
      </fieldset>
      

</div>


   


<div class="bar3">
    <div style=" font-weight: bold;margin-top: 10px;">식당수(10)</div>

  
</div>



<table class="admin-table">
    <!-- <caption>
        작성게시글
    </caption> -->

<thead>
    <tr>
        <th>no</th>
        <th>카테고리</th>
        <th>식당명</th>
        <th>주소</th>
        <th></th>
        <th>삭제하기</th>
    </tr>
</thead>
<tbody>
    <tr>
        <td>10</td>
        <td>양식,카페/디저트</td>
        <td>떡도리탕 강남점</td>
        <td>수원시 장안구 정자2동 </td>
        <td></td>

        <td>
        
            <button class="rest-delete" onclick="deleteRest();">
                <img src="images/delete_icon.svg" alt="삭제" />
            </button>
        </td>
    </tr>
 
    <tr>
        <td>9</td>
        <td>양식,카페/디저트</td>
        <td>떡도리탕 강남점</td>
        <td>수원시 장안구 정자2동 </td>
        <td></td>

        <td>
        
            <button class="rest-delete" onclick="deleteRest();">
                <img src="images/delete_icon.svg" alt="삭제" />
            </button>
        </td>
    </tr>
        
    <tr>
        <td>8</td>
        <td>양식,카페/디저트</td>
        <td>떡도리탕 강남점</td>
        <td>수원시 장안구 정자2동 </td>
        <td></td>

        <td>
        
            <button class="rest-delete" onclick="deleteRest();">
                <img src="images/delete_icon.svg" alt="삭제" />
            </button>
        </td>
    </tr>
       
    <tr>
        <td>7</td>
        <td>양식,카페/디저트</td>
        <td>떡도리탕 강남점</td>
        <td>수원시 장안구 정자2동 </td>
        <td></td>

        <td>
        
            <button class="rest-delete" onclick="deleteRest();">
                <img src="images/delete_icon.svg" alt="삭제" />
            </button>
        </td>
    </tr>
     
    <tr>
        <td>6</td>
        <td>양식,카페/디저트</td>
        <td>떡도리탕 강남점</td>
        <td>수원시 장안구 정자2동 </td>
        <td></td>

        <td>
        
            <button class="rest-delete" onclick="deleteRest();">
                <img src="images/delete_icon.svg" alt="삭제" />
            </button>
        </td>
    </tr>

    <tr>
        <td>5</td>
        <td>양식,카페/디저트</td>
        <td>떡도리탕 강남점</td>
        <td>수원시 장안구 정자2동 </td>
        <td></td>

        <td>
        
            <button class="rest-delete" onclick="deleteRest();">
                <img src="images/delete_icon.svg" alt="삭제" />
            </button>
        </td>
    </tr>

    <tr>
        <td>4</td>
        <td>양식,카페/디저트</td>
        <td>떡도리탕 강남점</td>
        <td>수원시 장안구 정자2동 </td>
        <td></td>

        <td>
        
            <button class="rest-delete" onclick="deleteRest();">
                <img src="images/delete_icon.svg" alt="삭제" />
            </button>
        </td>
    </tr>

    <tr>
        <td>3</td>
        <td>양식,카페/디저트</td>
        <td>떡도리탕 강남점</td>
        <td>수원시 장안구 정자2동 </td>
        <td></td>

        <td>
        
            <button class="rest-delete" onclick="deleteRest();">
                <img src="images/delete_icon.svg" alt="삭제" />
            </button>
        </td>
    </tr>

    <tr>
        <td>2</td>
        <td>양식,카페/디저트</td>
        <td>떡도리탕 강남점</td>
        <td>수원시 장안구 정자2동 </td>
        <td></td>

        <td>
        
            <button class="rest-delete" onclick="deleteRest();">
                <img src="images/delete_icon.svg" alt="삭제" />
            </button>
        </td>
    </tr>

    <tr>
        <td>1</td>
        <td>양식,카페/디저트</td>
        <td>떡도리탕 강남점</td>
        <td>수원시 장안구 정자2동 </td>
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