package com.controller.jin;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.dao.TestDao;
import com.dao.jin.JinPagingDao;
import com.dto.jin.UserDto;
import com.dto.moon.BoardDto;
import com.dto.moon.BoardReplyDto;
import com.dto.moon.BoardResultDto;
import com.dto.moon.ReviewDto;
import com.dto.ye.RestInfoDto;
import com.service.jin.JService;
import com.service.jin.PagingService;
import com.service.jin.PagingServiceImpl;
import com.service.moon.BoardService;
import com.service.ye.RestService;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class PageController {

	@Autowired
	TestDao testDao;

	@Autowired
	JService service;

	@Autowired
	PagingService Pservice;
	
	@Autowired
	BoardService Bservice;
	
	@Autowired
	RestService Rservice;
	
	
	/* -- GoToTestPage.jin >> "/testPages/test-jin.jsp" -- */

	/* -- GoToMain.jin >> "/index.ye" -- */

	/* -- GoToLoginPage.jin >> "/jinPages/login.jsp" -- */
	/* -- GoToJoin1Page.jin >> "/jinPages/join1.jsp" -- */
	/* -- GoToJoin2Page.jin >> "/jinPages/join2.jsp" -- */

	/* -- GoToFind_id1Page.jin >> "/GoToFind_id1Page.jin" -- */
	/* -- GoToFind_id2Page.jin >> "/GoToFind_id2Page.jin" -- */
	/* -- GoToFind_id3Page.jin >> "/GoToFind_id3Page.jin" -- */

	/* -- GoToFind_pass1Page.jin >> "/jinPages/find_pass1.jsp" -- */
	/* -- GoToFind_pass2Page.jin >> "find_pass_email_trans.jin" -- */
	/* -- GoToFind_pass3Page.jin >> "/jinPages/find_pass3.jsp" -- */

	/* -- GoToMic_tab1Page.jin >> "/jinPages/mic_tab1.jsp" -- */
	/* -- GoToMic_tab2Page.jin >> "/jinPages/mic_tab1.jsp" -- */
	/* -- GoToMic_tab3Page.jin >> "/jinPages/mic_tab1.jsp" -- */

	/* -- join_successs.jin >> "/jinPages/join3.jsp" -- */
	/* -- user_change_succsess.jin >> "/jinPages/mic_tab1_success.jsp" -- */
	/* -- user_change_fail.jin >> "/jinPages/mic_tab1_fail.jsp" -- */

	/* -- mp_tab1.jin >> "/jinPages/mp_tab1.jsp" -- */
	/* -- mp_tab2.jin >> "/jinPages/mp_tab2.jsp" -- */
	/* -- mp_tab3.jin >> "/jinPages/mp_tab3.jsp" -- */
	/* -- mp_tab4.jin >> "/jinPages/mp_tab4.jsp" -- */
	/* -- mp_tab5.jin >> "/jinPages/mp_tab5.jsp" -- */

	/* -- message.jin >> "/jinPages/message.jsp" -- */

	/* -- user_logout.jin >> "redirect:index.ye" -- */

	@RequestMapping(value = "/GoToTestPage.jin", method = { RequestMethod.GET })
	public String Test(Model model) {

		model.addAttribute("time", testDao.readTime());
		return "/testPages/test-jin.jsp";
	}

	@RequestMapping(value = "/GoToMain.jin", method = { RequestMethod.GET })
	public String gotoMain() {
		return "index.ye";
	}

	@RequestMapping(value = "/GoToLoginPage.jin", method = { RequestMethod.GET })
	public String goToLoginPage() {
		return "/jinPages/login.jsp";
	}

	@RequestMapping(value = "/GoToJoin1Page.jin", method = { RequestMethod.GET })
	public String GoToJoin1Page() {
		return "/jinPages/join1.jsp";
	}

	@RequestMapping(value = "/GoToJoin2Page.jin", method = { RequestMethod.GET })
	public String GoToJoin2Page() {
		return "/jinPages/join2.jsp";
	}

	@RequestMapping(value = "/GoToFind_id1Page.jin", method = { RequestMethod.GET })
	public String GoToFind_id1Page() {
		return "/jinPages/find_id1.jsp";
	}

	@RequestMapping(value = "/GoToFind_id2Page.jin", method = { RequestMethod.GET })
	public String GoToFind_id2Page() {
		return "/jinPages/find_id2.jsp";
	}

	@RequestMapping(value = "/GoToFind_id3Page.jin", method = { RequestMethod.GET })
	public String GoToFind_id3Page() {
		return "/jinPages/find_id3.jsp";
	}

	@RequestMapping(value = "/GoToFind_pass1Page.jin", method = { RequestMethod.GET })
	public String GoToFind_pass1Page() {
		return "/jinPages/find_pass1.jsp";
	}

	@RequestMapping(value = "/GoToFind_pass2Page.jin", method = { RequestMethod.GET })
	public String GoToFind_pass2Page() {
		return "find_pass_email_trans.jin";
	}

	@RequestMapping(value = "/GoToFind_pass3Page.jin", method = { RequestMethod.POST })
	public String GoToFind_pass3Page() {
		return "/jinPages/find_pass3.jsp";
	}

	@RequestMapping(value = "/GoToMic_tab1Page.jin", method = { RequestMethod.GET })
	public String GoToMic_tab1Page() {
		return "/jinPages/mic_tab1.jsp";
	}

	@RequestMapping(value = "/GoToMic_tab2Page.jin", method = { RequestMethod.GET })
	public String GoToMic_tab2Page() {
		return "/jinPages/mic_tab2.jsp";
	}

	@RequestMapping(value = "/GoToMic_tab3Page.jin", method = { RequestMethod.GET })
	public String GoToMic_tab3Page() {
		return "/jinPages/mic_tab3.jsp";
	}

	@RequestMapping(value = "/join_successs.jin", method = { RequestMethod.GET })
	public String join_successs() {
		return "/jinPages/join3.jsp";
	}

	@RequestMapping(value = "/user_change_succsess.jin", method = { RequestMethod.GET })
	public String user_change_succsess() {
		return "/jinPages/mic_tab1_success.jsp";
	}

	@RequestMapping(value = "/user_change_fail.jin", method = { RequestMethod.GET })
	public String user_change_fail() {
		return "/jinPages/mic_tab1_fail.jsp";
	}

	
	
	
	@RequestMapping(value = "/mp_tab1.jin", method = { RequestMethod.GET })
	public String mp_tab1(Model model, @RequestParam(value="pstartno", defaultValue="0")int pstartno, int user_no ) {
		
		Map<String, Integer> para = new HashMap<String, Integer>();
		para.put("pstartno", pstartno);
		para.put("onepagelimit", 10);
		para.put("user_no", user_no);
		
		List<BoardDto> list = Pservice.listCnt(para);
		List<Integer> likelist = new ArrayList<Integer>();
		for(int i=0;i< list.size();i++) {
			likelist.add( Pservice.listLike(list.get(i).getBoard_no()) );
		}
		
		
		model.addAttribute("list", list);
		model.addAttribute("likelist", likelist);
		model.addAttribute("paging", Pservice.paging(user_no, pstartno));
		
		return "/jinPages/mp_tab1.jsp";
	}

	
	
	
	@RequestMapping(value = "/mp_tab2.jin", method = { RequestMethod.GET })
	public String mp_tab2(Model model, @RequestParam(value="pstartno", defaultValue="0")int pstartno, int user_no ) {
		
		Map<String, Integer> para = new HashMap<String, Integer>();
		para.put("pstartno", pstartno);
		para.put("onepagelimit", 10);
		para.put("user_no", user_no);
		
		List<BoardReplyDto> list = Pservice.replylistCnt(para);
		List<String> titlelist = new ArrayList<String>();
		for(int i=0;i< list.size();i++) {
			BoardResultDto dto = new BoardResultDto();
			dto.setBoard_no(list.get(i).getBoard_no());
			titlelist.add( Bservice.readOneBoard(dto).getBoard_title());
		}
		
		
		model.addAttribute("list", list);
		model.addAttribute("titlelist", titlelist);
		model.addAttribute("paging", Pservice.replypaging(user_no, pstartno));
		
		
		
		return "/jinPages/mp_tab2.jsp";
	}

	@RequestMapping(value = "/mp_tab3.jin", method = { RequestMethod.GET })
	public String mp_tab3(Model model, @RequestParam(value="pstartno", defaultValue="0")int pstartno, int user_no ) {
		
		Map<String, Integer> para = new HashMap<String, Integer>();
		para.put("pstartno", pstartno);
		para.put("onepagelimit", 10);
		para.put("user_no", user_no);
		
		List<ReviewDto> list = Pservice.reviewlistCnt(para);
		List<String> titlelist = new ArrayList<String>();
		for(int i=0;i< list.size();i++) {
			
			titlelist.add( ((RestInfoDto)Rservice.readRest(list.get(i).getRest_no()).get(0)).getRest_name()  );
		}
		
		
		model.addAttribute("list", list);
		model.addAttribute("titlelist", titlelist);
		model.addAttribute("paging", Pservice.reviewpaging(user_no, pstartno));
		
		return "/jinPages/mp_tab3.jsp";
	}

	
	@RequestMapping(value = "/mp_tab4.jin", method = { RequestMethod.GET })
	public String mp_tab4(Model model, @RequestParam(value="pstartno", defaultValue="0")int pstartno, int user_no ) {
		
		Map<String, Integer> para = new HashMap<String, Integer>();
		para.put("pstartno", pstartno);
		para.put("onepagelimit", 10);
		para.put("user_no", user_no);
		
		List<RestInfoDto> list =Pservice.likeRestListCnt(para);
		List<String> ctglist = new ArrayList<String>();
				
		model.addAttribute("list", list);
		model.addAttribute("paging", Pservice.likeRestpaging(user_no, pstartno));
		
		return "/jinPages/mp_tab4.jsp";
	}

	
	
	@RequestMapping(value = "/mp_tab5.jin", method = { RequestMethod.GET })
	public String mp_tab5(Model model, @RequestParam(value="pstartno", defaultValue="0")int pstartno, int user_no ) {
		
		Map<String, Integer> para = new HashMap<String, Integer>();
		para.put("pstartno", pstartno);
		para.put("onepagelimit", 10);
		para.put("user_no", user_no);
		
		model.addAttribute("list", Pservice.likeBoardListCnt(para));
		model.addAttribute("paging", Pservice.likeBoardpaging(user_no, pstartno));
		
		
		return "/jinPages/mp_tab5.jsp";
	}

	
	
	@RequestMapping(value = "/admin1.jin", method = { RequestMethod.GET })
	public String admin1(Model model, @RequestParam(value="pstartno", defaultValue="0")int pstartno) {
		
		Map<String, Integer> para = new HashMap<String, Integer>();
		para.put("pstartno", pstartno);
		para.put("onepagelimit", 10);
		
		
		
		
		model.addAttribute("list", Pservice.userListCnt(para));
		model.addAttribute("paging", Pservice.userpaging(pstartno));
		model.addAttribute("total", Pservice.userTotal());
		
		return "/jinPages/admin1.jsp";
	}
	
	
	
	
	
	
	@RequestMapping(value = "/message.jin", method = { RequestMethod.POST })
	public String message() {
		return "/jinPages/message.jsp";
	}

	/* -- Just Page Moving Mappers -- */
	/* -- Just Page Moving Mappers -- */
	/* -- Just Page Moving Mappers -- */

	@RequestMapping(value = "/user_logout.jin", method = { RequestMethod.GET, RequestMethod.POST })
	public String user_logout(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {

		if( service.user_logout(request, response) > 0 ) {
			
			log.info("유저 로그 아웃 과정 처리 성공");
			
		}else {
			
			log.info("유저 로그 아웃 과정 처리 실패");
			
		}
		
		
		return "redirect:index.ye";
	}
	/* -- Just Page Moving Mappers -- */
	/* -- Just Page Moving Mappers -- */
	/* -- Just Page Moving Mappers -- */

}
