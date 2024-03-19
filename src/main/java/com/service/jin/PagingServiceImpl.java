package com.service.jin;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.jin.JinPagingDao;
import com.dto.jin.JinPagingDto;
import com.dto.jin.UserDto;
import com.dto.moon.BoardDto;
import com.dto.moon.BoardReplyDto;
import com.dto.moon.ReviewDto;
import com.dto.ye.RestInfoDto;

@Service
public class PagingServiceImpl implements PagingService{

	@Autowired
	JinPagingDao dao;
	
	/*		1										*/
	/*		1										*/
	/*		1										*/
	/*		1										*/
	/*		1										*/
	/*		1										*/
	
	@Override
	public List<BoardDto> listCnt(Map<String, Integer> para) {
		// TODO Auto-generated method stub
		return dao.listCnt(para);
	}

	@Override
	public JinPagingDto paging(int user_no, int pstartno) {
		// TODO Auto-generated method stub
		return new JinPagingDto(dao.listtotal(user_no), pstartno);
	}

	@Override
	public int listLike(int board_no) {
		// TODO Auto-generated method stub
		return dao.listLike(board_no);
	}

	/*		2										*/	
	/*		2										*/
	/*		2										*/
	/*		2										*/	
	/*		2										*/
	/*		2										*/
	
	@Override
	public List<BoardReplyDto> replylistCnt(Map<String, Integer> para) {
		// TODO Auto-generated method stub
		return dao.replylistCnt(para);
	}

	@Override
	public JinPagingDto replypaging(int user_no, int pstartno) {
		// TODO Auto-generated method stub
		return new JinPagingDto(dao.replylisttotal(user_no), pstartno);
	}

	/*			3									*/	
	/*			3									*/
	/*			3									*/
	/*			3									*/	
	/*			3									*/
	/*			3									*/
	
	@Override
	public List<ReviewDto> reviewlistCnt(Map<String, Integer> para) {
		// TODO Auto-generated method stub
		return dao.reviewlistCnt(para);
	}

	@Override
	public JinPagingDto reviewpaging(int user_no, int pstartno) {
		// TODO Auto-generated method stub
		return new JinPagingDto(dao.reviewlisttotal(user_no), pstartno);
	}

	/*			4									*/	
	/*			4									*/
	/*			4									*/
	/*			4									*/	
	/*			4									*/
	/*			4									*/
	
	@Override
	public List<RestInfoDto> likeRestListCnt(Map<String, Integer> para) {
		// TODO Auto-generated method stub
		return dao.likeRestListCnt(para);
	}

	@Override
	public JinPagingDto likeRestpaging(int user_no, int pstartno) {
		// TODO Auto-generated method stub
		return new JinPagingDto(dao.likeRestListtotal(user_no), pstartno);
	}

	/*			5									*/	
	/*			5									*/
	/*			5									*/
	/*			5									*/	
	/*			5									*/
	/*			5									*/
	
	@Override
	public List<BoardDto> likeBoardListCnt(Map<String, Integer> para) {
		// TODO Auto-generated method stub
		return dao.likeBoardListCnt(para);
	}

	@Override
	public JinPagingDto likeBoardpaging(int user_no, int pstartno) {
		// TODO Auto-generated method stub
		return new JinPagingDto(dao.likeBoardListTotal(user_no), pstartno);
	}

	/*			6									*/	
	/*			6									*/
	/*			6									*/
	/*			6									*/	
	/*			6									*/
	/*			6									*/

	@Override
	public List<UserDto> userListCnt(Map<String, Integer> para) {
		// TODO Auto-generated method stub
		return dao.userListCnt(para);
	}

	@Override
	public JinPagingDto userpaging(int pstartno) {
		// TODO Auto-generated method stub
		return new JinPagingDto(dao.userListTotal(), pstartno);
	}

	@Override
	public int userTotal() {
		// TODO Auto-generated method stub
		return dao.userListTotal();
	}
		
	
	
	
	
	
	
	
	
	

}
