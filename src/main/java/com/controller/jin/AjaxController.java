package com.controller.jin;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dao.jin.LocationDao;
import com.dto.jin.UserDto;
import com.dto.jin.User_fileDto;
import com.service.jin.JService;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class AjaxController {

	@Autowired
	JService service;

	@Autowired
	LocationDao locationdao;
	/*
	휴대폰 인증 		/ sendsmsverify.jin / receivesmsverify.jin
	이메일 인증 		/ receiveemailverify.jin
	id중복체크 		/ IDduplicateCheck.jin
	전체 관심장소 pull / locationListPull.jin
	회원가입 			/ join_user_form_transfer.jin
	유저 로그인 		/ user_login.jin
	유저 로그인-쿠키 	/ user_login_byCookie.jin
	유저 프로필 이미지	/ user_profile_img_check.jin
	유저 관심장소 		/ user_locationListPull.jin
	 * 
	 * 
	 * 
	 * 
	 * 
	 * 
	 */
	
	//사용자에게 입력받은 휴대폰번호(verify_nubmer) 로 인증문자 날리기
	@RequestMapping(value = "/sendsmsverify.jin", method = RequestMethod.POST)
	public void sendOne(String verify_nubmer, HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {

		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();
		Map<String, Object> item = new HashMap<String, Object>();
		
		// verify_nubmer : 인증할 휴대폰 번호
		session.setAttribute("verify_nubmer", verify_nubmer);

		if (service.VerifyMobileBySms(item, request, response) > 0) {
			log.info("............verificationCode 발급완료");
			out.print("2000");
		}
	}

	/*
	 * 
	 * 
	 * 
	 * 
	 * 
	 * 
	 */
	
	//사용자가 휴대폰 문자 수신 확인 후 인증문자4자리를 전송해서 대조/일치 확인하는 메서드
	@RequestMapping(value = "/receivesmsverify.jin", method = RequestMethod.POST)
	public void receivesmsverify(String input4number, HttpServletRequest request, HttpServletResponse response)
			throws IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();

		String verificationCode = (String) session.getAttribute("verificationCode");
		String verify_nubmer = (String) session.getAttribute("verify_nubmer");

		log.info("verify_nubmer : " + verify_nubmer);
		log.info("verificationCode : " + verificationCode);
		log.info("input4number : " + input4number);

		if (verificationCode != null) {

			if (verify_nubmer != null) {

				if (verificationCode.trim().equals(input4number.trim())) {

					session.removeAttribute("verificationCode");
					session.removeAttribute("verify_nubmer");

					log.info("...............All sms verification SuCCESS");

					out.print("2000");

				} else {
					log.info("...............sms verification FAIL : CAUSE input4number != verificationCode ");
					out.print("2001");
				}

			} else {
				log.info("...............sms verification FAIL : CAUSE verify_nubmer = null ");
				out.print("2001");
			}

		} else {
			log.info("...............sms verification FAIL : CAUSE verificationCode = null");
			out.print("2001");

		}

	}
	

	/*
	 * 
	 * 
	 * 
	 * 
	 * 
	 * 
	 */
	
	
	@RequestMapping(value = "/receiveemailverify.jin", method = RequestMethod.POST)
	public void receiveemailverify(String input4number, HttpServletRequest request, HttpServletResponse response)
			throws IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();

		String email4number = (String)session.getAttribute("email4number");
		
		log.info("email4number : " + email4number);
		log.info("input4number : " + input4number);
		log.info("일치 여부 : " + (input4number==email4number));

		if (  email4number != null) {

			if (input4number != null) {

				if (input4number.trim().equals(  email4number)) {

					session.removeAttribute("email4number");
					

					log.info("...............All Email verification SuCCESS");

					out.print("2000");

				} else {
					log.info("...............Email verification FAIL : CAUSE input4number != email4number ");
					out.print("2001");
				}

			} else {
				log.info("...............Email verification FAIL : CAUSE input4number = null ");
				out.print("2001");
			}

		} else {
			log.info("...............Email verification FAIL : CAUSE email4number = null");
			out.print("2001");

		}

	}
	

	/*
	 * 
	 * 
	 * 
	 * 
	 * 
	 * 
	 */
	
	@RequestMapping(value = "/IDduplicateCheck.jin", method = RequestMethod.POST)
	public void idduplicateCheck(String inputID, HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();

		Map<String, Object> item = new HashMap<String, Object>();

		item.put("inputID", inputID);

		out.print(service.user_duplicateIdCheck(item, request, response));

	}

	/*
	 * 
	 * 
	 * 
	 * 
	 * 
	 * 
	 */
	
	@RequestMapping(value = "/locationListPull.jin", method = RequestMethod.POST, produces = "application/json; charset=UTF-8")
	@ResponseBody
	public Map<String, Object> locationListPull(HttpServletRequest request, HttpServletResponse response)
			throws IOException {

		Map<String, Object> result = new HashMap<String, Object>();

		result.put("data", locationdao.readAllLocation());

		return result; // 경로로 넘길게 - view
	}

	/*
	 * 
	 * 
	 * 
	 * 
	 * 
	 * 
	 */
	
	@RequestMapping(value = "/join_user_form_transfer.jin", method = { RequestMethod.POST })
	@ResponseBody
	public String join_user_form_transfer(UserDto dto, @RequestParam("user_location") String location,
			HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

		Map<String, Object> item = new HashMap<String, Object>();

		item.put("userdto", dto);
		item.put("location", location);

		log.info(".........dto : " + dto);
		log.info(".........location : " + location);
		if (service.user_Insert(item, request, response) > 0) {

			return "2000";
		}
		

		return "2001";
	}

	/*
	 * 
	 * 
	 * 
	 * 
	 * 
	 * 
	 */
	
	@RequestMapping(value = "/user_login.jin", method = { RequestMethod.POST })
	@ResponseBody
	public String normal_login(UserDto dto, 
			@RequestParam("login_type") String login_type,
			@RequestParam("remember_id") String remember_id, 
			@RequestParam("remember_login") String remember_login,
			HttpServletRequest request, HttpServletResponse response) 
					throws IOException, ServletException {

		Map<String, Object> item = new HashMap<String, Object>();
		
		item.put("userdto", dto);
		item.put("remember_id", remember_id);
		item.put("remember_login", remember_login);
		item.put("login_type", login_type);

		log.info(".........dto : " + dto);
		log.info(".........remember_id : " + remember_id);
		if (service.user_login(item, request, response) > 0) {

			return "2000";
		}
		

		return "2001";
	}

	/*
	 * 
	 * 
	 * 
	 * 
	 * 
	 * 
	 */
	
	@RequestMapping(value = "/user_login_byCookie.jin", method = { RequestMethod.POST })
	@ResponseBody
	public String cookie_login( 
			@RequestParam("remember_login") String remember_login,
			
			HttpServletRequest request, HttpServletResponse response) 
					throws IOException, ServletException {

		Map<String, Object> item = new HashMap<String, Object>();

		item.put("remember_login", remember_login);
		
		log.info(".........remember_login : " + remember_login);
		if (service.cookie_login(item, request, response) > 0) {

			return "2000";
		}
		;

		return "2001";
	}

	/*
	 * 
	 * 
	 * 
	 * 
	 * 
	 * 
	 */
	
	@RequestMapping(value = "/user_profile_img_check.jin", method = { RequestMethod.POST })
	@ResponseBody
	public String user_profile_img_check( 
			User_fileDto user_filedto,
			HttpServletRequest request, HttpServletResponse response) 
					throws IOException, ServletException {

		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		Map<String, Object> item = new HashMap<String, Object>();

		System.out.println("....받은 유저 번호 : "+user_filedto);
		item.put("user_filedto", user_filedto);
		
		String file_name = service.read_user_profile_img(item, request, response);
		
		if(file_name != null) {
			return file_name;
		}
		
		return "false";
	}

	/*
	 * 
	 * 
	 * 
	 * 
	 * 
	 * 
	 */
	
	@RequestMapping(value = "/user_locationListPull.jin", method = { RequestMethod.POST }, produces = "application/text; charset=UTF-8")
	@ResponseBody
	public String user_locationListPull( 
			String user_no,
			HttpServletRequest request, HttpServletResponse response) 
					throws IOException, ServletException {

		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		Map<String, Object> item = new HashMap<String, Object>();

		System.out.println("★☆user_locationListPull.jin....받은 유저 번호 : "+user_no);
		item.put("user_no", user_no);
		
		return service.read_user_location(item, request, response);
	}

	/*
	 * 
	 * 
	 * 
	 * 
	 * 
	 * 
	 */
	
	
	
	
	
	
	
}
