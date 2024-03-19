package com.service.moon;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.moon.RecipeDao;
import com.dto.moon.RecipeDto;
import com.dto.moon.RecipeVoDto;
import com.dto.moon.StepDto;

@Service
public class RecipeServiceImpl implements RecipeService{
	@Autowired
	RecipeDao dao;

	@Override
	public void deleteRecipe() {
		dao.deleteRecipe();
	}

	@Override
	public void resetRecipe() {
		dao.resetRecipe();
	}
	
	@Override
	public int insertRecipe(RecipeVoDto recipeVoDto) {
		return dao.insertRecipe(recipeVoDto);
	}

	@Override
	public int insertRecipeStep(RecipeVoDto recipeVoDto) {
		return dao.insertRecipeStep(recipeVoDto);
	}

	@Override
	public int insertRecipeIngredient(RecipeVoDto recipeVoDto) {
		return dao.insertRecipeIngredient(recipeVoDto);
	}

	@Override
	public List<RecipeVoDto> recipeAll() {
		return dao.recipeAll();
	}

	@Override
	public RecipeVoDto recipeDetail(RecipeVoDto recipeVoDto) {
		return dao.recipeDetail(recipeVoDto);
	}
	
	@Override
	public List<RecipeVoDto> recipeStep(RecipeVoDto recipeVoDto) {
		return dao.recipeStep(recipeVoDto);
	}

	@Override
	public List<RecipeVoDto> recipeIngredient(RecipeVoDto recipeVoDto) {
		return dao.recipeIngredient(recipeVoDto);
	}

	

}
