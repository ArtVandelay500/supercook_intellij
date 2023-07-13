package com.vandelay.app.infra.service;

import com.vandelay.app.infra.dto.IngDTO;
import com.vandelay.app.infra.repository.IngRepository;
import com.vandelay.app.infra.vo.IngVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class IngService {
    private final IngRepository ingRepository;
    public List<IngDTO> selectList(IngVo vo) {
        return ingRepository.selectList(vo);
    }





    public int selectOneCount(IngVo vo) { return ingRepository.selectOneCount(vo);
    }


}
