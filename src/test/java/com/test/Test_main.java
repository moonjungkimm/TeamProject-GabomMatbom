package com.test;


import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.log;

import java.util.ArrayList;
import java.util.List;

import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.dao.TestDao;
import com.dao.ye.RestDao;
import com.dto.ye.MenuDto;
import com.dto.ye.RestBizDto;
import com.dto.ye.RestInfoDto;
import com.service.ye.RestService;

import lombok.extern.log4j.Log4j;

@Log4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
public class Test_main {

	@Autowired
	ApplicationContext context;
	
	@Autowired
	TestDao testDao;
	
	@Autowired
	RestDao restDao;
	
	@Autowired
	RestService restService;
	
	
	
	@Test @Ignore 
	public void test_ApplicationContext() {
		System.err.println("ApplicationContext : "+context);
	}
	
	@Test @Ignore
	public void test_TestDao() {
		System.err.println("testDao : "+testDao.readTime());
	}
	
	@Test
	public void test_RestDao() {
//		System.out.println(restDao.listRestInfo());
//		System.out.println(restService.ListRestInfo());
//		System.out.println(restDao.readRestInfo(1));
//		System.out.println(restDao.readRestBiz(1));
//		System.out.println(restDao.listMenu(1));
//		System.out.println("식당기본 정보 : "+restService.readRest(1).get(0));
//		System.out.println("식당영업시간 : "+restService.readRest(1).get(1));
//		System.out.println("식당메뉴 : "+restService.readRest(1).get(2));
		
//		RestInfoDto dto = new RestInfoDto();
//		dto.setCtg_no(13);
//		dto.setRest_no(54);
//		dto.setRest_name("통이네 밥집123");
//		dto.setRest_tel("010-3975-9170");
//		dto.setRest_address("경기도 의왕시 행복마을3로 18");
//		dto.setRest_address2("103동 1504호");
//		dto.setRest_desc("통이가 귀여운 예은이네~! 아주아주 음식을 잘해용ㅎ");
//		restDao.updateRestInfo(dto);
//		System.out.println(dto);
		
		
//		for(int i = 1; i<8; i++) {
//			RestBizDto dto2 = new RestBizDto();
//			dto2.setRest_no(54);
//			dto2.setBiz_day(i);
//			dto2.setBiz_open("11:11");
//			dto2.setBiz_close("23:23");
//			dto2.setBiz_off(1);
//			restDao.updateRestBiz(dto2);
//		}
//		
//		restDao.deleteMenu(54);
//		
//		for(int i = 1; i<8; i++) {
//			MenuDto dto3 = new MenuDto();
//			dto3.setRest_no(54);
//			dto3.setMenu_name("통이네 김치찌개" + i);
//			dto3.setMenu_price(10000);
//			restDao.insertMenu(dto3);
//		}
		
		List<Integer> ctgNos = new ArrayList<Integer>();
		ctgNos.add(3);
		String searchKey = "중";
		//restDao.searchCtg(ctgNos,searchKey);
		
	}
}
