package com.dao.moon;

import java.util.List;
import java.util.Map;


import com.dao.MyDao;
import com.dto.moon.ReviewDto;

@MyDao
public interface ReviewDao {
	
	public int insertReview(ReviewDto reviewDto);
	
	public int readReviewCnt(Map<String, Object> map);
	
	public List<ReviewDto> readAllReview(Map<String, Object> map);
	
	public int deleteReview(ReviewDto reviewDto);
	
	public float restReviewAvg(Map<String, Object> map);
	
	public int restReviewCnt(Map<String, Object> map);
}
