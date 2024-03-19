package com.service.jin;

import java.util.List;
import java.util.Map;

import com.dto.jin.JinPagingDto;
import com.dto.jin.UserDto;
import com.dto.moon.BoardDto;
import com.dto.moon.BoardReplyDto;
import com.dto.moon.ReviewDto;
import com.dto.ye.RestInfoDto;

public interface PagingService {
	
	public List<BoardDto> listCnt(Map<String, Integer> para);
	public JinPagingDto paging(int user_no, int pstartno);
	public int listLike(int board_no);
	
	public List<BoardReplyDto> replylistCnt(Map<String, Integer> para);
	public JinPagingDto replypaging(int user_no, int pstartno);
	
	public List<ReviewDto> reviewlistCnt(Map<String, Integer> para);
	public JinPagingDto reviewpaging(int user_no, int pstartno);
	
	public List<RestInfoDto> likeRestListCnt(Map<String, Integer> para);
	public JinPagingDto likeRestpaging(int user_no, int pstartno);
	
	public List<BoardDto> likeBoardListCnt(Map<String, Integer> para);
	public JinPagingDto likeBoardpaging(int user_no, int pstartno);
	
	public List<UserDto> userListCnt(Map<String, Integer> para);
	public JinPagingDto userpaging(int pstartno);
	public int userTotal();
}
