package com.test;

import java.net.InetAddress;
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

import com.dao.moon.ReviewDao;
import com.dto.moon.ReviewDto;
import com.service.moon.ReviewService;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class Test_moon_review {
	@Autowired
	ApplicationContext context;
	
	@Autowired
	ReviewDao dao;
	
	@Autowired
	ReviewService service;
	
	@Test	@Ignore
	public void test0() {
		System.out.println(context);
	}
	
	@Test	
	public void test1() throws UnknownHostException {
		ReviewDto dto = new ReviewDto();
		Map<String , Object> para = new HashMap<>();
		
		
		dto.setRest_no(10);
		dto.setUser_no(106);
		dto.setReview_content("test");
		dto.setReview_star(3f);
		dto.setReview_ip(InetAddress.getLocalHost().getHostAddress());
		
//		log.info("............." + service.insertReview(dto));

//		para.put("rest_no", 10);
//		log.info(">>>>>>>>>>>>>>>" + service.readReviewCnt(para));
		
//		log.info("............." + service.readAllReview(para));
		
		dto.setReview_no(3);
		log.info("............" + service.deleteReview(dto));
		
	}
	
	
}
