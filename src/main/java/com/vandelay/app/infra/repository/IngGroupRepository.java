package com.vandelay.app.infra.repository;

import com.vandelay.app.infra.dto.IngGroupDTO;
import com.vandelay.app.infra.vo.IngVo;
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

    public List<IngGroupDTO> selectLvlOne(IngVo vo) {return sqlSession.selectList("IngGroup.selectLvlOne",vo);}
    public List<IngGroupDTO> selectLvlTwo(IngVo vo) {return sqlSession.selectList("IngGroup.selectLvlTwo",vo);}
    public List<IngGroupDTO> selectLvlTwoForm(IngVo vo) {return sqlSession.selectList("IngGroup.selectLvlTwoForm",vo);}
}
