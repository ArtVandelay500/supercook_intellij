package com.vandelay.app.infra.service;

import com.vandelay.app.infra.dto.IngDTO;
import com.vandelay.app.infra.repository.IngRepository;
import com.vandelay.app.infra.vo.IngVo;
import com.vandelay.app.infra.vo.RecipeVo;
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

    //FORM W/ seq
    public IngDTO selectOne(IngVo vo) {return ingRepository.selectOne(vo);}
    //FORM W/ seq

    //UPDATE
    public int update(IngDTO dto){return ingRepository.update(dto);}
    //UPDATE

    //DELETE
    public int delete(IngVo vo){return ingRepository.delete(vo);}

    public int insert(IngDTO dto) {
        return ingRepository.insert(dto);
    }

    public List<IngDTO> selectOneShKey(RecipeVo vo) {return ingRepository.selectOneShKey(vo);}
}
