package com.vandelay.app.infra.repository;


import com.vandelay.app.infra.dto.CodeGroupDTO;
import lombok.RequiredArgsConstructor;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@RequiredArgsConstructor
public class CodeGroupRepository {
    private final SqlSessionTemplate sqlSession;

    public List<CodeGroupDTO> selectList() {
        return sqlSession.selectList("CodeGroup.selectList");
    }


}

