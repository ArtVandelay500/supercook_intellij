package com.vandelay.app.infra.service;

import com.vandelay.app.infra.dto.CodeGroupDTO;
import com.vandelay.app.infra.repository.CodeGroupRepository;
import com.vandelay.app.infra.vo.CodeGroupVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class CodeGroupService {
    private final CodeGroupRepository codeGroupRepository;

    public List<CodeGroupDTO> selectList(CodeGroupVo vo) {
        return codeGroupRepository.selectList(vo);
    }
}
