package com.vandelay.app.infra.repository;

import com.vandelay.app.infra.dto.MemberDTO;
import lombok.RequiredArgsConstructor;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@RequiredArgsConstructor
public class MemberRepository {
    private final SqlSessionTemplate sqlSession;

    public int save(MemberDTO dto) {
        return sqlSession.insert("Member.insert",dto);
    }

    public List<MemberDTO> selectList() {
        return sqlSession.selectList("Member.selectList");
    }

    public MemberDTO selectOne(MemberDTO dto) {
        return sqlSession.selectOne("Member.selectOne",dto);
    }
}
