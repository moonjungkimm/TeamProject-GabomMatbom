package com.dto.moon;

import java.util.List;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.ToString;
@Getter
@ToString
@AllArgsConstructor
@NoArgsConstructor
@Component
public class PagingDto {
	private int listtotal;
	
	private int onepagelimit;
	
	private int pagetotal;

	private int bottomlimit;
	
	private int pstartno;
	
	private int current;
	
	private int start;
	
	private int end;
	
	private List<Object> list;
	
	public PagingDto(int listtotal, int pstartno) {
		super();
		this.listtotal = listtotal;
		this.onepagelimit = 10;
		this.pagetotal = (int)Math.ceil(listtotal/(double)onepagelimit);
		this.bottomlimit = 5;
		this.pstartno = pstartno;
		this.current = (int) (Math.ceil((pstartno+1)/(double)onepagelimit));
		this.start = ((int) (Math.floor(this.current-1)/(double)bottomlimit))*bottomlimit + 1;
		this.end = this.start + bottomlimit - 1;
		if( pagetotal < end ) {
			this.end = pagetotal;
		}
	}
}
