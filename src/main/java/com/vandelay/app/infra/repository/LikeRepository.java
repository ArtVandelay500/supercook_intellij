package com.vandelay.app.infra.repository;

import com.vandelay.app.infra.vo.LikeVo;
import lombok.RequiredArgsConstructor;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository
@RequiredArgsConstructor
public class LikeRepository {
    private final SqlSessionTemplate sqlSession;

    public int findLike(LikeVo vo) {
        return sqlSession.selectOne("Like.findLike",vo);
    }
    public int likeUp(LikeVo vo){
        return sqlSession.insert("Like.likeUp",vo);
    }
    public int likeDown(LikeVo vo){
        return sqlSession.delete("Like.likeDown",vo);
    }
}
