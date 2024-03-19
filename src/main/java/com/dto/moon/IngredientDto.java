package com.dto.moon;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class IngredientDto {
	private int ingredient_id;
	private int recipe_id;
	private String ingredient_name;
	private String ingredient_amount;
}
