package com.dao.moon;

import com.dao.MyDao;
import com.dto.moon.AreaDto;
import com.dto.ye.RestInfoDto;

@MyDao
public interface ParkingDao {
	
	public String restAddress(RestInfoDto restInfoDto);
	
	public String areaCode(String area);
	
}
