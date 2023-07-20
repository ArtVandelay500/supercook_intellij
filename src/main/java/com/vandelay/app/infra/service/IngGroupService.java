package com.vandelay.app.infra.service;

import com.vandelay.app.infra.dto.IngGroupDTO;
import com.vandelay.app.infra.repository.IngGroupRepository;
import com.vandelay.app.infra.vo.IngGroupVo;
import com.vandelay.app.infra.vo.IngVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class IngGroupService {
    private final IngGroupRepository ingGroupRepository;
    //SELECT OPTION
    //SELECT OPTION
    //SELECT OPTION
    public List<IngGroupDTO> selectLvlOne(IngVo vo){return ingGroupRepository.selectLvlOne(vo);}
    public List<IngGroupDTO> selectLvlTwo(IngVo vo){return ingGroupRepository.selectLvlTwo(vo);}
    public List<IngGroupDTO> selectLvlTwoForm(IngVo vo){return ingGroupRepository.selectLvlTwoForm(vo);}
    public List<IngGroupDTO> selectLvlTwoFormUpdate(IngVo vo){return ingGroupRepository.selectLvlTwoFormUpdate(vo);}
    //SELECT OPTION
    //SELECT OPTION
    //SELECT OPTION
    public List<IngGroupDTO> selectList(IngGroupVo vo) {
        return ingGroupRepository.selectList(vo);
    }
    public int selectOneCount(IngGroupVo vo) {
        return ingGroupRepository.selectOneCount(vo);
    }

    public IngGroupDTO selectOne(IngGroupVo vo) {
        return ingGroupRepository.selectOne(vo);
    }

    public int update(IngGroupDTO dto) {
        return ingGroupRepository.update(dto);
    }

    public int insert(IngGroupDTO dto) {
        return ingGroupRepository.insert(dto);
    }

    public int delete(IngGroupVo vo) {
        return ingGroupRepository.delete(vo);
    }
}
