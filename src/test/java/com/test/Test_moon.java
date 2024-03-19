package com.test;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.HashMap;
import java.util.Map;

import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.dao.moon.BoardDao;
import com.dto.moon.BoardDto;
import com.dto.moon.BoardLikeDto;
import com.dto.moon.BoardReplyDto;
import com.dto.moon.BoardResultDto;
import com.dto.moon.RecipeVoDto;
import com.service.moon.BoardService;
import com.service.moon.RecipeService;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class Test_moon {
	@Autowired
	ApplicationContext context;
	
	@Autowired
	BoardDao bdao;
	
	@Autowired
	RecipeService service;
	
	@Test	@Ignore
	public void test0() {
		System.out.println(context);
	}
	
	@Test	@Ignore
	public void test1() throws UnknownHostException {
		BoardDto dto = new BoardDto();
		BoardResultDto rdto = new BoardResultDto();
		/*
		dto.setCtg_no(1);
		dto.setUser_no(1);
		dto.setBoard_title("test");
		dto.setBoard_content("test_content");
		dto.setBoard_ip(InetAddress.getLocalHost().getHostAddress());
		log.info(bdao.insertBoard(dto));
		*/
		
		/*  게시글 카테고리별 리스트 전체 읽기
		log.info("..........." + bdao.readAllBoard(1));
		log.info("..........." + bdao.readAllBoard(2));
		*/
		
		/*	제목 검색 결과 게시글 리스트 전체
		Map<String , Object> result = new HashMap<>();
		result.put("ctg_no", 1);
		result.put("pattern", "1");
		log.info("........." + bdao.readTitleBoard(result));
		*/
		
		/*
		Map<String, Object> result = new HashMap<>();
		result.put("ctg_no", 1);
		result.put("pattern", "문정");
		log.info("................" + bdao.readNickBoard(result));
		*/
		
		/*
		Map<String, Object> result = new HashMap<>();
		result.put("ctg_no", 1);
		result.put("pattern", "con");
		log.info("................" + bdao.readContentBoard(result));
		*/
		
		/*
		dto.setBoard_no(39);
		log.info(".............." + bdao.readOneBoard(dto));
		*/
		/*
		dto.setBoard_no(39);
		log.info("................." + bdao.updateBoardHit(dto));
		*/
		/*
		dto.setBoard_no(39);
		log.info("................." + bdao.updateBoardLikeCancle(dto));
		 */
		/*
		dto.setBoard_title("update");
		dto.setBoard_content("update");
		dto.setBoard_no(39);
		log.info("............" + bdao.updateBoard(dto));
		*/
		/*
		dto.setBoard_no(39);
		log.info("............." + bdao.deleteBoard(dto));
		*/
//		log.info(">..........." + bdao.readAllBoard(1));
		rdto.setBoard_no(38);
//		log.info(">>>>>>>>>>>>>>>>>" + bdao.readOneBoard(rdto));
		
	}
	
	@Test	@Ignore
	public void test2() {
//		log.info(bservice.readAllBoard(1));
	}
	
	@Test	@Ignore
	public void test3() {

		Map<String , Object> result = new HashMap<>();
		BoardDto dto = new BoardDto();
		BoardResultDto rdto = new BoardResultDto(); 
		BoardReplyDto replydto = new BoardReplyDto();
		BoardLikeDto likedto = new BoardLikeDto();
		/*
		result.put("ctg_no", 1);
		result.put("key", "content");
		result.put("value", "test");
		result.put("pstartno", 0);
		result.put("onepagelimit", 10);
		
		log.info("............." +bdao.listCnt(result));
		
		
		dto.setCtg_no(1);
		dto.setUser_no(1);
		dto.setBoard_title("tt");
		dto.setBoard_content("ttt");
		try {
			dto.setBoard_ip(InetAddress.getLocalHost().getHostAddress());
		} catch (UnknownHostException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		log.info("........" +bdao.insertBoard(dto));
		
		
		dto.setBoard_no(83);
		log.info("..............." + bdao.readOneBoard(dto));
		*/
//		result.put("board_no", 97);
//		log.info("................" + bdao.readAllReply(result));
//		log.info(">>>>>>>>>>>>>>>>" + bservice.readAllReply(result));
		
//		replydto.setReply_no(63);
//		log.info("............." + bservice.deleteBoareReply(replydto));
		
//		likedto.setUser_no(2);
//		likedto.setBoard_no(95);
//		log.info("............" + bservice.boardLikeCheck(likedto));
		
//		likedto.setUser_no(2);
//		likedto.setBoard_no(95);
//		log.info("..........." + bservice.boardUnLike(likedto));
		
		//log.info("..........." + bservice.noticeList(4));
		
	}
	
	@Test
	public void test4() {
		RecipeVoDto dto = new RecipeVoDto();
		dto.setRecipe_id(1);
		log.info("................"  + service.recipeDetail(dto));
		dto = service.recipeDetail(dto);
		log.info("!!!!!!!!!!!!!!!!!!!" + dto);
		log.info("!!!!!!!!!!!!!!!!!!!" + dto.getTitle());
	}
}
