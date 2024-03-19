package com.controller.moon;

import java.util.HashMap;
import java.util.Map;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dto.moon.BoardDto;
import com.dto.moon.BoardLikeDto;
import com.dto.moon.BoardReplyDto;
import com.dto.moon.BoardResultDto;
import com.dto.moon.ReviewDto;
import com.service.moon.BoardService;
import com.service.moon.ReviewService;

@Controller("moon-controller")
public class FrontController {
	
	@Autowired
	BoardService service;
	
	@Autowired
	ReviewService rservice;
	

	
	@RequestMapping(value="/board_notice.moon", method=RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> noticeList(int ctg_no) {
		Map<String, Object> result = new HashMap<>();
		result.put("list", service.noticeList(ctg_no));
		return result;
	}
	
	@RequestMapping(value="/board_list.moon", method=RequestMethod.GET)
	public String list(@RequestParam(value="ctg_no", defaultValue = "1") int ctg_no, 
					   @RequestParam(value="pstartno", defaultValue = "0") int pstartno, 
					   @RequestParam(value="key", defaultValue = "0") String key, 
					   @RequestParam(value="value", defaultValue = "0") String value, 
					   Model model) {
		Map<String, Object> para = new HashMap<>();
		para.put("ctg_no", ctg_no);
		para.put("pstartno", pstartno);
		para.put("key", key);
		para.put("value", value);
		para.put("onepagelimit", 10);
		model.addAttribute("value", value);
		model.addAttribute("list", service.boardList(para));
		model.addAttribute("paging", service.paging(pstartno, para));
		return "board";
	}
	
	
	
	
	@RequestMapping(value="/board_write.moon", method=RequestMethod.GET)
	public String board_write() {
		return "board_write";
	}

	
	@RequestMapping(value="/board_write_done.moon", method=RequestMethod.POST)
	public String board_insert(BoardDto boardDto, Model model) {
		model.addAttribute("board_insert", service.insertBoard(boardDto));
		return 	"redirect:/board_list.moon?ctg_no=1";
	}
	
	@RequestMapping(value="/board_single.moon", method=RequestMethod.GET)
	public String board_single(@RequestParam(value="board_no") int board_no, BoardResultDto boardResultDto, Model model ) {
		boardResultDto.setBoard_no(board_no);
		model.addAttribute("singleBoard", service.readOneBoard(boardResultDto));
		return "board_single";
	}
	
	@RequestMapping(value="/board_edit.moon", method=RequestMethod.GET)
	public String board_edit(@RequestParam(value="board_no") int board_no, BoardResultDto boardResultDto, Model model ) {
		boardResultDto.setBoard_no(board_no);
		model.addAttribute("editBoard" , service.editBoard(boardResultDto));
		return "board_edit";
	}
	
	@RequestMapping(value="/board_edit.moon", method=RequestMethod.POST)
	public String board_edit_done(@RequestParam(value="board_no") int board_no, BoardResultDto boardResultDto, Model model ) {
		boardResultDto.setBoard_no(board_no);
		service.editBoard2(boardResultDto);
		return "redirect:/board_single.moon?board_no=" + board_no;
	}
	
	@RequestMapping(value="/board_delete.moon", method=RequestMethod.GET)
	public String board_delete(@RequestParam(value="board_no") int board_no, BoardResultDto boardResultDto, Model model ) {
		boardResultDto.setBoard_no(board_no);
		service.deleteBoard(boardResultDto);
		return "redirect:/board_list.moon?ctg_no=1";
	}
	
	@RequestMapping(value="/board_reply_write.moon", method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> board_reply_write(@RequestParam(value="board_no") int board_no, BoardReplyDto boardReplyDto ) {
		Map<String, Object> result = new HashMap<>();
		boardReplyDto.setBoard_no(board_no);
		int insertResult = service.insertBoardReply(boardReplyDto);
		result.put("result", insertResult);
		System.out.println(result);
		return result;
	}
	
	@RequestMapping(value="/board_reply.moon", method=RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> board_reply(@RequestParam(value="board_no") int board_no, BoardReplyDto boardReplyDto) {
		Map<String, Object> para = new HashMap<>();
		Map<String, Object> result = new HashMap<>();
		para.put("board_no", board_no);
		result.put("list", service.readAllReply(para));
		result.put("replyCnt", service.readReplyCnt(para));
		return result;
	}
	
	@RequestMapping(value="/board_reply_delete.moon", method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> board_reply_delete(@RequestParam(value="board_no") int board_no, int reply_no, BoardReplyDto boardReplyDto, Model model ) {
		boardReplyDto.setBoard_no(reply_no);
		Map<String, Object> result = new HashMap<>();
		result.put("delete", service.deleteBoareReply(boardReplyDto));
		return result;
	}
	
	@RequestMapping(value="/board_like_cnt.moon", method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> board_like_cnt(@RequestParam(value="board_no") int board_no, BoardLikeDto boardLikeDto, Model model ) {
		boardLikeDto.setBoard_no(board_no);
		Map<String, Object> result = new HashMap<>();
		result.put("likeCnt", service.boardLikeCnt(boardLikeDto));
		return result;
	}
	
	@RequestMapping(value="/board_like_check.moon", method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> board_like_check(@RequestParam(value="board_no") int board_no, int user_no, BoardLikeDto boardLikeDto, Model model ) {
		boardLikeDto.setUser_no(user_no);
		Map<String, Object> result = new HashMap<>();
		result.put("like", service.boardLikeCheck(boardLikeDto));
		return result;
	}
	
	@RequestMapping(value="/board_unlike.moon", method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> board_unlike(@RequestParam(value="board_no") int board_no, int user_no, BoardLikeDto boardLikeDto, Model model ) {
		boardLikeDto.setBoard_no(board_no);
		boardLikeDto.setUser_no(user_no);
		Map<String, Object> result = new HashMap<>();
		result.put("like", service.boardUnLike(boardLikeDto));
		return result;
	}
	
	@RequestMapping(value="/board_like.moon", method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> board_like(@RequestParam(value="board_no") int board_no, int user_no, BoardLikeDto boardLikeDto, Model model ) {
		boardLikeDto.setBoard_no(board_no);
		boardLikeDto.setUser_no(user_no);
		Map<String, Object> result = new HashMap<>();
		result.put("like", service.boardLike(boardLikeDto));
		return result;
	}
	
	
	
	
	
	// 식당 리뷰
	@RequestMapping(value="/rest_review_write.moon", method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> insertReview(@RequestParam(value="rest_no") int rest_no, ReviewDto reviewDto ) {
		Map<String, Object> result = new HashMap<>();
		reviewDto.setRest_no(rest_no);
		int insertResult = rservice.insertReview(reviewDto);
		result.put("result", insertResult);
		System.out.println(result);
		return result;
	}
	@RequestMapping(value="/rest_review.moon", method=RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> readReviewAll(@RequestParam(value="rest_no") int rest_no, ReviewDto reviewDto) {
		Map<String, Object> para = new HashMap<>();
		Map<String, Object> result = new HashMap<>();
		para.put("rest_no", rest_no);
		int cnt = rservice.readReviewCnt(para);
		result.put("reviewCnt", cnt);
		result.put("list", rservice.readAllReview(para));
		if(cnt > 0) {
			result.put("reviewAvg", rservice.restReviewAvg(para));
		}else {
			result.put("reviewAvg", "0.0");
		}
		
		return result;
	}
	@RequestMapping(value="/rest_review_delete.moon", method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> deleteReview(@RequestParam(value="rest_no") int rest_no, int review_no, ReviewDto reviewDto) {
		reviewDto.setReview_no(review_no);
		Map<String, Object> result = new HashMap<>();
		result.put("delete", rservice.deleteReview(reviewDto));
		return result;
	}
	
	@RequestMapping(value="/rest_review_star.moon", method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> reviewStar(@RequestParam(value="rest_no") int rest_no, ReviewDto reviewDto) {
		Map<String, Object> result = new HashMap<>();
		
		for (int i = 1; i <= 5; i++) {
			Map<String, Object> para = new HashMap<>();
			para.put("rest_no", rest_no);
			para.put("review_star", i);
			
			String key = "star" + i;
			result.put(key, rservice.restReviewCnt(para));
		}
		
		return result;
	}
	
}
