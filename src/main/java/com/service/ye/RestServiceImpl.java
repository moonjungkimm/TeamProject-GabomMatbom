package com.service.ye;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import com.dao.ye.RestDao;
import com.dto.ye.MenuDto;
import com.dto.ye.RestBizDto;
import com.dto.ye.RestFileDto;
import com.dto.ye.RestInfoDto;

@Service
public class RestServiceImpl implements RestService {

	@Autowired
	RestDao dao;

	// 메인
	public List<RestInfoDto> mainLocRecList(String searchKey){
		return dao.mainLocRec(searchKey);
	}
	public List<RestInfoDto> mainLikeRecList(){
		return dao.mainLikeRec();
	}
	public List<Map<String, Object>> readCtg(){
		return dao.readCtg();
	}
	@Transactional
	public List<Object> main(){
		List<Object> list = new ArrayList<>();
		try {
//			list.add(dao.mainLocRec());
			list.add(dao.mainLikeRec());
			list.add(dao.readCtg());
		}catch(Exception e) {
			throw new RuntimeException("Failed to save data.", e);
		}
		return list;
	
	}
	// 검색 결과
	public void searchResult(String searchKey, List<Integer> ctgNos, Model model){
		model.addAttribute("searchResult",dao.searchCtg(searchKey,ctgNos));
	};
	
	// 관리자
	@Override
	public List<RestInfoDto> listRestInfo() {
		List<RestInfoDto> list = dao.listRestInfo();
		for(RestInfoDto dto : list) {
			dto.setRest_time(dto.getRest_time().substring(0, 10));
		}
		return list;
	}

	@Override
	public List<Object> readRest(int restNo) {
		List<Object> list = new ArrayList<Object>();
		
		list.add(dao.readRestInfo(restNo));
		list.add(dao.readRestBiz(restNo));
		list.add(dao.listMenu(restNo));
		list.add(dao.listRestFile(restNo));

		return list;
	}

	@Override
	public int insertRest(RestInfoDto infoDto, ArrayList<RestBizDto> bizList, ArrayList<MenuDto> menuList, ArrayList<RestFileDto> fileList) {
		// 식당정보, 영업시간, 메뉴리스트, 파일리스트 삽입
		int result = -1;
		if (dao.insertRestInfo(infoDto) > 0) {
			for (int i = 0; i < bizList.size(); i++) {
				bizList.get(i).setRest_no(infoDto.getRest_no());
				bizList.get(i).setBiz_day(i + 1);
				dao.insertRestBiz(bizList.get(i));
			}
			for (int i = 0; i < menuList.size(); i++) {
				menuList.get(i).setRest_no(infoDto.getRest_no());
				dao.insertMenu(menuList.get(i));
			}
			if(fileList != null) {
				for (int i = 0; i< fileList.size(); i++) {
					RestFileDto file = fileList.get(i);
					dao.insertFile(file); // file테이블에 file_name 저장, 생성된 file_no 가져오기
					file.setRest_no(infoDto.getRest_no()); // rest_no 저장
					dao.insertRestFile(fileList.get(i)); // rest_file에 file_no, rest_no 저장
				}
			}
			result = 1;
		}
		return result;

	}

	@Override
	public int updateRest(RestInfoDto infoDto, ArrayList<RestBizDto> bizList, ArrayList<MenuDto> menuList) {
		// 식당정보 수정 , 영업시간수정, 식당 파일리스트삭제(추후), 식당 파일리스트 추가(추후), 메뉴리스트 삭제, 메뉴리스 추가
		int result = -1;
		
		// 식당 수정
		if (dao.updateRestInfo(infoDto) > 0) { 
			//영업시간 수정 
			for (int i = 0; i < bizList.size(); i++) {
				bizList.get(i).setRest_no(infoDto.getRest_no());
				bizList.get(i).setBiz_day(i + 1);
				dao.updateRestBiz(bizList.get(i));
			}
			// 메뉴 삭제
			dao.deleteMenu(infoDto.getRest_no());
			// 메뉴 추가
			for (int i = 0; i < menuList.size(); i++) {
				menuList.get(i).setRest_no(infoDto.getRest_no());
				dao.insertMenu(menuList.get(i));
			}
			result = 1;
		}
		return result;
	}

	@Override
	public int deleteRest(int restNo, String pw) {
		int result = 0;
		if (dao.checkAdminPw().equals(pw)) {
			dao.deleteRestInfo(restNo);
			result = 1;
		}
		return result;
	}
	
	@Override
	public int checkRestLike(int restNo, int userNo) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("rest_no", restNo);
		map.put("user_no", userNo);
		
		return dao.amILikeRest(map);
	}
	
	
	@Override
	@Transactional
	public int toggleRestLike(int restNo, int userNo) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("rest_no", restNo);
		map.put("user_no", userNo);
		
		if(dao.amILikeRest(map) > 0) {
			dao.deleteLikeRest(map);
		}else {
			dao.addLikeRest(map);
		}
		return dao.countLikeRest(restNo);
	}

}