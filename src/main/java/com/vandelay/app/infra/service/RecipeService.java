package com.vandelay.app.infra.service;

import com.vandelay.app.infra.dto.CodeDTO;
import com.vandelay.app.infra.dto.RecipeDTO;
import com.vandelay.app.infra.repository.RecipeRepository;
import com.vandelay.app.infra.vo.RecipeVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
@RequiredArgsConstructor
public class RecipeService {
    private final RecipeRepository recipeRepository;

    public int selectOneCount(RecipeVo vo) {
        return recipeRepository.selectOneCount(vo);
    }

    public List<CodeDTO> selectList(RecipeVo vo) {
        return recipeRepository.selectList(vo);
    }

    public RecipeDTO selectOne(RecipeVo vo) {
        return recipeRepository.selectOne(vo);
    }
    public int insert(RecipeDTO dto){
        recipeRepository.insert(dto);
        System.out.println("레시피 seq는:  " + dto.getSeq());

        String[] ingredientSeqArray = dto.getIngredient_seqArray();
        String[] ingredientAmountArray = dto.getIngredientAmountArray(); // Assuming you have a method to get this array
//        재료 넣기
        for (int i = 0; i < ingredientSeqArray.length; i++) {
            String item = ingredientSeqArray[i];
            String ingredientAmount = ingredientAmountArray[i];

            System.out.println("아이템은: " + item);
            System.out.println("수량은: " + ingredientAmount);

            dto.setSeq(dto.getSeq());

            // Assuming you have a method to set ingredientAmount in your DTO
            dto.setIngredient_seq(item);
            dto.setIngredientAmount(ingredientAmount);

            recipeRepository.insertIng(dto);
        }

        return 1;

    }


    /**
     *
     * @param dto 레시피 dto
     * @return dummy return
     */
    public int update(RecipeDTO dto) {
        recipeRepository.update(dto);
        recipeRepository.deleteUpdate(dto);

        String[] ingredientSeqArray = dto.getIngredient_seqArray();
        String[] ingredientAmountArray = dto.getIngredientAmountArray(); // Assuming you have a method to get this array

        for (int i = 0; i < ingredientSeqArray.length; i++) {
            String item = ingredientSeqArray[i];
            String ingredientAmount = ingredientAmountArray[i];

            System.out.println("아이템은: " + item);
            System.out.println("수량은: " + ingredientAmount);

            dto.setIngredient_seq(item);
            dto.setSeq(dto.getSeq());

            // Assuming you have a method to set ingredientAmount in your DTO
            dto.setIngredientAmount(ingredientAmount);

            recipeRepository.insertIng(dto);
        }


        return 1;
    }

    public int delete(RecipeVo vo) {
        return recipeRepository.delete(vo);
    }

    public List<RecipeDTO> selectIngList(RecipeDTO dto) {
        return recipeRepository.selectIngList(dto);
    }


//    public void insertIng(String[] ingArray) {
//        // Your logic to handle the array in the service method
//        for (String item : ingArray) {
//            recipeRepository.insertIng(item);
//            // Perform any other operations on the array elements
//        }
//    }





}//end of the service
