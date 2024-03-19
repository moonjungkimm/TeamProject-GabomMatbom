package com.controller.ye;


import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.dto.ye.MenuDto;
import com.dto.ye.RestBizDto;
import com.dto.ye.RestFileDto;
import com.dto.ye.RestInfoDto;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.service.ye.RestService;

@Controller("ye-controller")
public class FrontController {
   
   @Autowired
   RestService service;
   
   // 카카오 길찾기
   @ResponseBody
   @RequestMapping(value="/findRestKakao.ye", method=RequestMethod.GET, 
		    headers = "Content-Type=application/json", // 헤더 이름과 값의 쌍으로 설정
		    produces = "application/json; charset=UTF-8")
   public String findRest(@RequestParam Map<String, String> param) throws IOException {
	   
	   String origin = param.get("origin");
	   String destination = param.get("destination");
	   
	   System.out.println("카카오 길찾기 ( 출발지 : " + origin + " / 도착지 : " + destination + " )");
	   
	   String REST_API_KEY = "53b7e029069bb988d3e217b3f96575eb";
	   String api_url = "https://apis-navi.kakaomobility.com/v1/directions?";
	   String api_parameter = "origin=" + origin
	   		+ "&destination=" + destination
	   		+ "&waypoints="
	   		+ "&priority=RECOMMEND"
	   		+ "&car_fuel=GASOLINE&car_hipass=false"
	   		+ "&alternatives=false&road_details=false";
	   
	  URL url = new URL(api_url+api_parameter);
	  HttpURLConnection conn =(HttpURLConnection) url.openConnection();
	  conn.setRequestMethod("GET");
	  conn.setRequestProperty("Authorization", "KakaoAK " + REST_API_KEY);
	  conn.setRequestProperty("Content-Type", "application/json");
	  conn.setDoOutput(true);
	  conn.setDoInput(true);
	  
//	  DataOutputStream out = new DataOutputStream(conn.getOutputStream());
//	  out.writeBytes(api_parameter);
//	  out.close();
	  
	  System.out.println("Response Code: " + conn.getResponseCode());
	  
	  BufferedReader br = null;
	  if(conn.getResponseCode() == 200) {
		  br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
	  }else {
		  br = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
	  }
	  
	  String line = "";
	  StringBuffer buffer = new StringBuffer();
	  while((line = br.readLine()) != null) {
		  buffer.append(line);
	  }
	  br.close();
	  conn.disconnect();
	  
	  String resultString = buffer.toString();
	  System.out.println("return : " + resultString);
	  
	  
//	  JsonParser parser = new JsonParser();
//	  JsonElement jsonElement = parser.parse(resultString);
//	  if(jsonElement.isJsonObject()) {
//		  JsonObject resultJson = jsonElement.getAsJsonObject();
//		  
//	  }
	   
	   return resultString;
   }
   
   // 메인페이지
   @RequestMapping(value="/index.ye", method=RequestMethod.GET)
   public String main(Model model) {
	   List<Object> list = service.main();
//	   model.addAttribute("locList",list.get(0));
	   model.addAttribute("likeList",list.get(0));
	   model.addAttribute("ctgList",list.get(1));
	   
	   return "/yeeunPages/index.jsp";
   }
   
   // 식당상세
   @RequestMapping(value="/detail.ye",method=RequestMethod.GET)
   public String detail(int rest_no, Model model) {
      model.addAttribute("list",service.readRest(rest_no));
      return "/yeeunPages/restaurantDetail.jsp";
   }
   
   @RequestMapping(value="/searchResult.ye",method=RequestMethod.GET)
   public String searchResult(
	        @RequestParam(name = "ctg_no", required = false) List<Integer> ctgNos,
	        @RequestParam(name = "searchKey", required = false) String searchKey,
	        Model model) {
	   
	   
	   
	   // ctgNos만 있음 
	    if (ctgNos != null && !ctgNos.isEmpty() && searchKey == null  || searchKey.isEmpty()) {
	        service.searchResult(null, ctgNos, model);
	    }

	    // searchKey만 있음 
	    if (searchKey != null && !searchKey.isEmpty() && ctgNos == null  || ctgNos.isEmpty()) {
	    	 service.searchResult(searchKey, null,  model);
	    }
	    
	    // 둘다 있음
	    if(ctgNos != null && !ctgNos.isEmpty() && searchKey != null && !searchKey.isEmpty()) {
	    	service.searchResult(searchKey, ctgNos, model);
	    }
	  
	   
	   model.addAttribute("ctgList", service.readCtg());
      return "/yeeunPages/searchResult.jsp";
   }
   
   
   // 관리자
   @RequestMapping(value="/adminRestList.ye",method=RequestMethod.GET)
   public String adminRestList(Model model) {
      model.addAttribute("list",service.listRestInfo());
      return "/yeeunPages/adminRestList.jsp";
   }
   
   @RequestMapping(value="/adminRestWrite.ye",method=RequestMethod.GET)
   public String adminRestWriteView() {
      return "/yeeunPages/adminRestWrite.jsp";
   }
   
   @RequestMapping(value="/adminRestWrite.ye",method=RequestMethod.POST)
   public String adminRestWrite(@RequestParam Map<String, String> param, @RequestParam("uploadFiles") MultipartFile[]files,  HttpServletRequest request) throws IOException {
	  
	   ArrayList<RestFileDto> fileList = new ArrayList<RestFileDto>();
	   for(MultipartFile file : files) {
		   if (!file.isEmpty()) {
			   RestFileDto fileDto = new RestFileDto();
			   UUID uid = UUID.randomUUID();
			   String save = uid.toString() + "_" + file.getOriginalFilename();
			   fileDto.setFile_name(save);
			   
			   String rootPath = request.getSession().getServletContext().getRealPath("/resources/uploads");
//			   String rootPath = "/Users/yeeun/git/Team_GYMG_project/src/main/webapp/resources/uploads";
				System.out.println(rootPath);
				
			   File target = new File(rootPath, save);
			   FileCopyUtils.copy(file.getBytes(), target);
				
			   fileList.add(fileDto);
		   }
		   
	  }
	  
	  RestInfoDto infoDto = new RestInfoDto();
	  infoDto.setCtg_no(Integer.parseInt(param.get("ctg_no")));
	  infoDto.setRest_name(param.get("rest_name"));
	  infoDto.setRest_tel(param.get("rest_tel"));
	  infoDto.setRest_address(param.get("rest_address"));
	  infoDto.setRest_address2(param.get("rest_address2"));
	  infoDto.setRest_desc(param.get("rest_desc"));
	  ArrayList<RestBizDto> bizList = new ArrayList<RestBizDto>();
	  ArrayList<MenuDto> menuList = new ArrayList<MenuDto>();
	  
	  for(int i = 1; i<8; i++) {
		  RestBizDto dto = new RestBizDto();
		  dto.setBiz_open(param.get("biz_open"+i));
		  dto.setBiz_close(param.get("biz_close"+i));
		  dto.setBiz_off(param.get("biz_off"+i)==null?0:1);
		  bizList.add(dto);
	  }
	  
	  System.out.println(param.get("menuSize"));

	  for(int i = 1; i < Integer.parseInt(param.get("menuSize")) + 1; i++) {
		  MenuDto dto = new MenuDto();
		  dto.setMenu_name(param.get("menu_name"+i));
		  dto.setMenu_price(Integer.parseInt(param.get("menu_price"+i)));
		  menuList.add(dto);
	  }
	  
	  service.insertRest(infoDto, bizList, menuList, fileList);
      return "redirect:/adminRestList.ye";
   }
   
   @RequestMapping(value="/adminRestEdit.ye",method=RequestMethod.GET)
   public String adminRestEditView(int rest_no, Model model) {
      model.addAttribute("list",service.readRest(rest_no));
      return "/yeeunPages/adminRestEdit.jsp";
   }
   
   @RequestMapping(value="/adminRestEdit.ye",method=RequestMethod.POST)
   public String adminRestEdit(RestInfoDto infoDto, @RequestParam Map<String,String> param) {
	   
	   ArrayList<RestBizDto> bizList = new ArrayList<RestBizDto>();
		  ArrayList<MenuDto> menuList = new ArrayList<MenuDto>();
		  
		  for(int i = 1; i<8; i++) {
			  RestBizDto dto = new RestBizDto();
			  dto.setBiz_open(param.get("biz_open"+i));
			  dto.setBiz_close(param.get("biz_close"+i));
			  dto.setBiz_off(param.get("biz_off"+i)==null?0:1);
			  bizList.add(dto);
		  }

		  for(int i = 1; i<Integer.parseInt(param.get("menuSize"))+1; i++) {
			  MenuDto dto = new MenuDto();
			  dto.setMenu_name(param.get("menu_name"+i));
			  dto.setMenu_price(Integer.parseInt(param.get("menu_price"+i)));
			  menuList.add(dto);
		  }
		  service.updateRest(infoDto, bizList, menuList);
	      return "redirect:/adminRestEdit.ye?rest_no=" + Integer.parseInt(param.get("rest_no"));
	      
   }
   
   @RequestMapping(value="/adminRestDelete.ye",method=RequestMethod.GET)
   public String adminRestDeleteView(int rest_no) {
      return "/yeeunPages/adminRestDelete.jsp";
   }
   
   @RequestMapping(value="/adminRestDelete.ye",method=RequestMethod.POST)
   public String adminRestDelete(int rest_no, String pw) {
      service.deleteRest(rest_no, pw);
      return "redirect:/adminRestList.ye";
   }
   
   @GetMapping("/checkRestLike.ye")
   @ResponseBody
   public int checkRestLike(int restNo, int userNo) {
	   return service.checkRestLike(restNo,userNo);
   }
   
   @GetMapping("/restLike.ye")
   @ResponseBody
   public int restLikeToggle(int restNo, int userNo) {
	   return service.toggleRestLike(restNo, userNo);
   }
   
//   @RequestMapping(value="/getAddress.ye", method=RequestMethod.GET, headers={"Content-type=application/json"})
//   @RequestMapping(value="/getAddress.ye", method=RequestMethod.GET, headers={"Content-type=application/json"}   ,  produces="application/json; charset=UTF-8"  )
   @RequestMapping(
		    value = "/getAddress.ye",
		    method = RequestMethod.GET,
		    headers = "Content-Type=application/json", // 헤더 이름과 값의 쌍으로 설정
		    produces = "application/json; charset=UTF-8"
		)
   @ResponseBody
   public String getAddress(@RequestParam Map<String, String> param, HttpServletRequest request, HttpServletResponse response) throws IOException {
   
	   String longitude = param.get("longitude");
	   String latitude = param.get("latitude");
	   
	   HttpSession session = request.getSession();
	   session.setAttribute("userCoord", longitude + "," + latitude);
	   
	   String REST_API_KEY = "53b7e029069bb988d3e217b3f96575eb";
	   String api_url = "https://dapi.kakao.com/v2/local/geo/coord2regioncode.json?x=" + longitude + "&y=" + latitude;
	   
	   URL url = new URL(api_url);
	   HttpURLConnection conn =(HttpURLConnection) url.openConnection();
	   conn.setRequestMethod("GET");
	   conn.setRequestProperty("Content-Type", "application/json;charset=UTF-8");
	   conn.setRequestProperty("Authorization", "KakaoAK " + REST_API_KEY);
	   conn.setDoOutput(true);	
	   conn.setDoInput(true);
	  
	  System.out.println("Response Code: " + conn.getResponseCode());
	  
	  BufferedReader br = null;
	  if(conn.getResponseCode() == 200) {
		  br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
	  }else {
		  br = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
	  }
	  
	  String line = "";
	  StringBuffer buffer = new StringBuffer();
	  while((line = br.readLine()) != null) {
		  buffer.append(line);
	  }
	  br.close();
	  conn.disconnect();
	  
	  String resultString = buffer.toString();
	  System.out.println("return : " + resultString);
	  
	  
//	  JsonParser parser = new JsonParser();
//	  JsonElement jsonElement = parser.parse(resultString);
//	  if(jsonElement.isJsonObject()) {
//		  JsonObject resultJson = jsonElement.getAsJsonObject();
//		  return resultJson;
//	  }
//	  return null;
	  
	  return resultString;
	   
   }

   
   @GetMapping("getLocList.ye")
   @ResponseBody
   public List<RestInfoDto> getLocList(String searchKey){
	   return service.mainLocRecList(searchKey);
   }
   


}