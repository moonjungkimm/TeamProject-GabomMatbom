package com.test;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.InetAddress;
import java.net.MalformedURLException;
import java.net.URL;
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

import com.dao.TestDao;
import com.dao.jin.UserDao;
import com.dto.jin.UserDto;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/root-context.xml" })
public class Test_jinwoo {

	@Autowired
	ApplicationContext context;

	@Autowired
	TestDao testDao;

	@Autowired
	UserDao userDao;
	
	@Autowired
	UserDto userDto;

	@Test
	@Ignore
	public void test_ApplicationContext() {
		System.err.println("ApplicationContext  : " + context);
	}

	@Test
	@Ignore
	public void test_TestDao() {
		System.err.println("testDao : " + testDao.readTime());
	}

	@Test @Ignore
	public void test_UserDao() throws UnknownHostException {
		UserDto dto = new UserDto();
		dto.setUser_id("user1");
		dto.setJoin_type_no(1);
		dto.setType_no(1);
		dto.setUser_ip(InetAddress.getLocalHost().getHostAddress());
		dto.setUser_name("진");
		dto.setUser_nick("dn");
		dto.setUser_phone("01028038894");
		dto.setUser_pw("1234");

		System.err.println("##########"+userDao.insert(dto));
		
	}
	
	@Test @Ignore
	public void test7() {
		Map<String, Object> item = new HashMap<String, Object>();
		item.put("item", "jinwoo");
		
		System.out.println( (String)item.get("item"));
	}
	
	@Test @Ignore
	public void test8() {
		
		String[] locationList = { "서초구", "강남구", "종로구", "중구", "용산구", "성동구", "중랑구", "성북구", "도봉구", "노원구", "은평구",
				"서대문구", "강서구", "구로구", "금천구", "영등포구", "동작구", "관악구", "광진구", "동대문구", "마포구", "양천구", "강동구" };

		String location = "서초구, 종로구, 중구";
		
		
		String[] locationArray = location.split(", ");
		System.out.println("......location_before : " + locationArray.toString());
		for (int i = 0; i < locationArray.length; i++) {
			for (int j = 0; j < locationList.length; j++) {
				if (locationArray[i].equals(locationList[j])) {
					locationArray[i] = "" + (j + 1);
				}
			}
		}

		System.out.println("......location_after : " + locationArray.toString());

		for (int i = 0; i < locationArray.length; i++) {
			
			System.out.println("locationArray["+i+"] : "+locationArray[i]); 
		}
		
		
		
	}
	
	@Test @Ignore
	public void test9() throws IOException {
		
		String urlapi = "https://apis-navi.kakaomobility.com/v1/directions?";

		String parameter ="origin=127.11015314141542,37.39472714688412&"
					+ "destination=127.10824367964793,37.401937080111644";
		
		urlapi+= parameter;
		URL url = null;
		HttpURLConnection conn = null;
		BufferedReader br = null;

		url = new URL(urlapi);
		conn = (HttpURLConnection) url.openConnection();
		conn.setRequestMethod("GET");
		conn.setRequestProperty("Authorization", "KakaoAK 5311dcef4df09cce6029d72479addf8c");
		conn.setRequestProperty("Content-Type", "application/json");
		
		conn.setDoOutput(true); //서버한테 전달
		
				
		DataOutputStream out = new DataOutputStream(conn.getOutputStream());
		out.writeBytes(parameter);
		out.close();
		
		
		
		if (conn.getResponseCode() == 200) {
			System.out.println("정상실행");
			br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
		} else {
			System.out.println("비정상실행");
			System.out.println("리스폰즈 코드 : "+conn.getResponseCode());
			br = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
		}

		
		String line = "";
		StringBuffer buffer = new StringBuffer();
		
		while ((line = br.readLine()) != null) {
			buffer.append(line);
		}
		br.close();
		conn.disconnect();
		
		String result =  buffer.toString();
		System.out.println("===========================");
		System.out.println("카카오 모빌리티 경로 api 결과 : "+result);
		
	}

	@Test
	public void test10() {
		System.out.println(userDto);
	}
	
	

}
