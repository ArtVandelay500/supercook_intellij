package com.vandelay.app.infra.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.springframework.web.multipart.MultipartFile;

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
    private String recipeServing;
    private String recipeLevel;
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
    private MultipartFile[] uploadImg;
    private Integer uploadImgType;
    private Integer uploadImgMaxNumber;
    private String[] uploadImgDeleteSeq;
    private String[] uploadImgDeletePathFile;



    //RECIPE IMG DTO
    //RECIPE IMG DTO
    private String tableName;
    private Integer type;
    private Integer defaultNy;
    private Integer sort;
    private String path;
    private String originalName;
    private String uuidName;
    private String ext;
    private long size;
    private String pseq;
    //RECIPE IMG DTO
    //RECIPE IMG DTO



}//END OF RECIPE DTO
