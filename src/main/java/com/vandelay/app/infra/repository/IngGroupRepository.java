package com.vandelay.app.infra.repository;

import com.vandelay.app.infra.dto.IngGroupDTO;
import lombok.RequiredArgsConstructor;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@RequiredArgsConstructor
public class IngGroupRepository {
    private final SqlSessionTemplate sqlSession;
    public List<IngGroupDTO> selectList() {
        return sqlSession.selectList("IngGroup.selectList");

    }
}
