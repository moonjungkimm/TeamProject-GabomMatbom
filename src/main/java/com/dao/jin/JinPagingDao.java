package com.dao.jin;

import java.util.List;
import java.util.Map;

import com.dao.MyDao;
import com.dto.jin.UserDto;
import com.dto.moon.BoardDto;
import com.dto.moon.BoardReplyDto;
import com.dto.moon.ReviewDto;
import com.dto.ye.RestInfoDto;

@MyDao
public interface JinPagingDao {

	public List<BoardDto> listCnt(Map<String, Integer> para);
	public int listtotal(int user_no);
	public int listLike(int board_no);
	
	public List<BoardReplyDto> replylistCnt(Map<String, Integer> para);
	public int replylisttotal(int user_no);
	
	public List<ReviewDto> reviewlistCnt(Map<String, Integer> para);
	public int reviewlisttotal(int user_no);
	
	public List<RestInfoDto> likeRestListCnt(Map<String, Integer> para);
	public int likeRestListtotal(int user_no);
	
	public List<BoardDto> likeBoardListCnt(Map<String, Integer> para);
	public int likeBoardListTotal(int user_no);
	
	public List<UserDto> userListCnt(Map<String, Integer> para);
	public int userListTotal();
	
	
	
}
