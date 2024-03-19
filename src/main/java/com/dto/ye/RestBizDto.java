package com.dto.ye;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class RestBizDto {
	private int biz_no;
	private int rest_no;
	private int biz_day;
	private String biz_open;
	private String biz_close;
	private int biz_off;
	
}
