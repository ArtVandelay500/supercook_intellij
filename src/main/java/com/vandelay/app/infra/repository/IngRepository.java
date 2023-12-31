package com.vandelay.app.infra.repository;

import com.vandelay.app.infra.dto.IngDTO;
import com.vandelay.app.infra.vo.IngVo;
import com.vandelay.app.infra.vo.RecipeVo;
import lombok.RequiredArgsConstructor;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@RequiredArgsConstructor
public class IngRepository {
    private final SqlSessionTemplate sqlSession;
    //LIST W/ PAGINATION
    public List<IngDTO> selectList(IngVo vo) {
        return sqlSession.selectList("Ing.selectList",vo);
    }
    public int selectOneCount(IngVo vo) {
        return sqlSession.selectOne("Ing.selectOneCount",vo);
    }
    //LIST W/ PAGINATION

    //FORM W/ ONE seq
    public IngDTO selectOne(IngVo vo) {return sqlSession.selectOne("Ing.selectOne",vo);}
    //FORM W/ ONE seq

    //UPDATE
    public int update(IngDTO dto){return sqlSession.update("Ing.update",dto);}
    //UPDATE

    //DELETE
    public int delete(IngVo vo){return sqlSession.delete("Ing.delete",vo);}

    public int insert(IngDTO dto) {return sqlSession.insert("Ing.insert",dto);
    }


    public List<IngDTO> selectOneShKey(RecipeVo vo) {return sqlSession.selectList("Ing.selectOneShKey",vo);}

    public int selectOneCheckIng(IngVo vo) {
        return sqlSession.selectOne("Ing.ingCheck",vo);
    }
}//END OF REPOSITORY
