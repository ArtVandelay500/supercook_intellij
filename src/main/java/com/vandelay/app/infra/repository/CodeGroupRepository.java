package com.vandelay.app.infra.repository;

import com.vandelay.app.infra.dto.CodeDTO;
import com.vandelay.app.infra.dto.CodeGroupDTO;
import com.vandelay.app.infra.dto.IngGroupDTO;
import com.vandelay.app.infra.vo.CodeGroupVo;
import lombok.RequiredArgsConstructor;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@RequiredArgsConstructor
public class CodeGroupRepository {
    private final SqlSessionTemplate sqlSession;

    public List<CodeGroupDTO> selectList(CodeGroupVo vo) {
        return sqlSession.selectList("CodeGroup.selectList",vo);
    }

    public CodeGroupDTO selectOne(CodeGroupVo vo) {
        return sqlSession.selectOne("CodeGroup.selectOne",vo);
    }

    public int update(CodeGroupDTO dto) {
        return sqlSession.update("CodeGroup.update",dto);
    }


    public int insert(CodeGroupDTO dto) {
        return sqlSession.insert("CodeGroup.insert",dto);
    }


    public int delete(CodeGroupDTO dto) {
        return sqlSession.delete("CodeGroup.delete",dto);
    }

//    getting int for total number of rows of data
//    getting int for total number of rows of data
//    getting int for total number of rows of data
    public int selectOneCount(CodeGroupVo vo) {
        return sqlSession.selectOne("CodeGroup.selectOneCount",vo);
    }

    public List<IngGroupDTO> selectOpt(CodeGroupVo vo) {
        return sqlSession.selectList("CodeGroup.selectOpt",vo);
    }



}
