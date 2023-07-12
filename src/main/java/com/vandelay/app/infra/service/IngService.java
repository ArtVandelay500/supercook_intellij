package com.vandelay.app.infra.service;

import com.vandelay.app.infra.dto.IngDTO;
import com.vandelay.app.infra.repository.IngRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class IngService {
    private final IngRepository ingRepository;
    public List<IngDTO> selectList() {
        return ingRepository.selectList();
    }
}
