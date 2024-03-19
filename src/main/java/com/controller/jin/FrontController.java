package com.controller.jin;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.InetAddress;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import java.util.Random;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.web.multipart.MultipartFile;

import com.dto.jin.UserDto;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.service.jin.JService;

import lombok.extern.log4j.Log4j;

@Controller("jin-controller")
@Log4j
public class FrontController {

	@Autowired
	JService service;

	/* -- Kakao Login Mappers -- */
	/* -- Kakao Login Mappers -- */
	/* -- Kakao Login Mappers -- */
	@RequestMapping(value = "/Kakao_login.jin", method = { RequestMethod.GET, RequestMethod.POST })
	public String Kakao_login(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {

		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		String code = request.getParameter("code");
		String error = request.getParameter("error");
		String error_description = request.getParameter("error_description");

		System.out.println("code : " + code);
		System.out.println("error : " + error);
		System.out.println("error_description : " + error_description);

		// 인가 코드 받기
		//////////////////////////////////////////////////////////////////////
		// 토큰 받기

		String urlapi = "https://kauth.kakao.com/oauth/token";

		String parameter = "?grant_type=authorization_code" + "&client_id=5311dcef4df09cce6029d72479addf8c" +
		// "&redirect_uri=http://15.164.164.72:8080/Team_GYMG/Kakao_login.jin" +
				"&redirect_uri=http://localhost:8080/Team_GYMG/Kakao_login.jin" + "&code=" + code;

		urlapi += parameter;
		URL url = null;
		HttpURLConnection conn = null;
		BufferedReader br = null;

		url = new URL(urlapi);
		conn = (HttpURLConnection) url.openConnection();
		conn.setRequestMethod("POST");
		conn.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
		conn.setDoOutput(true); // 서버한테 전달

		DataOutputStream out = new DataOutputStream(conn.getOutputStream());
		out.writeBytes(parameter);
		out.close();

		if (conn.getResponseCode() == 200) {
			System.out.println("정상실행");
			br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
		} else {
			System.out.println("비정상실행");
			br = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
			return "GoToLoginPage.jin";
		}

		String line = "";
		StringBuffer buffer = new StringBuffer();

		while ((line = br.readLine()) != null) {
			buffer.append(line);
		}
		br.close();
		conn.disconnect();

		String result = buffer.toString();
		System.out.println("===========================");
		System.out.println("로긴서블릿1페이지 결과 : " + result);
		// JSON 문자열을 JsonElement로 파싱
		JsonParser parser = new JsonParser();
		JsonElement jsonElement = parser.parse(result);
		// JsonElement를 JsonObject로 변환

		if (jsonElement.isJsonObject()) {
			JsonObject j_ob = jsonElement.getAsJsonObject();

			String access_token = j_ob.get("access_token").toString();

			request.getSession().setAttribute("kakao_access_token", access_token);
			/*
			 * request.getRequestDispatcher("/Kakao_login2.jin").forward(request, response);
			 */
		}

		// JsonObject 내의 모든 키-값 출력
		// for (Map.Entry<String, JsonElement> entry : jsonObject.entrySet()) {
		// System.out.println("Key: " + entry.getKey() + ", Value: " +
		// entry.getValue());
		// }
		// } else {
		// System.out.println("Given JSON is not an object.");
		// }
		return "Kakao_login2.jin";
	}

	@RequestMapping(value = "/Kakao_login2.jin", method = { RequestMethod.GET, RequestMethod.POST })
	public String Kakao_login2(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {

		System.out.println("서블릿2진입");

		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String access_token = (String) request.getSession().getAttribute("kakao_access_token");

		//////////////////////////////////////////////////////////////////////
		// 사용자 정보 받기

		String urlapi = "https://kapi.kakao.com/v2/user/me";
		URL url = null;
		HttpURLConnection conn = null;
		BufferedReader br = null;

		url = new URL(urlapi);
		conn = (HttpURLConnection) url.openConnection();
		conn.setRequestMethod("POST");
		conn.setRequestProperty("Authorization", "Bearer " + access_token);
		conn.setRequestProperty("Content-type", "x-www-form-urlencoded;charset=utf-8");
		conn.setDoOutput(true); // 서버한테 전달
		conn.setDoOutput(true);

		if (conn.getResponseCode() == 200) {
			System.out.println("정상실행");
			br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
		} else {
			System.out.println("비정상실행");
			br = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
		}

		String line = "";
		StringBuffer buffer = new StringBuffer();

		while ((line = br.readLine()) != null) {
			buffer.append(line);
		}

		String result = buffer.toString();
		System.out.println("===========================");
		System.out.println("로긴서블릿2페이지 결과 : " + result);
		JsonParser parser = new JsonParser();

		JsonObject obj = (JsonObject) parser.parse(result);

		if (obj != null) {// 카카오 로긴 성공 > 코드, 아이디 모두 수령 완료
			System.out.println("☆★☆★★★"+obj);
			String kakao_id = obj.get("id").getAsString();
			String kakao_email = obj.get("kakao_account").getAsJsonObject().get("email").getAsString();
			String kakao_nick = obj.get("properties").getAsJsonObject().get("nickname").getAsString();
			String profile_image = obj.get("properties").getAsJsonObject().get("profile_image").getAsString();

			System.out.println("카카오 로긴 성공 ");
			System.out.println("kakao_id : " + kakao_id);
			System.out.println("kakao_email : " + kakao_email);
			System.out.println("kakao_nick : " + kakao_nick);

			Map<String, Object> item = new HashMap<String, Object>();
			UserDto dto = new UserDto();

			dto.setJoin_type_no(3);
			dto.setType_no(2);
			dto.setUser_id(kakao_email);
			dto.setUser_ip(InetAddress.getLocalHost().getHostAddress());
			dto.setUser_name(kakao_nick);
			dto.setUser_nick(kakao_nick);
			dto.setUser_intro("카카오 연동 가입 회원입니다. 회원정보 변경 시 최초 비밀번호는 password@1234 입니다. ");
			dto.setUser_phone("01012345678");
			dto.setUser_pw("password@1234");
			dto.setSns_id(kakao_id);

			item.put("userdto", dto);
			item.put("login_type", "3");
			item.put("profile_image", profile_image);
			
			log.info(".........dto : " + dto);
			int this_result = service.user_login(item, request, response);
			log.info("☆★☆★ service.user_login 의 int this_result 값 : "+this_result);
			switch (this_result) {
			case 1:
				request.setAttribute("message", "SNS 연동 간편 로그인 성공");
				break;
			case 2:
				request.setAttribute("message", "SNS 간편 가입 성공했습니다! SNS 아이디로 로그인 합니다");
				break;
			case 3:
				request.setAttribute("message", "기존 아이디에 SNS 간편 로그인 연동 성공했습니다!");
				break;
			case 4:
				request.setAttribute("message", "SNS에 등록된 e-mail정보가 이미 다른 SNS간편가입으로 연동되어 있습니다. 가입시 연동한 SNS간편 로그인으로 다시 시도해주세요.");
				break;
			default:
				request.setAttribute("message", "로그인에 실패했습니다. 관리자에게 문의해주세요.");
				break;
			}
		}
		br.close();
		conn.disconnect();

		return "/jinPages/login_naver.jsp";
		
		
	}

	/* -- Kakao Login Mappers -- */
	/* -- Kakao Login Mappers -- */
	/* -- Kakao Login Mappers -- */
	/*
	 * 
	 * 
	 * 
	 * 
	 * 
	 * 
	 */
	/* -- naver Login Mappers -- */
	/* -- naver Login Mappers -- */
	/* -- naver Login Mappers -- */
	@RequestMapping(value = "/naver_login.jin", method = { RequestMethod.GET, RequestMethod.POST })
	public String naver_login(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {

		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		String clientId = "jjoG5L0Odeyao6UOPCVc";// 애플리케이션 클라이언트 아이디값";
		String clientSecret = "EX0nHpNPpN";// 애플리케이션 클라이언트 시크릿값";
		String code = request.getParameter("code");
		String state = request.getParameter("state");
		String redirectURI = URLEncoder.encode("http://localhost:8080/Team_GYMG/naver_login.jin", "UTF-8");
		// String redirectURI =
		// URLEncoder.encode("http://15.164.164.72:8080/Team_GYMG/naver_login.jin",
		// "UTF-8");
		String apiURL = "https://nid.naver.com/oauth2.0/token?grant_type=authorization_code" + "&client_id=" + clientId
				+ "&client_secret=" + clientSecret + "&redirect_uri=" + redirectURI + "&code=" + code + "&state="
				+ state;
		String accessToken = "";
		String refresh_token = "";
		JsonParser parser = new JsonParser();
		JsonObject my_object = null;
		try {
			URL url = new URL(apiURL);
			HttpURLConnection con = (HttpURLConnection) url.openConnection();
			con.setRequestMethod("GET");
			int responseCode = con.getResponseCode();
			BufferedReader br;
			if (responseCode == 200) { // 정상 호출
				br = new BufferedReader(new InputStreamReader(con.getInputStream()));
			} else { // 에러 발생
				br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
				return "GoToLoginPage.jin";
			}
			String inputLine;
			StringBuilder res = new StringBuilder();
			while ((inputLine = br.readLine()) != null) {
				res.append(inputLine);
			}
			br.close();
			if (responseCode == 200) {
				System.out.println(res.toString());
				my_object = (JsonObject) parser.parse(res.toString());
			}
		} catch (Exception e) {
			// Exception 로깅
		}
		
		if (my_object.get("error") != null) {
			return "GoToLoginPage.jin";
		}else {
		accessToken = my_object.get("access_token").getAsString();
		refresh_token = my_object.get("refresh_token").getAsString();
		String token_type = my_object.get("token_type").getAsString();
		String expires_in = my_object.get("expires_in").getAsString();

		request.getSession().setAttribute("naver_accessToken", accessToken);
		}
		
		return "get_naver_member_profile.jin";
	}

	@RequestMapping(value = "/get_naver_member_profile.jin", method = { RequestMethod.GET, RequestMethod.POST })
	public String get_naver_member_profile(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {

		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		String token = (String) request.getSession().getAttribute("naver_accessToken"); // 네이버 로그인 접근 토큰;
		String header = "Bearer " + token; // Bearer 다음에 공백 추가

		String apiURL = "https://openapi.naver.com/v1/nid/me";

		Map<String, String> requestHeaders = new HashMap<>();
		requestHeaders.put("Authorization", header);
		String responseBody = get(apiURL, requestHeaders);

		System.out.println(responseBody);
		JsonParser parser = new JsonParser();
		JsonObject jsonObject = parser.parse(responseBody).getAsJsonObject();
		System.out.println(jsonObject.get("message").getAsString());
		if (jsonObject.get("message").getAsString().equals("success")) {

			JsonObject jresponse = jsonObject.get("response").getAsJsonObject();

			// Extract and format values
			String naver_id = jresponse.get("id").getAsString();
			String nickname = jresponse.get("nickname").getAsString();
			String profile_image = jresponse.get("profile_image").getAsString();
			String email = jresponse.get("email").getAsString();
			String mobile = jresponse.get("mobile").getAsString().replaceAll("-", "");
			String name = jresponse.get("name").getAsString();

			// Print values (for demonstration)
			System.out.println("ID: " + naver_id);
			System.out.println("Nickname: " + nickname);
			System.out.println("Profile Image: " + profile_image);
			System.out.println("Email: " + email);
			System.out.println("Mobile: " + mobile);
			System.out.println("Name: " + name);

			Map<String, Object> item = new HashMap<String, Object>();
			UserDto dto = new UserDto();

			dto.setJoin_type_no(2);
			dto.setType_no(2);
			dto.setUser_id(email);
			dto.setUser_ip(InetAddress.getLocalHost().getHostAddress());
			dto.setUser_name(name);
			dto.setUser_intro("네이버 연동 가입 회원입니다. 회원정보 변경 시 최초 비밀번호는 password@1234 입니다. ");
			dto.setUser_nick(nickname);
			dto.setUser_phone(mobile);
			dto.setUser_pw("password@1234");
			dto.setSns_id(naver_id);

			item.put("userdto", dto);
			item.put("login_type", "2");
			item.put("profile_image", profile_image);

						
			log.info(".........dto : " + dto);
			int this_result = service.user_login(item, request, response);
			log.info("☆★☆★ service.user_login 의 int this_result 값 : "+this_result);
			switch (this_result) {
			case 1:
				request.setAttribute("message", "SNS 연동 간편 로그인 성공");
				break;
			case 2:
				request.setAttribute("message", "SNS 간편 가입 성공했습니다! SNS 아이디로 로그인 합니다");
				break;
			case 3:
				request.setAttribute("message", "기존 아이디에 SNS 간편 로그인 연동 성공했습니다!");
				break;
			case 4:
				request.setAttribute("message", "SNS에 등록된 e-mail정보가 이미 다른 SNS간편가입으로 연동되어 있습니다. 가입시 연동한 SNS간편 로그인으로 다시 시도해주세요.");
				break;
			default:
				request.setAttribute("message", "로그인에 실패했습니다. 관리자에게 문의해주세요.");
				break;
			}
		}

		return "/jinPages/login_naver.jsp";
	}

	public String get(String apiUrl, Map<String, String> requestHeaders) {
		HttpURLConnection con = connect(apiUrl);
		try {
			con.setRequestMethod("GET");
			for (Map.Entry<String, String> header : requestHeaders.entrySet()) {
				con.setRequestProperty(header.getKey(), header.getValue());
			}

			int responseCode = con.getResponseCode();
			if (responseCode == HttpURLConnection.HTTP_OK) { // 정상 호출
				return readBody(con.getInputStream());
			} else { // 에러 발생
				return readBody(con.getErrorStream());
			}
		} catch (IOException e) {
			throw new RuntimeException("API 요청과 응답 실패", e);
		} finally {
			con.disconnect();
		}
	}

	public HttpURLConnection connect(String apiUrl) {
		try {
			URL url = new URL(apiUrl);
			return (HttpURLConnection) url.openConnection();
		} catch (MalformedURLException e) {
			throw new RuntimeException("API URL이 잘못되었습니다. : " + apiUrl, e);
		} catch (IOException e) {
			throw new RuntimeException("연결이 실패했습니다. : " + apiUrl, e);
		}
	}

	public String readBody(InputStream body) {
		InputStreamReader streamReader = new InputStreamReader(body);

		try (BufferedReader lineReader = new BufferedReader(streamReader)) {
			StringBuilder responseBody = new StringBuilder();

			String line;
			while ((line = lineReader.readLine()) != null) {
				responseBody.append(line);
			}

			return responseBody.toString();
		} catch (IOException e) {
			throw new RuntimeException("API 응답을 읽는데 실패했습니다.", e);
		}
	}
	/* -- naver Login Mappers -- */
	/* -- naver Login Mappers -- */
	/* -- naver Login Mappers -- */

	/*
	 * 
	 * 
	 * 
	 * 
	 * 
	 * 
	 */
	
	/* find_id.jin */
	/* find_id.jin */
	/* find_id.jin */
	@RequestMapping(value = "/find_id.jin", method = { RequestMethod.GET, RequestMethod.POST })
	public String find_id_form_transfer(UserDto userdto, HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {

		Map<String, Object> item = new HashMap<String, Object>();

		item.put("userdto", userdto);

		log.info(".........find_id : ");
		log.info(userdto.getUser_name());
		log.info(userdto.getUser_phone());
		if (service.find_id(item, request, response) > 0) {

			return "GoToFind_id2Page.jin";
		}

		return "redirect:GoToFind_id3Page.jin";
	}
	/* find_id.jin */
	/* find_id.jin */
	/* find_id.jin */
	
	/*
	 * 
	 * 
	 * 
	 * 
	 * 
	 * 
	 */
	
	/* find_pass_email_trans.jin */
	/* find_pass_email_trans.jin */
	/* find_pass_email_trans.jin */
	@RequestMapping(value = "/find_pass_email_trans.jin", method = { RequestMethod.GET, RequestMethod.POST })
	public String find_pass_email_trans(String user_id, HttpServletRequest request) {
		log.info("...............비번 찾기 이메일 전송 시작");
		System.out.println(user_id);
		// 1. 보내는 쪽
		String host = "smtp.naver.com";
		String user = "bananasyndro@naver.com"; // 본인 naver 아이디 (이메일형식)
		String password = "Ogsily121@"; // 본인 naver 아이디 비밀번호

		// 2. 받는 사람
		String to = user_id;
		/* String to = "bananasyndro@naver.com"; */
		Properties props = new Properties();
		props.put("mail.smtp.host", host);
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.port", "587");

		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.ssl.trust", "smtp.naver.com");
		props.put("mail.smtp.ssl.protocols", "TLSv1.2");

		Session session = Session.getDefaultInstance(props, new Authenticator() {

			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				// TODO Auto-generated method stub
				return new PasswordAuthentication(user, password);
			}

		});

		MimeMessage message = new MimeMessage(session);
		try {
			Random random = new Random();

			int randomNumber = random.nextInt(10000);

			String formattedNumber = String.format("%04d", randomNumber);
			log.info("4자리 난수 : " + formattedNumber);

			request.getSession().setAttribute("email4number", formattedNumber);

			message.setFrom(new InternetAddress(user)); // 보내는 사람
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));// 받는사람

			message.setSubject("가봄,맛봄 비밀번호 찾기 서비스 입니다.");
			message.setContent(""

					+ "<h3>인증번호를 확인해주세요</h3><br>" + "<p>[ " + formattedNumber + " ]</p><br><br><br>" + "</div>",
					"text/html; charset=euc-kr");

			Transport.send(message);
			System.out.println("........... Successfully ......................");

			return "/jinPages/find_pass2.jsp";

		} catch (AddressException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "/jinPages/find_pass4.jsp";

	}
	/* find_pass_email_trans.jin */
	/* find_pass_email_trans.jin */
	/* find_pass_email_trans.jin */
	
	/*
	 * 
	 * 
	 * 
	 * 
	 * 
	 * 
	 */
	
	/* changeUserPass.jin */
	/* changeUserPass.jin */
	/* changeUserPass.jin */
	// 비밀번호 찾기 > 비번 변경
	@RequestMapping(value = "/changeUserPass.jin", method = { RequestMethod.POST })
	public String changeUserPass(UserDto userdto, HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		log.info("...............비번 변경 맵퍼 시작");
		System.out.println(".... 입력받은 dto : " + userdto);

		Map<String, Object> item = new HashMap<String, Object>();

		item.put("userdto", userdto);

		log.info(".........update_pw go");

		if (service.update_pw(item, request, response) > 0) {

			return "redirect:/jinPages/find_pass5.jsp";
		}

		return "/jinPages/find_pass4.jsp";

	}
	
	/*
	 * 
	 * 
	 * 
	 * 
	 * 
	 * 
	 */
	// 유저 정보 수정 >> 비밀번호 변경
	@RequestMapping(value = "/user_pass_change.jin", method = { RequestMethod.POST })
	public String user_pass_change(String user_pw_before, UserDto userdto, HttpServletRequest request,
			HttpServletResponse response) throws IOException, ServletException {

		Map<String, Object> item = new HashMap<String, Object>();

		item.put("user_pw_before", user_pw_before);
		item.put("userdto", userdto);

		if (service.update_pw2(item, request, response) > 0) {

			request.setAttribute("message", "비밀번호 변경 성공! 변경된 비밀번호로 다시 로그인해주세요.");
			request.setAttribute("location", "user_logout.jin");

		} else {

			request.setAttribute("message", "비밀번호 변경 실패.. 비밀번호 입력을 다시 확인해주세요.");
			request.setAttribute("location", "GoToMic_tab2Page.jin");
		}

		return "message.jin";
	}
	/* changeUserPass.jin */
	/* changeUserPass.jin */
	/* changeUserPass.jin */
	
	/*
	 * 
	 * 
	 * 
	 * 
	 * 
	 * 
	 */
	
	/* user_update.jin */
	/* user_update.jin */
	/* user_update.jin */
	@RequestMapping(value = "/user_update.jin", method = { RequestMethod.POST })
	public String user_update(MultipartFile file, UserDto userdto, String user_location, HttpServletRequest request,
			HttpServletResponse response) throws IOException, ServletException {

		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		PrintWriter out = response.getWriter();

		Map<String, Object> item = new HashMap<String, Object>();

		log.info("........POST : user_update.jin");
		log.info("........File NAME : " + file.getOriginalFilename());
		log.info("........File size : " + file.getSize());
		log.info("........File contentType : " + file.getContentType());
		log.info("........UserDto : " + userdto);
		log.info("........user_location : " + user_location);

		item.put("file", file);
		item.put("userdto", userdto);
		item.put("user_location", user_location);

		if (service.user_update(item, request, response) > 0) {

			log.info("......유저 업데이트 최종 성공 !!! ");

			return "redirect:user_change_succsess.jin";
		}
		out.print("<script>alert('유저 정보 변경에 실패했습니다. 비밀번호를 다시 확인해주세요');</script>");
		return "redirect:user_change_fail.jin";

	}
	
	@RequestMapping(value = "/upload.jin", method = { RequestMethod.POST })
	public String upload_post(MultipartFile file, String user_no, HttpServletRequest request,
			HttpServletResponse response) throws IOException, ServletException {

		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		log.info("........POST");
		log.info("........user_no :" + user_no);
		log.info("........NAME : " + file.getOriginalFilename());
		log.info("........size : " + file.getSize());
		log.info("........contentType : " + file.getContentType());
		/*				*/
		/*				*/
		// #1. 파일이름 중복 안되게 고유값 설정
		UUID uid = UUID.randomUUID();
		String save = uid.toString() + "_" + file.getOriginalFilename();
		log.info("........save name : " + save);

		// #2. 파일 업로드
		String rootPath = request.getSession().getServletContext().getRealPath("/");
		rootPath += "resources\\upload";
		log.info("...... rootPath : " + rootPath);

		File target = new File(rootPath, save);

		try {
			FileCopyUtils.copy(file.getBytes(), target);

			Map<String, Object> item = new HashMap<String, Object>();

			item.put("user_no", Integer.parseInt(user_no));
			item.put("file", save);
			if (service.insert_user_profile_img(item, request, response) > 0) {

				System.out.println("사용자 프로필 이미지 업로드 성공");
				return "redirect:GoToMic_tab1Page.jin";
			}

		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		System.out.println("사용자 프로필 이미지 업로드 실패");

		return "redirect:GoToMic_tab1Page.jin";

	}
	/* user_update.jin */
	/* user_update.jin */
	/* user_update.jin */
	
	/*
	 * 
	 * 
	 * 
	 * 
	 * 
	 * 
	 */
	
	// 유저 회원 탈퇴
	@RequestMapping(value = "/delete_user_by_self.jin", method = { RequestMethod.POST })
	public String user_pass_change(UserDto userdto, HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {

		Map<String, Object> item = new HashMap<String, Object>();

		item.put("userdto", userdto);
		System.out.println(".☆★.☆★.☆★");
		System.out.println(userdto);

		System.out.println(".☆★.☆★.☆★");
		if (service.delete_user(item, request, response) > 0) {

			request.setAttribute("message", "탈퇴가 완료되었습니다. 이용해주셔서 감사합니다.");
			request.setAttribute("location", "user_logout.jin");

		} else {

			request.setAttribute("message", "회원 탈퇴 실패.. 비밀번호 입력을 다시 확인해주세요.");
			request.setAttribute("location", "GoToMic_tab3Page.jin");
		}

		return "message.jin";
	}

	
	
	// 어드민 유저 조회
	@RequestMapping(value = "/UserDetail_byAdmin.jin", method = { RequestMethod.GET, RequestMethod.POST  })
	public String UserDetail_byAdmin(int user_no, Model model) {
				
		model.addAttribute("user_dto",service.userDetail_byAdmin(user_no));
				
		return "/jinPages/admin2.jsp";
	}
		
	
	// 어드민 유저 업데이트
	@RequestMapping(value = "/UserUpdate_byAdmin.jin", method = { RequestMethod.POST })
	public String UserUpdate_byAdmin(UserDto dto, Model model) {
					int i=0;
		if((i=service.userUpdate_byAdmin(dto)) > 0) {
			model.addAttribute("update",true);
		}else {
			model.addAttribute("update",false);
		}
		
		System.out.println("☆★☆★☆★☆★☆★☆★☆★☆★.."+i);
		String user_no = Integer.toString(dto.getUser_no());	
		
		
		
		return "UserDetail_byAdmin.jin?user_no="+user_no;
	}
	
	// 어드민 유저 딜리트
	@RequestMapping(value = "/UserDelete_byAdmin.jin", method = { RequestMethod.GET })
	public String UserDelete_byAdmin(UserDto dto) {
						
		service.userDelete_byAdmin(dto);
				
		return "admin1.jin";
	}
	
	
	/*
	@RequestMapping(value = "/pageleave.jin", method = { RequestMethod.GET, RequestMethod.POST })
	public void pageleave() {
		log.info("...............사용자가 회원가입 페이지를 떠남");
	}
	 */
}
