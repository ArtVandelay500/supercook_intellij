package com.vandelay.app.infra.repository;

import com.vandelay.app.infra.dto.CodeDTO;
import com.vandelay.app.infra.dto.RecipeDTO;
import com.vandelay.app.infra.dto.UploadDTO;
import com.vandelay.app.infra.vo.RecipeVo;
import lombok.RequiredArgsConstructor;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
@RequiredArgsConstructor
public class RecipeRepository {
    private final SqlSessionTemplate sqlSession;

    public List<CodeDTO> selectList(RecipeVo vo) {
        return sqlSession.selectList("Recipe.selectList", vo);
    }

    public int selectOneCount(RecipeVo vo) {
        return sqlSession.selectOne("Recipe.selectOneCount", vo);
    }

    public RecipeDTO selectOne(RecipeVo vo) {
        return sqlSession.selectOne("Recipe.selectOne", vo);
    }

    public int insert(RecipeDTO dto) {
        return sqlSession.insert("Recipe.insert", dto);
    }

    public int update(RecipeDTO dto) {
        return sqlSession.update("Recipe.update", dto);
    }

    public int delete(RecipeVo vo) {
        sqlSession.delete("Recipe.deleteList",vo);
        return sqlSession.delete("Recipe.delete", vo);
    }

    public int deleteUpdate(RecipeDTO dto){
        return sqlSession.delete("Recipe.deleteList",dto);
    }


    public int insertIng(RecipeDTO dto) {
         { return sqlSession.insert("Recipe.insertIng",dto);}
    }

    public List<RecipeDTO> selectIngList(RecipeDTO dto) {
        return sqlSession.selectList("Recipe.selectIngList",dto);
    }


    public int insertUploaded(RecipeDTO dto) {
        return sqlSession.insert("Recipe.insertUploaded",dto);
    }

    public List<UploadDTO> selectListUpload(RecipeDTO dto) {
        return sqlSession.selectList("Recipe.selectListUpload",dto);

    }
}