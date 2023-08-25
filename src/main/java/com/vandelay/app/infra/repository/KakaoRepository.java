package com.vandelay.app.infra.repository;

import com.vandelay.app.infra.dto.KakaoDTO;
import com.vandelay.app.infra.dto.MemberDTO;
import lombok.RequiredArgsConstructor;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@RequiredArgsConstructor
public class KakaoRepository {
    private final SqlSessionTemplate sqlSession;

    public int kakaoCheck(KakaoDTO dto){
        return sqlSession.selectOne("Kakao.checkKakao",dto);
    }

    public KakaoDTO selectKakao(KakaoDTO dto){
        return sqlSession.selectOne("Kakao.select",dto);
    }
    public int insert(KakaoDTO dto) {
        return sqlSession.insert("Kakao.insert",dto);
    }
}
