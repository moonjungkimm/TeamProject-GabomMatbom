package com.dto.jin;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;


@Data
@ToString
@NoArgsConstructor
@AllArgsConstructor
@Component
public class JinPagingDto {
	
	// 1. 전체 게시판 개수 : 256
	int listtotal;
	// 2. 한 페이지당 보여줄 (레코드-튜플-줄) 개수 : 20개 #
	int onepagelimit;
	// 3. 하단 전체 페이지 : 256/10 = 26, 512/10 = 52, 500/10 = 50
	int pagetotal;
	// 4. 시작 번호
	int pstartno;
	// 5. 하단 네비게이션 ( 보여줄 개수 )
	int bottomlimit;
	// 6. 현재 네비게이션 번호 #
	int current;
	// 7. 현재 네비게이션 번호의 시작번호
	int start;
	// 8. 현재 네비게이션 번호의 끝번호
	int end;
	public JinPagingDto(int listtotal, int pstartno) {
		super();
		this.listtotal = listtotal;
		this.pstartno = pstartno;
		this.onepagelimit = 10;
		this.pagetotal = (int) Math.ceil((double)listtotal/onepagelimit);
		this.bottomlimit = 10;
		this.current = (int) Math.ceil((pstartno +1)/(double)onepagelimit);
		this.start = ((int) Math.floor((this.current-1)/(double)bottomlimit))*bottomlimit +1;
		this.end = this.start + bottomlimit -1;
		if(pagetotal<end) { this.end = pagetotal; }
		
		
	}
	
	

}
