package com.service.moon;

import java.util.List;
import java.util.Map;

import com.dto.moon.ReviewDto;

public interface ReviewService {
	
	public int insertReview(ReviewDto reviewDto);
	
	public int readReviewCnt(Map<String, Object> map);
	
	public List<ReviewDto> readAllReview(Map<String, Object> map);
	
	public int deleteReview(ReviewDto reviewDto);
	
	public float restReviewAvg(Map<String, Object> map);
	
	public int restReviewCnt(Map<String, Object> map);
}
