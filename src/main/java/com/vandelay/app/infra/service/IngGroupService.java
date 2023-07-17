package com.vandelay.app.infra.service;

import com.vandelay.app.infra.dto.IngGroupDTO;
import com.vandelay.app.infra.repository.IngGroupRepository;
import com.vandelay.app.infra.vo.IngVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class IngGroupService {
    private final IngGroupRepository ingGroupRepository;
    public List<IngGroupDTO> selectList() {
        return ingGroupRepository.selectList();
    }

    public List<IngGroupDTO> selectLvlOne(IngVo vo){return ingGroupRepository.selectLvlOne(vo);}
    public List<IngGroupDTO> selectLvlTwo(IngVo vo){return ingGroupRepository.selectLvlTwo(vo);}
    public List<IngGroupDTO> selectLvlTwoForm(IngVo vo){return ingGroupRepository.selectLvlTwoForm(vo);}

}
