package com.dao.jin;

import com.dao.MyDao;
import com.dto.jin.Img_fileDto;

@MyDao
public interface Img_fileDao {

	public int insert(Img_fileDto dto);
	public int update(Img_fileDto dto);
	public int delete(Img_fileDto dto);
	public Img_fileDto read(Img_fileDto dto);
	public Img_fileDto read_byFileName(Img_fileDto dto);
	
	
}
