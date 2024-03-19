package com.dto.moon;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;


@Data
@AllArgsConstructor
@NoArgsConstructor
public class BoardResultDto {
	private int board_no;
	private int ctg_no;
	private int user_no;
	private String board_title;
	private String board_content;
	private String board_nick;
	private String board_time;
	private int board_hit;
	private String board_ip;
	private int like_count;
	private int reply_no;
	private int reply_user_no;
	private String reply_time;
	private String reply_nick;
	private String reply_ip;
	
	
}
