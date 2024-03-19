package com.company.util;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import com.dto.moon.RecipeVoDto;
import com.service.moon.RecipeService;

@Component
public class CrawlingScheduler {
	
	@Autowired
	CrawlingReset crawlingReset; 
	
	@Autowired
	CrawlingRecipe crawlingRecipe;
	
	@Scheduled(cron = "0 0 0 * * *") // 매일 자정에 실행
//	@Scheduled(cron = "0 0/1 * * * *")
//	@Scheduled(cron = "0 0 9 * * ?")
//	@Scheduled(cron = "0 33 21 * * ?")
	public void CrawlingSchedule() {
		//db 삭제
		crawlingReset.Crawlingreset();
		//웹 크롤링해서 db 저장
		RecipeVoDto recipeVoDto = new RecipeVoDto();
		crawlingRecipe.Crawling(recipeVoDto);
	}
	
	
}
