package com.vandelay.app.infra.service;

import com.vandelay.app.infra.repository.LikeRepository;
import com.vandelay.app.infra.vo.LikeVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class LikeService {
    private final LikeRepository likeRepository;

    public int findLike(LikeVo vo){
        return likeRepository.findLike(vo);
    }
    public int likeUp(LikeVo vo){
        return likeRepository.likeUp(vo);
    }
    public int likeDown(LikeVo vo){
        return likeRepository.likeDown(vo);
    }
}
