package com.vandelay.app.infra.service;

import com.vandelay.app.infra.dto.CodeDTO;
import com.vandelay.app.infra.repository.CodeRepository;
import com.vandelay.app.infra.vo.CodeVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class CodeService {
    private final CodeRepository codeRepository;

    public List<CodeDTO> selectList(CodeVo vo) {
        return codeRepository.selectList(vo);
    }

    public CodeDTO selectOne(CodeVo vo) {
        return codeRepository.selectOne(vo);
    }

    public int update(CodeDTO dto) {
         return codeRepository.update(dto);
    }

    public int insert(CodeDTO dto) {
        return codeRepository.insert(dto);
    }

    public int delete(CodeVo vo) { return codeRepository.delete(vo);}

    public int selectOneCount(CodeVo vo){ return codeRepository.selectOneCount(vo);};
}
