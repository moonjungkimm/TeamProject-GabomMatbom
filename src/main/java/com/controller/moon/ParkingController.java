package com.controller.moon;

import java.util.List;
import java.util.Map;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.company.util.ExtractDistrict;
import com.company.util.ParkingApi;
import com.dto.ye.RestInfoDto;
import com.service.moon.ParkingService;

@Controller
public class ParkingController {
	
	@Autowired
	ParkingService service;
	
	@Autowired
	ExtractDistrict extractDistrict;

	@Autowired
	ParkingApi parkingApi;
	
	@RequestMapping(value="/findParking.moon", method=RequestMethod.GET)
	@ResponseBody
	public List<Map<String, Object>> board_single(@RequestParam(value="rest_no") int rest_no, RestInfoDto restInfoDto ,Model model ) throws Exception {
		
		String address1 = service.restAddress(restInfoDto);
		System.out.println("................" + address1);
		String realAddress = extractDistrict.findDistrict(address1);
		System.out.println("........" + realAddress);
		
		List<Map<String, Object>> parkinginfo = parkingApi.parkingApi(realAddress);
		System.out.println(">>>>>>>>>>>>" + parkinginfo);
		
		model.addAttribute("parking", parkinginfo);
		return parkinginfo;
	}
	
	
	
	
}
