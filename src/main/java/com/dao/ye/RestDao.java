package com.dao.ye;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.dao.MyDao;
import com.dto.ye.MenuDto;
import com.dto.ye.RestBizDto;
import com.dto.ye.RestFileDto;
import com.dto.ye.RestInfoDto;

@MyDao
public interface RestDao {
	
	
	/* main */
	public List<RestInfoDto> mainLocRec(String searchKey); // test
	public List<RestInfoDto> mainLikeRec(); // test
	public List<Map<String, Object>> readCtg(); //test 
	
	/* searchRestult */
	public List<RestInfoDto> searchCtg(@Param("searchKey") String searchKey, @Param("ctgNos") List<Integer> ctgNos); //test
	/*
	restInfo
	*/
	public List<RestInfoDto> listRestInfo(); // test
	public RestInfoDto readRestInfo(int restNo); //test
	public int insertRestInfo(RestInfoDto dto); //test
	public int updateRestInfo(RestInfoDto dto); //test
	public int deleteRestInfo(int restNo); // test
	public String checkAdminPw(); // test
	
	
	/*
	restBiz
	*/
	public List<RestBizDto> readRestBiz(int rest_no); // test
	public int insertRestBiz(RestBizDto dto); // test
	public int updateRestBiz(RestBizDto dto); //test
	
	/*
	restFile
	*/
	public List<RestFileDto> listRestFile(int rest_no);
	public RestFileDto readRestFile(); // 
	public int insertFile(RestFileDto dto); //file_name 저장 , file_no 반환
	public int insertRestFile(RestFileDto dto); // file_no, rest_no 저장

	/*
	restMenu
	*/
	public List<MenuDto> listMenu(int restNo); // test
	public int insertMenu(MenuDto dto); // test
	public int deleteMenu(int restNo); // test
	
	/* restLike */
	public int countLikeRest(int restNo);
	public int amILikeRest(Map<String, Integer> paraMap);
	public int addLikeRest(Map<String, Integer> paraMap);
	public int deleteLikeRest(Map<String, Integer> paraMap);
	
}