package com.vandelay.app.infra.repository;

import com.vandelay.app.infra.dto.CodeDTO;
import com.vandelay.app.infra.dto.RecipeDTO;
import com.vandelay.app.infra.vo.RecipeVo;
import lombok.RequiredArgsConstructor;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@RequiredArgsConstructor
public class RecipeRepository {
    private final SqlSessionTemplate sqlSession;

    public List<CodeDTO> selectList(RecipeVo vo) {
        return sqlSession.selectList("Recipe.selectList",vo);
    }

    public int selectOneCount(RecipeVo vo) {
        return sqlSession.selectOne("Recipe.selectOneCount",vo);
    }

    public RecipeDTO selectOne(RecipeVo vo) {
        return sqlSession.selectOne("Recipe.selectOne",vo);
    }
    public int insert(RecipeDTO dto){
        return sqlSession.insert("Recipe.insert",dto);
    }

    public int update(RecipeDTO dto) {
        return sqlSession.update("Recipe.update",dto);
    }

    public int delete(RecipeVo vo) {
        return sqlSession.delete("Recipe.delete",vo);
    }
}
