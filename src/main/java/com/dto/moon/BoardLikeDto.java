package com.dto.moon;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class BoardLikeDto {
	private int board_like_no;
	private int board_no;
	private int user_no;
}

