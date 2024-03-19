package com.company.util;

import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Component;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

import java.io.BufferedReader;
import java.io.IOException;

@Component
public class ParkingApi {
	public List<Map<String, Object>> parkingApi(String address) throws Exception {
		String result ="";
		List<Map<String, Object>> parkingInfoList = new ArrayList<Map<String,Object>>();
		
		StringBuilder urlBuilder = new StringBuilder("http://openapi.seoul.go.kr:8088");
		/* URL */
		urlBuilder.append("/" + URLEncoder.encode("674b6f42586d6f6f313030726f78746f", "UTF-8")); /*
																		 * 인증키 (sample사용시에는 호출시 제한됩니다.)
																		 */
		urlBuilder.append("/" + URLEncoder.encode("json", "UTF-8")); /*
																	 * 요청파일타입 (xml ,xmlf ,xls ,json )
																	 */
		urlBuilder.append("/" + URLEncoder.encode("GetParkingInfo", "UTF-8"));
		/* 서비스명 (대소문자 구분필수입니다.) */
		urlBuilder.append("/" + URLEncoder.encode("1", "UTF-8")); /*
																	 * 요청시작위치 (sample인증키 사용시 5이내 숫자)
																	 */
		urlBuilder.append("/" + URLEncoder.encode("5", "UTF-8"));
		/* 요청종료위치(sample인증키 사용시 5이상 숫자 선택 안 됨) */
		// 상위 5개는 필수적으로 순서바꾸지 않고호출해야합니다.
		// 서비스별 추가 요청 인자이며자세한내용은각서비스별'요청인자'부분에 자세히나와있습니다.
		urlBuilder.append("/" + URLEncoder.encode(address, "UTF-8")); /*
																					 * 서비스별 추가요청인자들
																					 */
		URL url = new URL(urlBuilder.toString());
		HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		conn.setRequestMethod("GET");
		conn.setRequestProperty("Content-type", "application/xml");
		System.out.println("Response code: " + conn.getResponseCode()); /*
																		 * 연결 자체에대한확인이필요하므로추가합니다.
																		 */
		BufferedReader rd;
		// 서비스코드가 정상이면 200~300사이의 숫자가 나옵니다.
		if (conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
			rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
		} else {
			rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
		}
		StringBuilder sb = new StringBuilder();
		String line;
		while ((line = rd.readLine()) != null) {
			sb.append(line);
		}
		rd.close();
		conn.disconnect();
		result = sb.toString();
		System.out.println(">>>>>>>>" + result);
		
		Gson gson = new Gson();
		JsonObject jsonObject = gson.fromJson(result, JsonObject.class);
		
//		int totalCount = parkingInfo.get("list_total_count").getAsInt();
		
		JsonArray resultArrs = jsonObject.getAsJsonObject("GetParkingInfo").getAsJsonArray("row");

		
		for(JsonElement resultArr : resultArrs) {
			JsonObject row = resultArr.getAsJsonObject();

			String parkingName = row.get("PARKING_NAME").getAsString();
			String parkingAddress = row.get("ADDR").getAsString();
			String parkingTel = row.get("TEL").getAsString();
			Double parkingCapa = row.get("CAPACITY").getAsDouble();
			Double parkingCur = row.get("CUR_PARKING").getAsDouble();
			String parkingPayNM = row.get("PAY_NM").getAsString();
			Double parkingRates = row.get("RATES").getAsDouble();
			Double parkingTimeRates = row.get("TIME_RATE").getAsDouble();

			Map<String, Object> parkingInfo = new HashMap<String, Object>();
			parkingInfo.put("parkingName", parkingName);
			parkingInfo.put("parkingAddress", parkingAddress);
			parkingInfo.put("parkingTel", parkingTel);
			parkingInfo.put("parkingCapa", parkingCapa);
			parkingInfo.put("parkingCur", parkingCur);
			parkingInfo.put("parkingPayNM", parkingPayNM);
			parkingInfo.put("parkingRates", parkingRates);
			parkingInfo.put("parkingTimeRates", parkingTimeRates);
			
			parkingInfoList.add(parkingInfo);
			
		}
		
		
		return parkingInfoList;
	}
}