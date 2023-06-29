package com.vandelay.app.infra.repository;

import com.vandelay.app.infra.dto.CodeGroupDTO;
import lombok.RequiredArgsConstructor;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository
@RequiredArgsConstructor
public class CodeGroupDao {
    private final SqlSessionTemplate sqlsession;


    public List<CodeGroupDTO> selectList(){

    }

}
