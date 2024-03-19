<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../inc/header.jsp" %>

    <div class="container">
        <div class="total_wrapper">
            <h1 class="hidden_mj">게시판 싱글 페이지</h1>
            <div class="board_wrapper"> <!-- 전체 내용 감싸는 div -->
            	<div class="board_single">	 <!-- 싱글 게시물 감싸는 div -->
            		<div class="board_single_title_wrapper">	<!-- 게시물 제목 부분 -->
            		
            			<div class="board_single_title"> <!-- 제목 -->
            			 	<p>${singleBoard.board_title }</p>
            			 	<p class="board_single_title_ctg">
						        <c:choose>
						            <c:when test="${singleBoard.ctg_no eq 1}">
						                자유게시판
						            </c:when>
						            <c:when test="${singleBoard.ctg_no eq 2}">
						                맛집게시판
						            </c:when>
						            <c:when test="${singleBoard.ctg_no eq 3}">
						                자유게시판-공지
						            </c:when>
						            <c:otherwise>
						                맛집게시판-공지
						            </c:otherwise>
						        </c:choose>
						    </p>
            			</div>
            		</div>
            		
            		<div class="board_title_wrapper-ye">
	            		<!-- 게시물 작성자 이름 / 작성 날짜  -->
	            		<div class="board_single_writer_wrapper">	
	            			<div class="board_single_writer_user">
		            			<span class="board_single_writer_profile_image"><img src="${pageContext.request.contextPath }/images/profile.svg" alt="작성자 사진"></span>
		           				<span class="board_single_writer_profile_nick">${singleBoard.board_nick }</span>
	           				</div>
	           				<div class="board_single_writer_time">
	           					<span class="board_single_writer_date">${singleBoard.board_time }</span>
	            			</div>
	            		</div>
	            		<div class="board_single_title_data"> <!-- 조회수, 추천수, 댓글수  -->
	           				<span>조회수 : ${singleBoard.board_hit }</span>
	           				<span></span>
	           				<span></span>
	           			</div>
            		</div>
            		<div class="board_content" id="board_content"> <!-- 게시물 내용 -->
            		</div>
            		<div class="board_single_btn_wrapper">	<!-- 버튼 ~  -->
            			<div class="board_single_btn_left">	<!-- 공유하기 좋아요  -->       
            				<input type="button"   value="공유하기"  class="btn_moon board_single_link_copy_btn" id="board_link_copy_btn">        	
            				
            				
            				<div class="btn_moon board_single_like_btn">
								<span>좋아요</span>									            					
            					<span class="board_like_img"><img src="${pageContext.request.contextPath }/images/heart_icon.svg" alt="하트사진"/></span>
            				</div>			
            			
            			
            			</div>
            			<div class="board_single_btn_right">
            				<c:choose>
							    <c:when test="${not empty sessionScope.login_user_dto and sessionScope.login_user_dto.user_no == singleBoard.user_no}">
							        <a href="board_edit.moon?board_no=${singleBoard.board_no}" class="btn_moon board_single_edit_btn">수정</a>
							        <input type="button" value="삭제" class="btn_moon board_single_delete_btn" id="delete_button">
							    </c:when>
							    <c:otherwise>
							        <!-- 다른 경우에 대한 처리 -->
							    </c:otherwise>
							</c:choose>
            				
            				
            				<a href="board_list.moon?pstartno=0&ctg_no=1&key=0&value=0"   class="btn_moon board_write_list_btn">최신목록</a>
            				
            				<c:choose>
							    <c:when test="${empty sessionScope.login_user_dto}">
							        <span class="btn_moon board_write_list_btn disabled" id="board_write_nologin">글쓰기</span>
							    </c:when>
							    <c:otherwise>
							        <a href="board_write.moon" class="btn_moon board_write_list_btn">글쓰기</a>
							    </c:otherwise>
							</c:choose>
            				
            			</div>
            		</div>	<!-- 버튼 div  -->
            	</div>
            	
            	<!-- 여기서부터 댓글 부분 -->
            	<!-- 여기서부터 댓글 부분 -->
            	<!-- 여기서부터 댓글 부분 -->
            	
            	<div class="board_single_review">	 <!-- 댓글 감싸는 div -->
            		<div class="board_single_review_cnt">	<!-- 댓글수  -->
            		</div>
            		<div class="board_single_review_write_wrapper">	<!-- 댓글 insert 부분 form -->
						<div class="board_single_review_write">
							 <textarea id="reply_content" name="reply_content" class="board_review_write"></textarea>
						</div>
						
						<c:choose>
						    <c:when test="${empty sessionScope.login_user_dto}">
						        <div class="board_single_review_submit_btn_wrapper">
									<input type="button"   value="등록"  class="btn_moon board_single_review_submit_btn" id="board_review_write_btn_nologin" >
								</div>
						    </c:when>
						    <c:otherwise>
						        <div class="board_single_review_submit_btn_wrapper">
									<input type="button"   value="등록"  class="btn_moon board_single_review_submit_btn" id="board_review_write_btn" >
								</div>
						    </c:otherwise>
						</c:choose>
            		</div>
            		
            		<div class="board_single_review_list" id="board_reply_list_div" > 
            			
            			<!-- 댓글 리스트 -->
            			<!-- 댓글 리스트 -->
            			<!-- 댓글 리스트 -->
            			
            		</div>
            		
            		<!-- <div class="board_single_review_showmore_btn">	댓글 더보기 버튼
            			<input type="button"   value="더보기"  class="btn_moon board_write_submit_btn" id="write_button">  
            		</div> -->
            	</div>
            	<div id="sessionUserNo" data-user-no="${sessionScope.login_user_dto.user_no }"></div>
            </div>
            
        </div> <!-- total_wrapper -->
        <script>
	    $(function () {
	        var deleteBtn = $('#delete_button');
	        var replyContent = $('#reply_content');
	        var writeReplyBtn = $('#board_review_write_btn');
	        var likeBtn = $('.board_single_like_btn');
	        var urlBtn = $('#board_link_copy_btn');
	        var replyDeleteBtn = $('.board_single_review_delete_btn_input');
	        var writeBtnNologin = $("#board_write_nologin");
	        var replyWriteBtnNologin = $("#board_review_write_btn_nologin");
	        var sessionUserNo = $("#sessionUserNo").data('user-no');
	        
	        var likeornot = '';
	        var unlikeCnt = '';
	        var likeCnt = '';
	        
	        
	        //게시글 content 불러와서 태그 없이 보여지게 
	        $("#board_content").html('${singleBoard.board_content}');

			//세션없으면 (로그인X) 좋아요 버튼 클릭 x        
	        if(sessionUserNo == ""){
	        	likeBtn.click(function(){
	        		var result = confirm("로그인 후 이용가능한 서비스입니다. \n로그인 창으로 이동하시겠습니까? ");
	                if (result) {
	                    location.href="${pageContext.request.contextPath }/GoToLoginPage.jin";
	                }
	        	});
	        }else{
		        //로그인 후, 사용자 번호, 게시글 번호 받아와서 좋아요 누른 상태인지, 아닌지 보여줌
	        	boardLike();
		        boardLikeCnt();
		        
		        //로그인 후 좋아요 버튼 클릭
		        likeBtn.click(function(){
		        	//좋아요를 누른적이 있으면 ?
		        	if(likeornot >= 1){
			        	unlike();
			        	likeornot = 0;
		        	}else{
		        		like();
		        		likeornot = 1;
		        	}
		        })
	        }
	        
	        
	     
	        //댓글 전체 리스트 
	        replyReadAll();
	
	        //게시글 삭제 버튼 클릭 
	        deleteBtn.click(function () {
	            showConfirm();
	        });
	        
	        //공유하기 버튼 클릭 (URL복사)
	        urlBtn.click(function(){
	        	urlcopy();
	        })
	        
	        writeBtnNologin.click(function(){
	        	var result = confirm("로그인 후 이용가능한 서비스입니다. \n로그인 창으로 이동하시겠습니까? ");
	            if (result) {
	                location.href="${pageContext.request.contextPath }/GoToLoginPage.jin";
	            }
	        })
	        replyWriteBtnNologin.click(function(){
	        	var result = confirm("로그인 후 이용가능한 서비스입니다. \n로그인 창으로 이동하시겠습니까? ");
	            if (result) {
	                location.href="${pageContext.request.contextPath }/GoToLoginPage.jin";
	            }
	        })
	        
	        //게시물 삭제 confirm 창 삭제 -> 게시판 첫 화면으로 이동
	        function showConfirm() {
	            var result = confirm("게시물을 삭제하시겠습니까?");
	            if (result) {
	                alert("삭제했습니다!");
	                location.href = "board_delete.moon?board_no=" + ${singleBoard.board_no};
	            }
	        }
	
	        // 댓글 삭제 버튼 클릭 이벤트
	        $(document).on('click', '.board_single_review_delete_btn_input', function () {
	            var replyNo = $(this).closest('.board_single_review_single').data('no');
	            
	            var result = confirm("댓글을 삭제하시겠습니까?");
	            if (result) {
	                alert("삭제했습니다!");
		            deleteReply(replyNo);
	            }
	        });
	        
	        /* 
	        replyDeleteBtn.click(function(){
	        	var replyNo = $(this).closest('.board_single_review_single').data('no');
	        	deleteReply(replyNo);
	        }) 
	        
	        $('.board_single_review_delete_btn_input').click(function () {
			    var replyNo = $(this).closest('.board_single_review_single').data('no');
			    deleteReply(replyNo);
			});*/
	        
	        //댓글 작성 등록 버튼 클릭시 댓글 insert -> 댓글 리스트 재로드
	        writeReplyBtn.click(function () {
        		if(replyContent.val() == ""){
        			alert("댓글이 빈칸입니다. 확인해주세요 ! ");
        			replyContent.focus();
	    			return false;
        		}else{
		            $.ajax({
		                url: "board_reply_write.moon?board_no=" + ${singleBoard.board_no},
		                type: "POST",
		                dataType: "json",
		                data: {
		                    "user_no": sessionUserNo,
		                    "reply_content": $("#reply_content").val()
		                },
		                error: function (xhr, status, msg) {
		                    alert(status + "/" + msg);
		                },
		                success: function (json) {
		                    $("#reply_content").val('');
		                    replyReadAll();
		                }
		            });
        		}
	        });
	       
			//댓글 리스트 뽑아서
	        function replyReadAll() {
	            $.ajax({
	                url: "board_reply.moon?board_no=" + ${singleBoard.board_no},
	                type: "GET",
	                dataType: "json",
	                error: function (xhr, status, msg) {
	                    alert(status + "/" + msg);
	                },
	                success: function (json) {
	                	console.log(json);
	                	$(".board_single_title_data span:last-child").html("댓글수 : " + json.replyCnt);
	                	$(".board_single_review_cnt").html("댓글수 : " + json.replyCnt);
	                    replyListResult(json);
	                }
	            });
	        }
			//뽑아온 댓글 리스트 보여주기 ~ 
	        function replyListResult(json) {
	            $("#board_reply_list_div").empty();
	            let total = json.list.length;
				//반복문
	            $.each(json.list, function (idx, list) {
	                var deleteBtn = $(" <img src='${pageContext.request.contextPath}/images/delete_icon.svg' alt='delete버튼' class='board_single_review_delete_btn_input'/>");
	                var reply_profile_img = $("<img>").attr("src", "${pageContext.request.contextPath}/images/profile.svg").attr("alt", "작성자 사진");
	                var replyItem = $("<div>").addClass("board_single_review_single").attr("data-no", list.reply_no)
	                    .append(
						    $("<div>").addClass("board_single_review_profile_img")
						        .append(
						            $("<div>").addClass("board_single_review_nick_time")
						                .append(reply_profile_img)
						                .append($("<p>").html(list.reply_nick))
						                .append($("<p>").html(list.reply_time))
						        )
						        .append(
						            $("<div>").addClass("board_single_review_content")
						                .append($("<p>").html(list.reply_content))
						        )
						);
	                   
					
	                //로그인 한 유저 본인의 댓글일 경우 삭제 버튼 보여짐
	                if (sessionUserNo == list.user_no) {
	                    replyItem.append(
	                        $("<div>").addClass("board_single_review_delete_btn")
	                            .append(deleteBtn)
	                    );
	                }
	                replyItem.appendTo("#board_reply_list_div");
	                
	            //리플 작성 유저 프로필 삽입
	            //console.log(list.user_no);
	            //reply_profile_img
	            $.ajax({
				url : "user_profile_img_check.jin",
				type : "POST",
				dataType : "text",
				data : {
					"user_no" : list.user_no
				},
				error : function(xhr, status, msg) {
					alert("오류가 발생했습니다. 관리자에게 문의해주세요.\n"+"status : "+status + "/n" +"msg : "+ msg);
				},
				success : function(data){
					
					console.log(typeof(data));
					
					if(data!="false"){//
						
						console.log("유저 프로필 이미지 정보 수신 성공 : "+data);
					
						if(start_http(data)){
							
							$(reply_profile_img).attr("src", "${pageContext.request.contextPath}/resources/upload/"+data);
							
						}else{
							
						var imgPath = "${pageContext.request.contextPath}/resources/upload/" + data;

						// 이미지가 존재하는지 확인
						var img = new Image();
												
						img.onload = function() {
							$(reply_profile_img).attr("src",imgPath);
						};
						
						img.onerror = function() {
							$(reply_profile_img).attr("src","${pageContext.request.contextPath}/resources/upload/default.svg");
						};
						
						img.src = imgPath; // 이미지 로드 시도
						}//else end
					  }//if end
					}//success end
				  });//ajax end
				//리플 작성 유저 프로필 삽입 end 
	                
	            });	//each end
	        }
			
			
	        //댓글 삭제 버튼 클릭시 
	        function deleteReply(replyNo) {
	            $.ajax({
	                url: "board_reply_delete.moon?board_no=" + ${singleBoard.board_no},
	                type: "POST",
	                dataType: "json",
	                data: {
	                    "reply_no": replyNo
	                },
	                error: function (xhr, status, msg) {
	                    alert(status + "/" + msg);
	                },
	                success: function (json) {
	                    replyReadAll();
	                }
	            });
	        }
	        
	      
	        //좋아요 갯수 체크해서 보여주기
	        function boardLikeCnt(){
	        	$.ajax({
	                url: "board_like_cnt.moon?board_no=" + ${singleBoard.board_no},
	                type: "POST",
	                dataType: "json",
	                error: function (xhr, status, msg) {
	                    alert(status + "/" + msg);
	                },
	                success: function (json) {
	                	$(".board_single_title_data span:nth-child(2)").html("좋아요 : " + json.likeCnt);
	                }
	            }); 
	        }
	        
	        
	       //좋아요 누른적이 있는지 없는지 확인
	        function boardLike(){
	        	$.ajax({
	                url: "board_like_check.moon?board_no=" + ${singleBoard.board_no},
	                type: "POST",
	                dataType: "json",
	                data: {
	                    "user_no": sessionUserNo	//세션에있는user_no
	                },
	                error: function (xhr, status, msg) {
	                    alert(status + "/" + msg);
	                },
	                success: function (json) {
	                	likeornot = json.like;
	                	//좋아요 눌렀을 경우 : 1 ↑  좋아요 안눌렀을 경우 : 0
	                	var imgSrc = (json.like == 0) ? "heart_unlike_icon.svg" : "heart_icon.svg";		//사진 경로 바꿔줌
	                	$(".board_single_like_btn .board_like_img img").attr("src", "${pageContext.request.contextPath}/images/" + imgSrc);
	                }
	            }); 
	        }
	        
	        //좋아요 취소
	        function unlike(){
	        	$.ajax({
	                url: "board_unlike.moon?board_no=" + ${singleBoard.board_no},
	                type: "POST",
	                dataType: "json",
	                data: {
	                    "user_no": sessionUserNo	//세션에있는user_no
	                },
	                error: function (xhr, status, msg) {
	                    alert(status + "/" + msg);
	                },
	                success: function (json) {
	                	unlikeCnt = json.like;
	                	$(".board_single_like_btn .board_like_img img").attr("src", "${pageContext.request.contextPath}/images/heart_unlike_icon.svg");
	                	boardLikeCnt();
	                }
	            }); 
	        }
	        
	        //게시글 좋아요
	        function like(){
	        	$.ajax({
	                url: "board_like.moon?board_no=" + ${singleBoard.board_no},
	                type: "POST",
	                dataType: "json",
	                data: {
	                    "user_no": sessionUserNo	//세션에있는user_no
	                },
	                error: function (xhr, status, msg) {
	                    alert(status + "/" + msg);
	                },
	                success: function (json) {
	                	likeCnt = json.like;
	                	$(".board_single_like_btn .board_like_img img").attr("src", "${pageContext.request.contextPath}/images/heart_icon.svg");
	                	boardLikeCnt();
	                }
	            }); 
	        }
	   		
	        //주소 공유하기
	        function urlcopy(){
	        	var url ="";
	        	var textarea = document.createElement("textarea");
	        	
	        	document.body.appendChild(textarea);
	        	url = window.document.location.href;
	        	textarea.value=url;
	        	textarea.select();
	        	document.execCommand("copy");
	        	document.body.removeChild(textarea);
	        	
	        	alert("URL이 복사되었습니다. 붙여넣기해서 사용해주세요.")
	        }
	        
	    	
	    });
		</script>
		
		<script>
		//프로필 이미지 가져와서 작성자 이미지 넣기
		 function start_http(str) {
	   			 return /^http/.test(str);
			}
		
		 $.ajax({
				url : "user_profile_img_check.jin",
				type : "POST",
				dataType : "text",
				data : {
					"user_no" : "0${singleBoard.user_no}"
				},
				error : function(xhr, status, msg) {
					alert("오류가 발생했습니다. 관리자에게 문의해주세요.\n"+"status : "+status + "/n" +"msg : "+ msg);
				},
				success : function(data){
					
					console.log(typeof(data));
					
					if(data!="false"){//
						
						console.log("유저 프로필 이미지 정보 수신 성공 : "+data);
					
						if(start_http(data)){
							
							$(".board_single_writer_profile_image img").attr("src", "${pageContext.request.contextPath}/resources/upload/"+data);
							
						}else{
							
						var imgPath = "${pageContext.request.contextPath}/resources/upload/" + data;

						// 이미지가 존재하는지 확인
						var img = new Image();
												
						img.onload = function() {
							$(".board_single_writer_profile_image img").attr("src",imgPath);
						};
						
						img.onerror = function() {
							$(".board_single_writer_profile_image img").attr("src","${pageContext.request.contextPath}/resources/upload/default.svg");
						};
						
						img.src = imgPath; // 이미지 로드 시도
						}//else end
					
					}//if end
					
				}//success end
				
			});//ajax end
		</script>
	    </div>
<%@ include file="../inc/footer.jsp" %>