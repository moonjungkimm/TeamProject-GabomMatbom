package com.company.util;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

public class Xml007_weather {
	public static void main(String[] args) {
		//#1. HttpURLConnection -  날씨 xml 파일 읽어오기
		String result = "";
		String url_path = "https://www.weather.go.kr/w/rss/dfs/hr1-forecast.do?zone=1168064000";
		try {
			URL url = new URL(url_path); 
			HttpURLConnection conn = 
						(HttpURLConnection) url.openConnection();
			conn.setRequestMethod("GET");  //  GET/POST
			conn.setDoInput(true);
			conn.setDoOutput(true);
			conn.setUseCaches(false);
			conn.setReadTimeout(10000);
			if( conn.getResponseCode() == 200 ) {
				BufferedReader br = new BufferedReader(
						new InputStreamReader(conn.getInputStream()));
				String line = "";
				StringBuffer sb = new StringBuffer();
				while((line = br.readLine() )!= null) {  sb.append(line+"\n");}
				br.close();
				result = sb.toString();
			}
			System.out.println("#1. result > " + result);
			
			conn.disconnect();
		} catch (MalformedURLException e) { e.printStackTrace(); 
		} catch (IOException e) { e.printStackTrace();
		}
		
		
		//#2. #1 에서 읽어온 xml을  xml07_weather.xml 로 저장
		String folder_path = "src\\com\\company\\day058_using5_io3\\";
		String file_path   = "xml7_weather.xml"; 
		Path   path = Paths.get(folder_path + file_path);
		File   file = new File(folder_path + file_path);
		
		try {
			BufferedWriter bw = 
					Files.newBufferedWriter(path, StandardCharsets.UTF_8);
			bw.write(result);
			bw.close();
			System.out.println("#2. xml 파일로 저장성공!");
		} catch (IOException e) { e.printStackTrace(); }
		
		//#3. #2 에서 저장한 xml을  읽어오기
		// DocumentBuilderFactory  ~ 이용!
		DocumentBuilderFactory factory = 
								DocumentBuilderFactory.newInstance();
		DocumentBuilder     builder=null;
		try {
			builder      = factory.newDocumentBuilder();
			Document dom = builder.parse(file);//parse
			NodeList nodeList = dom.getElementsByTagName("data");//getElementsByTagName
			// nodeList ->[ data,data,data,data ]
			for(int i=0; i<nodeList.getLength(); i++) {
				Node node = nodeList.item(i);  // Data[0] { 공백<hour>24</hour>공백<day>3</day> }
				NodeList  child = node.getChildNodes();  //{ 공백<hour>24</hour>공백<day>3</day> }
				for(int j=0; j<child.getLength(); j++) {
					Node data = child.item(j);  //<hour>24</hour>
					if(data.getNodeType() == Node.ELEMENT_NODE) {
						String name  = data.getNodeName(); //hour
						String value = data.getTextContent();//24
							  if(name.equals("hour")) {
							System.out.println("HOUR\t:" + value);
						}else if(name.equals("temp")) {
							System.out.println("TEMP\t:" + value);
						}else if(name.equals("wfKor")) {
							System.out.println("WFKOR\t:" + value);
						}
					}
				}// end for
				System.out.println("=============");
			}// end for
			
			
		} catch (ParserConfigurationException e) { 
			e.printStackTrace();
		} catch (SAXException e) { 
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
/*
* 연습문제 - Xml007 기상청
1. https://www.weather.go.kr/w/pop/rss-guide.do
2. 서울시 강남구 역삼동 주소얻기 
   https://www.weather.go.kr/w/rss/dfs/hr1-forecast.do?zone=1168064000
*/