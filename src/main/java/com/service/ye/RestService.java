package com.service.ye;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.ui.Model;

import com.dto.ye.MenuDto;
import com.dto.ye.RestBizDto;
import com.dto.ye.RestFileDto;
import com.dto.ye.RestInfoDto;

public interface RestService {
	/* list */
	public List<RestInfoDto> listRestInfo();

	public void searchResult(String searchKey, List<Integer> ctgNos, Model model);
	
	public List<RestInfoDto> mainLocRecList(String searchKey);
	public List<RestInfoDto> mainLikeRecList();
	public List<Map<String, Object>> readCtg();
	public List<Object> main();
	
	/* readOne */
	public List<Object> readRest(int restNo); // test
	
	/* insert */
	public int insertRest(RestInfoDto infoDto, ArrayList<RestBizDto> bizList, ArrayList<MenuDto> menuList, ArrayList<RestFileDto> fileList);
	
	/* update */
	public int updateRest(RestInfoDto infoDto, ArrayList<RestBizDto> bizList, ArrayList<MenuDto> menuList);

	/* delete */
	public int deleteRest(int restNo, String pw); // test
	
	/* restLike */
	public int checkRestLike(int restNo, int userNo);
	public int toggleRestLike(int restNo, int userNo);
}