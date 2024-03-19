package com.dto.ye;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MenuDto {
	private int menu_no;
	private int rest_no;
	private String menu_name;
	private int menu_price;
	
}
