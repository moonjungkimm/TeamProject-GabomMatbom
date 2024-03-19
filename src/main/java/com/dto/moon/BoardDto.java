package com.dto.moon;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class BoardDto {
	private int board_no;
	private int ctg_no;
	private int user_no;
	private String board_title;
	private String board_content;
	private String board_nick;
	private String board_time;
	private int board_hit;
	private int board_like;
	private String board_ip;
	
	private int like_count;
	private int reply_cnt;
}
