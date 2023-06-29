package com.vandelay.app.infra.codegroup.service;

import com.vandelay.app.infra.codegroup.dto.CodeGroupDTO;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class CodeGroupService {
    private final CodeGroupService codeGroupService;

    public List<CodeGroupDTO> selectList() {
        return codeGroupDao.selectList;
    }
}
