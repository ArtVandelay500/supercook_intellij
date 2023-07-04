package com.vandelay.app.infra.repository;

import com.vandelay.app.infra.dto.CodeGroupDTO;
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
}
