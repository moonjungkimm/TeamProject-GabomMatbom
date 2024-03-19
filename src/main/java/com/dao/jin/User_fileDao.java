package com.dao.jin;

import com.dao.MyDao;
import com.dto.jin.User_fileDto;

@MyDao
public interface User_fileDao {

	public int insert(User_fileDto dto);
	public int update(User_fileDto dto);
	public int delete(User_fileDto dto);
	public User_fileDto read(User_fileDto dto);
	
}
