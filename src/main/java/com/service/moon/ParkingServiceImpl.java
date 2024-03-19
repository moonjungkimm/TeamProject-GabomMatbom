package com.service.moon;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.moon.ParkingDao;
import com.dao.moon.RecipeDao;
import com.dto.moon.AreaDto;
import com.dto.moon.RecipeDto;
import com.dto.moon.RecipeVoDto;
import com.dto.moon.StepDto;
import com.dto.ye.RestInfoDto;

@Service
public class ParkingServiceImpl implements ParkingService{
	@Autowired
	ParkingDao dao;

	@Override
	public String restAddress(RestInfoDto restInfoDto) {
		return dao.restAddress(restInfoDto);
	}

	@Override
	public String areaCode(String area) {
		return dao.areaCode(area);
	}

	
}
