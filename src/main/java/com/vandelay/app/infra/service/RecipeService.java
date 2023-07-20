package com.vandelay.app.infra.service;

import com.vandelay.app.infra.dto.CodeDTO;
import com.vandelay.app.infra.dto.RecipeDTO;
import com.vandelay.app.infra.repository.RecipeRepository;
import com.vandelay.app.infra.vo.RecipeVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

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
        return recipeRepository.insert(dto);
    }

    public int update(RecipeDTO dto) {
        return recipeRepository.update(dto);
    }

    public int delete(RecipeVo vo) {
        return recipeRepository.delete(vo);
    }
}
