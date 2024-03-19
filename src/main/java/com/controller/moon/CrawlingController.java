package com.controller.moon;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.company.util.CrawlingScheduler;
import com.dto.moon.RecipeVoDto;
import com.service.moon.RecipeService;

@Controller
public class CrawlingController {
	
	
	@Autowired
	CrawlingScheduler crawlingScheduler;
	
	@Autowired
	RecipeService service;
	
	 @RequestMapping(value = "/recipeAll.moon", method = RequestMethod.GET)
     public String goCrawling(RecipeVoDto recipeVoDto, Model model) {
		 model.addAttribute("recipeAll", service.recipeAll());
		 System.out.println("....................." + service.recipeAll());	
		 return "recipe_all";
	 }

	 @RequestMapping(value = "/recipedetail.moon", method = RequestMethod.GET)
     public String recipeDetail(@RequestParam(value="recipe_id") int recipe_id, RecipeVoDto recipeVoDto, Model model) {
		 recipeVoDto.setRecipe_id(recipe_id);
		 model.addAttribute("recipeDetail", service.recipeDetail(recipeVoDto));
		 model.addAttribute("recipeSteps", service.recipeStep(recipeVoDto));
		 model.addAttribute("recipeIngredients", service.recipeIngredient(recipeVoDto));
		 System.out.println("........................" + service.recipeStep(recipeVoDto));
		 return "recipe_detail";
	 }
	 
	
}
