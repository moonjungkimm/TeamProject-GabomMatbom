package com.dto.ye;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class RestInfoDto {
	private int rest_no;
	private int ctg_no;
	private String rest_name;
	private String rest_desc;
	private String rest_address;
	private String rest_address2;
	private String rest_tel;
	private String rest_time;
	private String ctg_name;
	private int rest_like_cnt;
	private float review_avg;
	private int review_cnt;
	private String file_name;
}