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
//        재료 넣기
        for(String item:dto.getIngredient_seqArray()){
            System.out.println("아이템은: " + item);
            dto.setIngredient_seq(item);
            dto.setSeq(dto.getSeq());
            recipeRepository.insertIng(dto);
        }

        return 1;

    }



    public int update(RecipeDTO dto) {
        return recipeRepository.update(dto);
    }

    public int delete(RecipeVo vo) {
        return recipeRepository.delete(vo);
    }



//    public void insertIng(String[] ingArray) {
//        // Your logic to handle the array in the service method
//        for (String item : ingArray) {
//            recipeRepository.insertIng(item);
//            // Perform any other operations on the array elements
//        }
//    }





}//end of the service
