package com.service.moon;

import java.util.List;
import java.util.Map;

import com.dto.moon.BoardDto;
import com.dto.moon.BoardLikeDto;
import com.dto.moon.BoardReplyDto;
import com.dto.moon.BoardResultDto;
import com.dto.moon.PagingDto;

public interface BoardService {
	
	public List<BoardDto> noticeList(int ctg_no);
	
	public List<BoardDto> boardList(Map<String, Object> para);
	
	public PagingDto paging(int pstartno, Map<String, Object> para);
	
	public int insertBoard(BoardDto boardDto); 
	
	//글 상세보기 (조회수 ↑)
	public BoardDto readOneBoard(BoardResultDto boardResultDto);

	//글 수정 페이지로 이동 (데이터 받아오기)
	public BoardDto editBoard(BoardResultDto boardResultDto);

		
	//글 수정 !! 하고 페이지 이동
	public int editBoard2(BoardResultDto boardResultDto);
	
	//글 삭제
	public int deleteBoard(BoardResultDto boardResultDto);
	
	//게시글 댓글 작성
	public int insertBoardReply(BoardReplyDto boardReplyDto);
	
	//게시글 댓글 갯수
	public int readReplyCnt(Map<String, Object> map);
	
	//게시글 댓글 리스트 ~ 
	public List<BoardReplyDto> readAllReply(Map<String, Object> map);
	
	//게시글 댓글 삭제
	public int deleteBoareReply(BoardReplyDto boardReplyDto);
	
	//게시글 좋아요 갯수
	public int boardLikeCnt(BoardLikeDto boardLikeDto);
	
	//게시글 좋아요 있는지 없는지 ~ 
	public int boardLikeCheck(BoardLikeDto boardLikeDto);
	
	//게시글 좋아요 취소
	public int boardUnLike(BoardLikeDto boardLikeDto);
	
	//게시글 좋아요
	public int boardLike(BoardLikeDto boardLikeDto);
	
	public List<String> readProfile(Map<String, Object> map);
	
	public String readBoardProfile(int board_no);
}
