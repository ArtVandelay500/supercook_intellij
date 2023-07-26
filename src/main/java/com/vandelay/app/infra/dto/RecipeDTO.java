package com.vandelay.app.infra.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.lang.reflect.Array;

@Getter
@Setter
@ToString
public class RecipeDTO {
    private String seq;
    private String recipeName;
    private String recipeTitle;
    private String recipeUrl;
    private String recipeRating;
    private String recipePrepTime;
    private String recipeView;
    private String recipeSource;
    private String useNy;
    private String ingredient_seq;
    private String[] ingredient_seqArray;
    private String[] ingredientAmountArray;
    private String recipe_seq;
    private String name;
    private String ingredientAmount;
    private String ingredientType;
    private String recipeTheme;
    private String recipeTool;
    private String recipeMethod;
    private String recipeType;
    private String recipeIng;
    private String imgPath;
    private String imgUuid;
    private String imgName;
}
