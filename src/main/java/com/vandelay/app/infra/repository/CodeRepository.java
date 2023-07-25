package com.vandelay.app.infra.repository;


import com.vandelay.app.infra.dto.CodeDTO;
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
     * @param vo: vo from recipeForm input "shKeyCode"
     * @return: returns a set of data matches with the given 'shKeyCode' to code name
     */
    public List<CodeDTO> selectOneShKeyCode(RecipeVo vo) {
    return sqlSession.selectOne("Code.selectOneShKeyCode",vo);
}
}

