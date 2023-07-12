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

    public int update(MemberDTO dto) {
        return sqlSession.update("Member.update",dto);
    }

    public int insert(MemberDTO dto) {
        return sqlSession.insert("Member.insert",dto);
    }

    public int delete(MemberDTO dto) {
        return sqlSession.delete("Member.delete",dto);
    }

    public MemberDTO login(MemberDTO dto) {
        return sqlSession.selectOne("Member.login",dto);
    }
}
