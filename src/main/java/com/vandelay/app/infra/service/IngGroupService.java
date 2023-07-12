package com.vandelay.app.infra.service;

import com.vandelay.app.infra.dto.IngGroupDTO;
import com.vandelay.app.infra.repository.IngGroupRepository;
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
}
