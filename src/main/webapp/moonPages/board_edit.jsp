<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="../inc/header.jsp" %>
  <div class="container">
        <div class="total_wrapper">
           <h1 class="hidden_mj">게시글 작성</h1>
           <p class="board_title">글 수정</p>
           <div class="board_write_wrapper"> <!-- 전체 내용 감싸는 div -->
           	 <form method="post" action="board_edit.moon?board_no=${editBoard.board_no }">
           		<div class="board_write_ctg_wrapper"><!-- 게시판 글쓰기 select 박스 -->
           			<select name="ctg_no" class="board_write_ctg">
           				<option value="1" ${editBoard.ctg_no eq 1 ? 'selected' : ''}>자유게시판</option>
           				<option value="2" ${editBoard.ctg_no eq 2 ? 'selected' : ''}>맛집게시판</option>
           				
           				<c:choose>
					        <c:when test="${sessionScope.login_user_dto.user_no == 1}">
					            <option value="3" ${editBoard.ctg_no eq 3 ? 'selected' : ''}>자유게시판 - 공지</option>
					            <option value="4" ${editBoard.ctg_no eq 4 ? 'selected' : ''}>맛집게시판 - 공지</option>	
					        </c:when>
					    </c:choose>
           			</select>
           		</div>
           		<div class="board_title_input_wrapper"><!-- 게시글 제목 작성 -->
           			 <input type="text" name="board_title" id="board_title" value="${editBoard.board_title }" />
           		</div>
           		
           		<div class="board_write_writer"><!-- 작성자 보여주는 div -->
           			<p>작성자 : ${editBoard.board_nick }</p>	
           		</div>
           		<div><!-- 에디터 -->
					  <textarea id="summernote" name="board_content">${editBoard.board_content }</textarea>
           		</div>
           		
           		<div class="board_write_btn_wrapper">
           			<div class="board_write_reset_btn_wrapper">
						<input type="reset"    value="취소" class="btn_moon board_write_reset_btn" > 
					</div>
					<div class="board_write_list_submit_btn_wrapper">
						<a href="board_list.moon?pstartno=0&ctg_no=1&key=0&value=0"   class="btn_moon board_write_list_btn">목록</a>	
	         			<input type="submit"   value="등록"  class="btn_moon board_write_submit_btn" id="write_button">  
           			</div>
           		</div>
			</form>
           </div>
        </div>
        <script>
	    $(function(){
	    	$('#summernote').summernote({
	    		height:400,
	    		minHeight:null,
	    		maxHeight:null,
	    		focus:true,
	    		lang:"ko-KR",
	    		placeholder:'내용을 입력하세요'
	    	})

	    	
	    	
	    	var submitBtn = $('#write_button');
	    	var boardTitle = $('#board_title');
	    	var boardContent = $('#summernote');
	    	var ctg_no = $('.board_write_ctg').find().val();
	    	
	    	submitBtn.click(function(){
	    			
	    		if(boardTitle.val() == ""){
	    			alert("게시글 제목이 빈칸입니다. 확인해주세요 ! ");
	    			boardTitle.focus();
	    			return false;
	    		}
	    		if(boardContent.val() == ""){
	    			alert("게시글 내용이 빈칸입니다. 확인해주세요 ! ");
	    			boardContent.focus();	
	    			return false;
	    		}
	    		
	    	})
	    	
	    });
		</script>
    </div>
<%@ include file="../inc/footer.jsp" %>