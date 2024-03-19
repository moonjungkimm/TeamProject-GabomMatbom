package com.dto.moon;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class RecipeVoDto {
	private int recipe_id;
	private String title;
	private String servings;
	private String cooking_time;
	private String difficulty;
	private String img_url;
	private int ingredient_id;
	private String ingredient_name;
	private String ingredient_amount;
	private int step_id;
	private String instruction;
}
