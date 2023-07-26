package com.vandelay.app.infra.repository;


import com.vandelay.app.infra.dto.CodeDTO;
import com.vandelay.app.infra.dto.RecipeDTO;
import com.vandelay.app.infra.vo.CodeVo;
import com.vandelay.app.infra.vo.RecipeVo;
import lombok.RequiredArgsConstructor;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@RequiredArgsConstructor
public class CodeRepository {
    private final SqlSessionTemplate sqlSession;

    public List<CodeDTO> selectList(CodeVo vo) {
        return sqlSession.selectList("Code.selectList",vo);
    }


    public CodeDTO selectOne(CodeVo vo) {
        return sqlSession.selectOne("Code.selectOne",vo);
    }

    public int update(CodeDTO dto) {
        return sqlSession.update("Code.update",dto);
    }

    public int insert(CodeDTO dto) {
        return sqlSession.insert("Code.insert",dto);
    }

    public int delete(CodeVo vo) { return sqlSession.delete("Code.delete",vo);}

    public int selectOneCount(CodeVo vo){ return sqlSession.selectOne("Code.selectOneCount", vo); }

//    LIST CODE VO
    public List<CodeDTO> selectListCachedCodeArrayList(){
        return sqlSession.selectList("Code.selectListCachedCodeArrayList",null);
    }
//    LIST CODE VO

    /**
     * @param vo: vo from recipeForm input "shKey" for themeCodes from codeList
     * @return: returns a set of data matches with the given 'shKeyCode' to code name
     */
    public List<CodeDTO> selectOneShKeyTheme(RecipeVo vo) {
        return sqlSession.selectOne("Code.selectOneShKeyTheme",vo);
}

    /**
     *
     * @param vo: vo from recipeForm input "shKey" for toolCodes from codeList
     * @return: returns a set of data that are only tools
     */
    public List<CodeDTO> selectOneShKeyTool(RecipeVo vo) {
        return sqlSession.selectOne("Code.selectOneShKeyTool",vo);
    }

    /**
     * IN recipeForm
     * @return : SELECT codes WHERE codegroup_seq = 음식종류
     */
    public List<CodeDTO> selectType() {
        return sqlSession.selectList("Code.selectType");
    }

    /**
     * IN recipeForm
     * @return : SELECT codes WHERE codegroup_seq = 조리법
     */
    public List<CodeDTO> selectMethod() {
        return sqlSession.selectList("Code.selectMethod");
    }
}

