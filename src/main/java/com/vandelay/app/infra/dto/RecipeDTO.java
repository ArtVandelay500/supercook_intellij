package com.vandelay.app.infra.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class RecipeDTO {
    private String seq;
    private String recipeName;
    private String recipeTitle;
    private String recipeUrl;
    private String recipeImg;
    private String recipeRating;
    private String recipePrepTime;
    private String recipeView;
    private String recipeSource;
    private String useNy;
    private String ingredient_seq;
}
