package com.company.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.log4j.Log4j;

@Controller("main-controller")
@Log4j
public class MainController {

	@RequestMapping(value = "/postwrite.jee", method = RequestMethod.GET)
	public String postwrite() {
		
		return "/resreview/postwrite"; 

	}
	
	
	
}
