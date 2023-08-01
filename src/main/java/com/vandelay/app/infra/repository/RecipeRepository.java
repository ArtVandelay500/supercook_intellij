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

    /**
     * @param vo: pagination values and #{shKey}
     * @return: Complete list from 'recipe' Table
     */
    public List<CodeDTO> selectList(RecipeVo vo) {
        return sqlSession.selectList("Recipe.selectList", vo);
    }

    /**
     * @param vo: vo from recipeList/list (pagination-related)
     * @return: number of rows from the data
     */
    public int selectOneCount(RecipeVo vo) {
        return sqlSession.selectOne("Recipe.selectOneCount", vo);
    }

    /**
     * @param vo: recipe's seq
     * @return: a set of data matching with the seq
     */
    public RecipeDTO selectOne(RecipeVo vo) {
        return sqlSession.selectOne("Recipe.selectOne", vo);
    }

    /**
     * @param dto: a set of data from 'recipeForm'
     * @return: This not only updates 'recipe' table, but also those of 'recipeIngredient 'and 'uploadList'
     * @info: From 'RecipeService', already called functions of 'delete' and 'insert' of new set of data from 'recipeIngredient' and 'uploadList'
     */
    public int update(RecipeDTO dto) {
        return sqlSession.update("Recipe.update", dto);
    }





    public List<RecipeDTO> selectIngList(RecipeDTO dto) {
        return sqlSession.selectList("Recipe.selectIngList",dto);
    }




    public List<UploadDTO> selectListUpload(RecipeDTO dto) {
        return sqlSession.selectList("Recipe.selectListUpload",dto);
    }

    /**
     * @param dto: data from 'recipeForm'
     * @return: INSERT INTO following tables: recipe/recipeIngredient/uploadList
     */
    public int insert(RecipeDTO dto) {
        return sqlSession.insert("Recipe.insert", dto);
    }
    public int insertIng(RecipeDTO dto) {
        { return sqlSession.insert("Recipe.insertIng",dto);}
    }
    public int insertUploaded(RecipeDTO dto) {
        return sqlSession.insert("Recipe.insertUploaded",dto);
    }


    /**
     *
     * @param dto,vo: deleting from the following: recipe/recipeIngredient/uploadList
     * @return delete
     */
    public int deleteUpdate(RecipeDTO dto){
        return sqlSession.delete("Recipe.deleteList",dto);
    }
    public int delete(RecipeDTO dto) {
        sqlSession.delete("Recipe.deleteList",dto);
        return sqlSession.delete("Recipe.delete", dto);
    }

    /**
     * @param dto: recipe seq (uploadList's pseq)
     * @return: DELETE FROM uploadList WHERE pseq = #{seq}
     */
    public int deleteUpload(RecipeDTO dto) {
        return sqlSession.delete("Recipe.deleteUpload",dto);
    }
}