package com.vandelay.app.infra.repository;

import com.vandelay.app.infra.dto.IngDTO;
import com.vandelay.app.infra.vo.IngVo;
import lombok.RequiredArgsConstructor;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@RequiredArgsConstructor
public class IngRepository {
    private final SqlSessionTemplate sqlSession;
    public List<IngDTO> selectList(IngVo vo) {
        return sqlSession.selectList("Ing.selectList",vo);
    }

    public int selectOneCount(IngVo vo) {
        return sqlSession.selectOne("Ing.selectOneCount",vo);
    }


}
