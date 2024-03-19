package com.dao.jin;

import java.util.List;

import com.dao.MyDao;
import com.dto.jin.UserDto;

@MyDao
public interface UserDao {

	public int insert(UserDto dto);
	public int updateuser(UserDto dto);
	public int updatepw(UserDto dto);
	public int delete(UserDto dto);
	public int duplicateIdCheck(UserDto dto);
	
	public UserDto find_id(UserDto dto);
	public UserDto user_login(UserDto dto);
	public UserDto read(UserDto dto);
	public UserDto read_user_no(UserDto dto);
	public List<UserDto> readAll();
	
	public int userUpdate_byAdmin(UserDto dto);
}
