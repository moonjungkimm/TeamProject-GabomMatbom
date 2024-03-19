package com.dto.moon;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class BoardReplyDto {
	private int reply_no;
	private int board_no;
	private int user_no;
	private String reply_time;
	private String reply_content;
	private String reply_nick;
	private String reply_ip;
	
}
