package com.dto.jin;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Component
@Data
@AllArgsConstructor
@NoArgsConstructor
public class User_locationDto {
 
	private int user_location_no;
	private int user_no;
	private int location_no;
}
