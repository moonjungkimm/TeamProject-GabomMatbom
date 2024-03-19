package com.service.moon;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.moon.BoardDao;
import com.dto.moon.BoardDto;
import com.dto.moon.BoardLikeDto;
import com.dto.moon.BoardReplyDto;
import com.dto.moon.BoardResultDto;
import com.dto.moon.PagingDto;

@Service
public class BoardServiceImpl implements BoardService{
	@Autowired
	BoardDao dao;


	@Override
	public List<BoardDto> noticeList(int ctg_no) {
		return dao.noticeList(ctg_no);
	}


	
	@Override
	public List<BoardDto> boardList(Map<String, Object> para) {
		return dao.boardList(para);
	}



	@Override
	public PagingDto paging(int pstartno, Map<String, Object> para) {
		return new PagingDto(dao.listCnt(para), pstartno);
	}



	@Override
	public int insertBoard(BoardDto boardDto) {
		try {
			boardDto.setBoard_ip(InetAddress.getLocalHost().getHostAddress());
		} catch (UnknownHostException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return dao.insertBoard(boardDto);
	}



	@Override
	public BoardDto readOneBoard(BoardResultDto boardResultDto) {
		dao.updateBoardHit(boardResultDto);
		return dao.readOneBoard(boardResultDto);
	}
	
	
	@Override
	public BoardDto editBoard(BoardResultDto boardResultDto) {
		return dao.readOneBoard(boardResultDto);
	}

		
	@Override
	public int editBoard2(BoardResultDto boardResultDto) {
		return dao.updateBoard(boardResultDto);
	}



	@Override
	public int deleteBoard(BoardResultDto boardResultDto) {
		return dao.deleteBoard(boardResultDto);
	}



	@Override
	public int insertBoardReply(BoardReplyDto boardReplyDto) {
		
		try {
			boardReplyDto.setReply_ip(InetAddress.getLocalHost().getHostAddress());
		} catch (UnknownHostException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return dao.insertBoardReply(boardReplyDto);
	}

	
	@Override
	public int readReplyCnt(Map<String, Object> map) {
		return dao.readReplyCnt(map);
	}

	@Override
	public List<BoardReplyDto> readAllReply(Map<String, Object> map) {
		return dao.readAllReply(map);
	}



	@Override
	public int deleteBoareReply(BoardReplyDto boardReplyDto) {
		return dao.deleteBoareReply(boardReplyDto);
	}



	@Override
	public int boardLikeCnt(BoardLikeDto boardLikeDto) {
		return dao.boardLikeCnt(boardLikeDto);
	}
	

	@Override
	public int boardLikeCheck(BoardLikeDto boardLikeDto) {
		return dao.boardLikeCheck(boardLikeDto);
	}



	@Override
	public int boardUnLike(BoardLikeDto boardLikeDto) {
		return dao.boardUnLike(boardLikeDto);
	}



	@Override
	public int boardLike(BoardLikeDto boardLikeDto) {
		return dao.boardLike(boardLikeDto);
	}



	@Override
	public List<String> readProfile(Map<String, Object> map) {
		return dao.readProfile(map);
	}



	@Override
	public String readBoardProfile(int board_no) {
		return dao.readBoardProfile(board_no);
	}




	

}
