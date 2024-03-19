package com.dto.ye;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class RestFileDto {
	private int file_no;
	private int rest_no;
	private String file_name;
	private String file_time;
	
}