package com.vandelay.app.infra.repository;

import com.vandelay.app.infra.dto.IngDTO;
import lombok.RequiredArgsConstructor;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@RequiredArgsConstructor
public class IngRepository {
    private final SqlSessionTemplate sqlSession;
    public List<IngDTO> selectList() {
        return sqlSession.selectList("Ing.selectList");
    }
}
