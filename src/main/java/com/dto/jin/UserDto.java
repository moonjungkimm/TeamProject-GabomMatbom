package com.dto.jin;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Component
@Data
@AllArgsConstructor
@NoArgsConstructor
public class UserDto {
	private int user_no;
	private int type_no;
	private int join_type_no;
	private String user_id;
	private String user_name;
	private String user_nick;
	private String user_pw;
	private String user_phone;
	private String user_intro;
	private String user_ip;
	private String user_time;
	private String sns_id;
	
	
}
