package com.vandelay.app.infra.service;

import com.vandelay.app.infra.dto.CodeDTO;
import com.vandelay.app.infra.dto.CodeGroupDTO;
import com.vandelay.app.infra.dto.IngGroupDTO;
import com.vandelay.app.infra.repository.CodeGroupRepository;
import com.vandelay.app.infra.vo.CodeGroupVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import javax.annotation.PostConstruct;
import java.util.ArrayList;
import java.util.List;

@Service
@RequiredArgsConstructor
public class CodeGroupService {
    private final CodeGroupRepository codeGroupRepository;

    public List<CodeGroupDTO> selectList(CodeGroupVo vo) {
        return codeGroupRepository.selectList(vo);
    }

    public CodeGroupDTO selectOne(CodeGroupVo vo) {
        return codeGroupRepository.selectOne(vo);
    }

    public int update(CodeGroupDTO dto) {
        return codeGroupRepository.update(dto);
    }

    public int insert(CodeGroupDTO dto) {
        return codeGroupRepository.insert(dto);
    }

    public int delete(CodeGroupDTO dto) {
        return codeGroupRepository.delete(dto);
    }

//    getting int for total number of rows of data
//    getting int for total number of rows of data
//    getting int for total number of rows of data
    public int selectOneCount(CodeGroupVo vo) {
        return codeGroupRepository.selectOneCount(vo);
    }

    public List<IngGroupDTO> selectOpt(CodeGroupVo vo) {
        return codeGroupRepository.selectOpt(vo);
    }









}
