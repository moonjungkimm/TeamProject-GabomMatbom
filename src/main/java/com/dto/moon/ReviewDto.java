package com.dto.moon;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ReviewDto {
	private int review_no;
	private int user_no;
	private int rest_no;
	private String review_content;
	private String review_time;
	private float review_star;
	private String review_auth;
	private String review_ip;
}
