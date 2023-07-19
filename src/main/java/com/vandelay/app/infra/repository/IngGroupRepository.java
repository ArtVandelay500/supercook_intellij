package com.vandelay.app.infra.repository;

import com.vandelay.app.infra.dto.IngGroupDTO;
import com.vandelay.app.infra.vo.IngGroupVo;
import com.vandelay.app.infra.vo.IngVo;
import lombok.RequiredArgsConstructor;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@RequiredArgsConstructor
public class IngGroupRepository {
    private final SqlSessionTemplate sqlSession;

    //SELECT OPTION
    //SELECT OPTION
    public List<IngGroupDTO> selectLvlOne(IngVo vo) {return sqlSession.selectList("IngGroup.selectLvlOne",vo);}
    public List<IngGroupDTO> selectLvlTwo(IngVo vo) {return sqlSession.selectList("IngGroup.selectLvlTwo",vo);}
    public List<IngGroupDTO> selectLvlTwoForm(IngVo vo) {return sqlSession.selectList("IngGroup.selectLvlTwoForm",vo);}
    public List<IngGroupDTO> selectLvlTwoFormUpdate(IngVo vo) {return sqlSession.selectList("IngGroup.selectLvlTwoFormUpdate",vo);}
    //SELECT OPTION
    //SELECT OPTION

    public List<IngGroupDTO> selectList(IngGroupVo vo) {
        return sqlSession.selectList("IngGroup.selectList",vo);
    }
    public int selectOneCount(IngGroupVo vo) {
        return sqlSession.selectOne("IngGroup.selectOneCount",vo);
    }

    public IngGroupDTO selectOne(IngGroupVo vo) {
        return sqlSession.selectOne("IngGroup.selectOne",vo);
    }

    public int update(IngGroupDTO dto) {
        return sqlSession.update("IngGroup.update",dto);
    }

    public int insert(IngGroupVo vo) {
    }

    public int delete(IngGroupVo vo) {
    }
}
