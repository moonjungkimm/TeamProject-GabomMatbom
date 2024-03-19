package com.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.dao.moon.ParkingDao;
import com.dto.moon.AreaDto;
import com.dto.ye.RestInfoDto;
import com.service.moon.ParkingService;

import lombok.extern.log4j.Log4j;

import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.io.BufferedReader;
import java.io.IOException;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class Test_moon_api {
	@Autowired
	ApplicationContext context;
	
	@Autowired
	ParkingDao dao;
	
	@Autowired
	ParkingService service;
	
	@Test
	public void test_api() {
		RestInfoDto rest = new RestInfoDto();
		rest.setRest_no(13);
		log.info(service.restAddress(rest));
		
		log.info("................" + service.areaCode("중구"));
		
	}
}
