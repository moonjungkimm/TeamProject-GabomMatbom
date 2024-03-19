package com.service.jin;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.InetAddress;
import java.net.URL;
import java.net.URLEncoder;
import java.net.UnknownHostException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Timer;
import java.util.TimerTask;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;

import com.dao.jin.Img_fileDao;
import com.dao.jin.UserDao;
import com.dao.jin.User_fileDao;
import com.dao.jin.User_locationDao;
import com.dto.jin.Img_fileDto;
import com.dto.jin.UserDto;
import com.dto.jin.User_fileDto;
import com.dto.jin.User_locationDto;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.mysql.cj.Session;

import lombok.extern.log4j.Log4j;
import net.nurigo.sdk.NurigoApp;
import net.nurigo.sdk.message.model.Message;
import net.nurigo.sdk.message.request.SingleMessageSendingRequest;
import net.nurigo.sdk.message.response.SingleMessageSentResponse;
import net.nurigo.sdk.message.service.DefaultMessageService;

@Service
@Log4j
public class JService_Impl implements JService {

	
	@Autowired
	UserDto userdto;

	@Autowired
	User_locationDto user_locationdto;

	@Autowired
	UserDao userdao;

	@Autowired
	User_locationDao user_locationdao;

	@Autowired
	Img_fileDao img_filedao;

	@Autowired
	User_fileDao user_filedao;

	/*
	 * 
	 * 
	 * 
	 * 
	 * 
	 * 
	 */

	// sms verification
	// sms verification
	// sms verification
	final DefaultMessageService messageService;

	public JService_Impl() {

		this.messageService = NurigoApp.INSTANCE.initialize("NCSXGMKFZT9LVJFL", "FS9GLBGHQXWZA7UZVWM88SBBFHUL5ZPA",
				"https://api.coolsms.co.kr");
	}

	@Override
	public int VerifyMobileBySms(Map<String, Object> item, HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();

		Message message = new Message();

		message.setFrom("01039502803");
		message.setTo((String) session.getAttribute("verify_nubmer"));

		Random random = new Random();
		int randomNumber = random.nextInt(10000);
		String formattedNumber = String.format("%04d", randomNumber);
		log.info("4자리 난수 : " + formattedNumber);

		message.setText("안녕하세요. '가봄,맛봄 휴대폰 인증 서비스 입니다. 인증 번호는 [" + formattedNumber + "] 입니다.");

		SingleMessageSentResponse sresponse = this.messageService.sendOne(new SingleMessageSendingRequest(message));
		log.info(sresponse.toString());

		if (sresponse.getStatusCode().equals("2000")) {

			session.setAttribute("verificationCode", formattedNumber);

			Timer timer = new Timer(true);
			timer.schedule(new TimerTask() {
				@Override
				public void run() {
					session.removeAttribute("verificationCode");
					session.removeAttribute("verify_nubmer");
				}
			}, 5 * 60 * 1000);

			return 1;

		}

		return 0;
	}
	// sms verification
	// sms verification
	// sms verification

	/*
	 * 
	 * 
	 * 
	 * 
	 * 
	 * 
	 */

	// user_duplicateIdCheck
	// user_duplicateIdCheck
	// user_duplicateIdCheck
	@Override
	public int user_duplicateIdCheck(Map<String, Object> item, HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		log.info((String) item.get("inputID"));
		UserDto userdto = new UserDto();
		userdto.setUser_id((String) item.get("inputID"));

		return userdao.duplicateIdCheck(userdto);
	}
	// user_duplicateIdCheck
	// user_duplicateIdCheck
	// user_duplicateIdCheck

	/*
	 * 
	 * 
	 * 
	 * 
	 * 
	 * 
	 */

	// user_Insert
	// user_Insert
	// user_Insert
	@Override
	public int user_Insert(Map<String, Object> item, HttpServletRequest request, HttpServletResponse response)
			throws UnknownHostException {
		// TODO Auto-generated method stub
		try {
			// log.info("....................................1");

			userdto = (UserDto) item.get("userdto");
			userdto.setJoin_type_no(1); // 1-normal, 2-naver, 3-kakao
			userdto.setType_no(2); // 1-admin, 2-user
			userdto.setUser_ip(InetAddress.getLocalHost().getHostAddress());

			// log.info("....................................2");

			if (userdao.insert(userdto) > 0) {
				log.info("......user_insert : SUCCESS");
				userdto = userdao.read(userdto);
			}

			// log.info("....................................3");

			String location = (String) item.get("location");

			insert_user_location(location);

			// log.info("....................................5");

		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
		return 1;
	}
	// user_Insert
	// user_Insert
	// user_Insert

	/*
	 * 
	 * 
	 * 
	 * 
	 * 
	 * 
	 */

	// insert_user_location
	// insert_user_location
	// insert_user_location
	public void insert_user_location(String location) {

		String[] locationList = { "서초구", "강남구", "종로구", "중구", "용산구", "성동구", "중랑구", "성북구", "도봉구", "노원구", "은평구", "서대문구",
				"강서구", "구로구", "금천구", "영등포구", "동작구", "관악구", "광진구", "동대문구", "마포구", "양천구", "강동구" };

		String[] locationArray = location.split(", ");
		log.info("☆★JService☆★......location_before : " + locationArray.toString());
		for (int i = 0; i < locationArray.length; i++) {
			for (int j = 0; j < locationList.length; j++) {
				if (locationArray[i].equals(locationList[j])) {
					locationArray[i] = "" + (j + 1);
				}
			}
		}

		log.info("....................................4");

		log.info("......location_after : " + locationArray);

		for (int i = 0; i < locationArray.length; i++) {
			if (!locationArray[0].equals("")) {
				user_locationdto.setUser_no(userdto.getUser_no());
				user_locationdto.setLocation_no(Integer.parseInt(locationArray[i]));
				user_locationdao.insert(user_locationdto);
				log.info("......user_location_insert : SUCCESS" + (i + 1) + "th");
			}
		}

	}
	// insert_user_location
	// insert_user_location
	// insert_user_location

	/*
	 * 
	 * 
	 * 
	 * 
	 * 
	 * 
	 */

	// 유저 로그인 (일반 + sns 로그인)
	@Override
	public int user_login(Map<String, Object> item, HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		HttpSession session = request.getSession();

		userdto = (UserDto) item.get("userdto");
		String login_type = (String) item.get("login_type");
		String remember_id = (String) item.get("remember_id");
		String remember_login = (String) item.get("remember_login");
		String profile_image = (String) item.get("profile_image");
		
		
		log.info("☆★☆★로그인 분기 타기 전 dto 값 :"+userdto);
		// 로그인 유형 1
		if (login_type.equals("1")) {
			if (userdao.read(userdto) != null) {

				UserDto login_user_dto = userdao.read(userdto);

				session.setAttribute("login_user_dto", login_user_dto);

				log.info("☆★☆★remember_id : " + remember_id);
				log.info("☆★☆★remember_login : " + remember_login);

				if (remember_id.equals("true")) {
					Cookie cookie = new Cookie("remember_id", login_user_dto.getUser_id());
					cookie.setMaxAge(10 * 24 * 60 * 60); // 유효기간 10일
					response.addCookie(cookie);
					log.info("☆★☆★.....remember_id check true // MAKE SUCCEESS COOKIE : remember_id "
							+ login_user_dto.getUser_id());
				} else {
					// 쿠키 삭제
					Cookie[] cookies = request.getCookies();
					if (cookies != null) {
						for (Cookie cookie : cookies) {
							if ("remember_id".equals(cookie.getName())) {
								cookie.setMaxAge(0); // 쿠키 삭제
								response.addCookie(cookie);
								log.info("☆★JService☆★.....remember_id check false // DELETE COOKIE : remember_id "
										+ login_user_dto.getUser_id());
							}
						}
					}
				}

				if (remember_login.equals("true")) {
					Cookie cookie = new Cookie("remember_login", login_user_dto.getUser_id());
					cookie.setMaxAge(10 * 24 * 60 * 60); // 유효기간 10일
					response.addCookie(cookie);
					log.info("☆★JService☆★.....remember_login check true // MAKE SUCCEESS COOKIE : remember_login "
							+ login_user_dto.getUser_id());
				}
				return 1;
			}

		} else if (login_type.equals("2") || login_type.equals("3")) {// 로그인 유형 sns 로그인

			if (userdao.read(userdto) == null) { 
				//sns 연동 아이디가 없음
				
				UserDto onlyId = new UserDto();
				onlyId.setUser_id(userdto.getUser_id());
				onlyId = userdao.read(onlyId);
				
				if( onlyId == null ) {
					//중복되는 user_id가 있는가? no -> insert
					if (userdao.insert(userdto) > 0) {
						
						log.info("☆★JService☆★...sns최초 로그인 : user inert SUCCESS");
						UserDto login_user_dto = userdao.read(userdto);
						
						Map<String, Object> item2 = new HashMap<String, Object>();
						item2.put("user_no", login_user_dto.getUser_no());
						item2.put("file", profile_image);
						insert_user_profile_img(item2, request, response);
						
						if (login_user_dto != null) {
							session.setAttribute("login_user_dto", login_user_dto);
							log.info("☆★JService☆★...sns최초 로그인 : user insert + login SUCCESS");
							return 2;
						}
					} else {
						log.info("☆★JService☆★...sns최초 로그인 : user inert FAIL");
					}
					
					
				}else {
					//중복되는 user_id가 있는가? yes
					if(onlyId.getJoin_type_no()==1) {
						onlyId.setJoin_type_no(userdto.getJoin_type_no());
						onlyId.setSns_id(userdto.getSns_id());
						if(userdao.updateuser(onlyId) > 0) {
						log.info("☆★JService☆★...... 일반유저 id에 naver 연동 완료");
						session.setAttribute("login_user_dto", userdao.read(onlyId));
						return 3;
						}else {
						log.info("☆★JService☆★...... 일반유저 id에 naver 연동 실패");	
						return 0;
						}
						
					}else{
						log.info("☆★JService☆★...중복되는 user id의 join_type_no 값 : "+ onlyId.getJoin_type_no());
						log.info("☆★JService☆★...중복되는 user id의 시도login_type 값 : "+ login_type);
						
						if(onlyId.getJoin_type_no()== Integer.parseInt(login_type)) {
							log.info("☆★JService☆★...user id == login_type 값 : 일치");
							session.setAttribute("login_user_dto", userdao.read(onlyId));
							return 1;
						}else{
							log.info("☆★JService☆★...user id != login_type 값 : 불일치");
							return 4;
						}
					}
					
					
				}
				
			} else {

				UserDto login_user_dto = userdao.read(userdto);
				if (login_user_dto != null) {
					session.setAttribute("login_user_dto", login_user_dto);
					log.info("☆★JService☆★...sns후속 로그인 : user login SUCCESS");
					return 1;
				}

			}

		}

		return 0;
	}

	/*
	 * 
	 * 
	 * 
	 * 
	 * 
	 * 
	 */

//	쿠키 로그인
	@Override
	public int cookie_login(Map<String, Object> item, HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		try {
			HttpSession session = request.getSession();

			userdto.setUser_id((String) item.get("remember_login"));

			UserDto login_user_dto = userdao.read(userdto);

			if (login_user_dto != null) {
				session.setAttribute("login_user_dto", login_user_dto);

				Cookie cookie = new Cookie("remember_login", login_user_dto.getUser_id());
				cookie.setMaxAge(10 * 24 * 60 * 60); // 유효기간 10일
				response.addCookie(cookie);
				log.info("☆★JService☆★.....remember_login check true // MAKE SUCCEESS COOKIE : remember_login "
						+ login_user_dto.getUser_id());
				return 1;
			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return 0;
		}
		return 0;
	}

	/*
	 * 
	 * 
	 * 
	 * 
	 * 
	 * 
	 */

//	아이디 찾기
	@Override
	public int find_id(Map<String, Object> item, HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		userdto = (UserDto) item.get("userdto");

		if (userdao.find_id(userdto) != null) {

			UserDto result = userdao.find_id(userdto);
			request.setAttribute("find_id_result", result.getUser_id());

			return 1;
		}

		return 0;
	}

	/*
	 * 
	 * 
	 * 
	 * 
	 * 
	 * 
	 */

	// 비밀번호 찾기 탭에서 비밀번호 바꾸기
	@Override
	public int update_pw(Map<String, Object> item, HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		userdto = (UserDto) item.get("userdto");

		if (userdao.updatepw(userdto) > 0) {

			return 1;
		}

		return 0;
	}

	/*
	 * 
	 * 
	 * 
	 * 
	 * 
	 * 
	 */

	// 유저 정보 수정 탭에서 비밀번호 바꾸기
	@Override
	public int update_pw2(Map<String, Object> item, HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		String user_pw_before = (String) item.get("user_pw_before");
		userdto = (UserDto) item.get("userdto");

		String user_pw_new = userdto.getUser_pw();

		userdto.setUser_pw(user_pw_before);

		UserDto userdto2 = userdao.read(userdto);

		if (userdto2 != null) {
			if (userdto.getUser_no() == userdto2.getUser_no()) {

				userdto.setUser_pw(user_pw_new);

				if (userdao.updatepw(userdto) > 0) {

					return 1;
				}

			}
		}

		return 0;
	}

	/*
	 * 
	 * 
	 * 
	 * 
	 * 
	 * 
	 */

	// 유저 번호를 받아서 DB에서 해당 유저 번호에 해당하는 이미지 파일 이름을 user_img 테이블에서 가져와서 리턴
	@Override
	public String read_user_profile_img(Map<String, Object> item, HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		User_fileDto user_filedto = (User_fileDto) item.get("user_filedto");

		user_filedto = user_filedao.read(user_filedto);

		if (user_filedto != null) {
			Img_fileDto img_filedto = new Img_fileDto();
			img_filedto.setFile_no(user_filedto.getFile_no());
			img_filedto = img_filedao.read(img_filedto);

			if (img_filedto != null) {

				return img_filedto.getFile_name();
			}

		}
		return null;
	}

	/*
	 * 
	 * 
	 * 
	 * 
	 * 
	 * 
	 */

	// 유저 번호를 받아서 DB에서 해당 유저 번호에 해당하는 장소 넘버를 user_location 테이블에서 가져와서 문자열로 바꿔서 리턴
	@Override
	public String read_user_location(Map<String, Object> item, HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		User_locationDto user_locationdto = new User_locationDto();

		user_locationdto.setUser_no(Integer.parseInt((String) item.get("user_no")));

		List<User_locationDto> list = user_locationdao.read(user_locationdto);

		String[] locationList = { "서초구", "강남구", "종로구", "중구", "용산구", "성동구", "중랑구", "성북구", "도봉구", "노원구", "은평구", "서대문구",
				"강서구", "구로구", "금천구", "영등포구", "동작구", "관악구", "광진구", "동대문구", "마포구", "양천구", "강동구" };

		String result = "";
		for (User_locationDto dto : list) {

			if (result.length() == 0) {
				result = locationList[dto.getLocation_no() - 1];
			} else {
				result += ", " + locationList[dto.getLocation_no() - 1];
			}

		}

		return result;
	}

	/*
	 * 
	 * 
	 * 
	 * 
	 * 
	 * 
	 */

	// 유저 정보 업데이트
	@Transactional
	@Override
	public int user_update(Map<String, Object> item, HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		HttpSession session = request.getSession();

		Map<String, Object> item2 = new HashMap<String, Object>();

		MultipartFile file = (MultipartFile) item.get("file");
		userdto = (UserDto) item.get("userdto");
		String user_location = (String) item.get("user_location");
		user_location = user_location == null ? "" : user_location;

		if (userdao.updateuser(userdto) > 0) {

			log.info("☆★☆★user_update 1 : 사용자 정보 업데이트 성공");

			if (!file.isEmpty()) {
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
					item2.put("user_no", userdto.getUser_no());
					item2.put("file", save);
					insert_user_profile_img(item2, request, response);
					log.info("☆★☆★user_update 2 : 사용자 프로필 이미지 변경 성공");
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

			} else {
				log.info("☆★☆★user_update 2 : 사용자 프로필 이미지 변경 안함");
			}

			user_locationdto.setUser_no(userdto.getUser_no());
			user_locationdao.delete(user_locationdto);
			insert_user_location(user_location);

			log.info("☆★☆★user_update 3 : 사용자 관심장소 업데이트 성공");

			userdto = userdao.read(userdto);

			session.setAttribute("login_user_dto", userdto);
			return 1;
		}

		log.info("☆★☆★사용자 프로필 이미지 업로드 실패");

		return 0;
	}

	// 유저 프로필 이미지 업데이트
	@Override
	public int insert_user_profile_img(Map<String, Object> item, HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		User_fileDto user_file_dto = new User_fileDto();
		user_file_dto.setUser_no((int) item.get("user_no"));

		Img_fileDto img_file_dto = new Img_fileDto();
		img_file_dto.setFile_name((String) item.get("file"));
		if (user_filedao.read(user_file_dto) == null) {

			// 유저 no로 검색해서 없으면 img인서트 user_img인서트

			if (img_filedao.insert(img_file_dto) > 0) {

				img_file_dto = img_filedao.read_byFileName(img_file_dto);

				user_file_dto.setFile_no(img_file_dto.getFile_no());

				if (user_filedao.insert(user_file_dto) > 0) {

					log.info("☆★☆★...img_filedao.insert 성공");
					log.info("☆★☆★...user_filedao.insert 성공");

					return 1;
				}

			}
		} else {

			// 유저 no로 검색해서 있으면 img업데이트
			user_file_dto = user_filedao.read(user_file_dto);

			img_file_dto.setFile_no(user_file_dto.getFile_no());

			if (img_filedao.update(img_file_dto) > 0) {

				log.info("☆★☆★...img_filedao.update 성공");

				return 1;
			}

		}

		return 0;
	}

	/*
	 * 
	 * 
	 * 
	 * 
	 * 
	 * 
	 */

	// 유저 로그 아웃
	@Override
	public int user_logout(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		HttpSession session = request.getSession();
		
		// 세션 무효
		session.invalidate();

		// 쿠키 삭제
		Cookie[] cookies = request.getCookies();
		if (cookies != null) {
			for (Cookie cookie : cookies) {
				if ("remember_login".equals(cookie.getName())) {
					cookie.setMaxAge(0); // 쿠키 삭제
					response.addCookie(cookie);
				}
			}
		}

		return 1;
	}

	/*
	 * 
	 * 
	 * 
	 * 
	 * 
	 * 
	 */
	
	// 유저 삭제
	@Override
	public int delete_user(Map<String, Object> item, HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		int result_int = 0;
		
		userdto = (UserDto) item.get("userdto");
		userdto = userdao.read(userdto);
		
		if(userdto != null) {
		int join_type = userdto.getJoin_type_no();
		// 1. 일반 2. 네이버 3. 카카오
		
		switch (join_type) {

		case 1:// 1. 일반유저 일 경우 탈퇴
			log.info("☆★☆★☆★☆★ 일반 유저 탈퇴 ☆★☆★");
			break;

		case 2:// 2. 네이버유저 일 경우 탈퇴
			log.info("☆★☆★☆★☆★ 네이버 유저 탈퇴 ☆★☆★");
			String clientId = "jjoG5L0Odeyao6UOPCVc"; // 애플리케이션 클라이언트 아이디값";
			String clientSecret = "EX0nHpNPpN"; // 애플리케이션 클라이언트 시크릿값";
			String token = (String) request.getSession().getAttribute("naver_accessToken"); // 네이버 로그인 접근 토큰;

			String apiURL = "https://nid.naver.com/oauth2.0/token?grant_type=delete&" + 
			"client_id=" + clientId + 
			"&client_secret=" + clientSecret + 
			"&access_token=" + token + 
			"&service_provider=NAVER";

			JsonParser parser = new JsonParser();
			
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
					
				}

				String inputLine;
				StringBuilder res = new StringBuilder();

				while ((inputLine = br.readLine()) != null) {
					res.append(inputLine);
				}

				br.close();
				log.info( res.toString() );
				
				JsonElement jsonElement = parser.parse(res.toString());
				
				// JsonElement를 JsonObject로 변환

				if (jsonElement.isJsonObject()) {
					JsonObject j_ob = jsonElement.getAsJsonObject();

					String result = j_ob.get("result").getAsString();
					String access_token = j_ob.get("access_token").toString();
					log.info("☆★☆★result DELETE : " + result);	
					log.info("☆★☆★token DELETED : " + access_token);	
					}
				
				
			} catch (Exception e) {
				// Exception 로깅
			}

			break;

			
			
		case 3:// 3. 카카오유저 일 경우 탈퇴
			log.info("☆★☆★ 카카오 유저 탈퇴 ☆★☆★");
			
			String urlapi = "https://kapi.kakao.com/v1/user/unlink";
			String access_token = (String) request.getSession().getAttribute("kakao_access_token");
						
			URL url = null;
			HttpURLConnection conn = null;
			BufferedReader br = null;

			url = new URL(urlapi);
			conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("POST");
			conn.setRequestProperty("Content-type", "application/x-www-form-urlencoded");
			conn.setRequestProperty("Authorization", "Bearer "+access_token);
			conn.setDoOutput(true); // 서버한테 전달

			DataOutputStream out = new DataOutputStream(conn.getOutputStream());
			out.close();

			if (conn.getResponseCode() == 200) {
				log.info("☆★☆★카카오 연결 끊기 정상실행");
				br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			} else {
				log.info("☆★☆★카카오 연결 끊기 비정상실행");
				br = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
			}

			String line = "";
			StringBuffer buffer = new StringBuffer();

			while ((line = br.readLine()) != null) {
				buffer.append(line);
			}
			br.close();
			conn.disconnect();

			String result = buffer.toString();
			log.info("☆★☆★"+result);
			break;

			
			
		default:

			log.info("join_type 값이 1,2,3 범위를 벗어남");
			break;
		}
		
		
		
		if (userdao.delete(userdto) > 0) {
			/*
			Img_fileDto img_filedto = new Img_fileDto();
			User_fileDto user_filedto = new User_fileDto();
			User_locationDto user_locationdto = new User_locationDto();
			
			int user_num = userdto.getUser_no();
			user_filedto.setUser_no(user_num);
			int file_num = user_filedao.read(user_filedto).getFile_no();
			*/
			
			result_int=1;
		}
		}
		return result_int;
	}

	@Override
	public UserDto userDetail_byAdmin(int user_no) {
		// TODO Auto-generated method stub
		
		UserDto dto = new UserDto();
		dto.setUser_no(user_no);
		return userdao.read(dto);
	}

	@Override
	public int userUpdate_byAdmin(UserDto dto) {
		// TODO Auto-generated method stub
		return userdao.userUpdate_byAdmin(dto);
	}

	@Override
	public int userDelete_byAdmin(UserDto dto) {
		// TODO Auto-generated method stub
		return userdao.delete(dto);
	}

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
