package com.dao.jin;

import java.util.ArrayList;

import com.dao.MyDao;
import com.dto.jin.User_locationDto;

@MyDao
public interface User_locationDao {

	public int insert(User_locationDto user_locationdto);
	public int delete(User_locationDto user_locationdto);
	public ArrayList<User_locationDto> read(User_locationDto user_locationdto);
	
}
