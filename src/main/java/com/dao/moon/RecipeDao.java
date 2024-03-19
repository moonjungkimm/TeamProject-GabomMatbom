package com.dao.moon;

import java.util.List;
import java.util.Map;

import com.dao.MyDao;
import com.dto.moon.RecipeDto;
import com.dto.moon.RecipeVoDto;
import com.dto.moon.StepDto;

@MyDao
public interface RecipeDao {
	public void deleteRecipe();
	public void resetRecipe();
	
	public int insertRecipe(RecipeVoDto recipeVoDto);
	
	public int insertRecipeStep(RecipeVoDto recipeVoDto);
	
	public int insertRecipeIngredient(RecipeVoDto recipeVoDto);
	
	public List<RecipeVoDto> recipeAll();
	
	public RecipeVoDto recipeDetail(RecipeVoDto recipeVoDto);
	
	public List<RecipeVoDto> recipeStep(RecipeVoDto recipeVoDto);
	
	public List<RecipeVoDto> recipeIngredient(RecipeVoDto recipeVoDto);
	
}
