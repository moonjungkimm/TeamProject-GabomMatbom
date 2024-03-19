package com.service.moon;

import org.springframework.stereotype.Service;

import com.dto.moon.AreaDto;
import com.dto.ye.RestInfoDto;

@Service
public interface ParkingService {
	public String restAddress(RestInfoDto restInfoDto);
	
	public String areaCode(String area);
}
