package com.service.moon;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.moon.ReviewDao;
import com.dto.moon.ReviewDto;

@Service
public class ReviewServiceImpl implements ReviewService{
	@Autowired
	ReviewDao dao;

	@Override
	public int insertReview(ReviewDto reviewDto) {
		try {
			reviewDto.setReview_ip(InetAddress.getLocalHost().getHostAddress());
		} catch (UnknownHostException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return dao.insertReview(reviewDto);
	}

	@Override
	public int readReviewCnt(Map<String, Object> map) {
		return dao.readReviewCnt(map);
	}

	@Override
	public List<ReviewDto> readAllReview(Map<String, Object> map) {
		return dao.readAllReview(map);
	}

	@Override
	public int deleteReview(ReviewDto reviewDto) {
		return dao.deleteReview(reviewDto);
	}

	@Override
	public float restReviewAvg(Map<String, Object> map) {
		return dao.restReviewAvg(map);
	}

	@Override
	public int restReviewCnt(Map<String, Object> map) {
		return dao.restReviewCnt(map);
	}


}
