package com.company.util;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.service.moon.RecipeService;

@Component
public class CrawlingReset {
	
	@Autowired
	RecipeService service; 
	
	public void Crawlingreset() {
		service.deleteRecipe();
		service.resetRecipe();
	}
	
}
