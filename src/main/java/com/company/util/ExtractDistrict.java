package com.company.util;

import org.springframework.stereotype.Component;


@Component
public class ExtractDistrict {
		
		public String findDistrict(String address) {
			
			int firstSpaceIndex = address.indexOf(" ");
			String realAddress = "";
			
			if(firstSpaceIndex != -1) {
				int secondSpaceIndex = address.indexOf(" ", firstSpaceIndex + 1);
				realAddress = address.substring(firstSpaceIndex+1, secondSpaceIndex);
			}
			System.out.println("...................."  + realAddress);
			return realAddress;
		}
		
}
