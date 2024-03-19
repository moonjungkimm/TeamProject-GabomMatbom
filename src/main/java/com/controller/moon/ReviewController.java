package com.controller.moon;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

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

@Controller
public class ReviewController {
	
	@Autowired
	ReviewService service;

		/*s
	@RequestMapping(value="/rest_review_write.moon", method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> insertReview(@RequestParam(value="rest_no") int rest_no, ReviewDto reviewDto ) {
		System.out.println(">....................." + rest_no);
		Map<String, Object> result = new HashMap<>();
		reviewDto.setRest_no(rest_no);
		int insertResult = service.insertReview(reviewDto);
		result.put("result", insertResult);
		System.out.println(result);
		return result;
	}

	@RequestMapping(value="/board_reply.moon", method=RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> board_reply(@RequestParam(value="board_no") int board_no, BoardReplyDto boardReplyDto, Model model ) {
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
	
	*/
	
	
}
