package com.vandelay.app.infra.controller;

import com.vandelay.app.infra.dto.CodeGroupDTO;
import com.vandelay.app.infra.service.CodeGroupService;
import com.vandelay.app.infra.vo.CodeGroupVo;
import jdk.jfr.ContentType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/rest/codeGroup")
public class RestfulCodeGroupController {
    @Autowired
    CodeGroupService codeGroupService;

    @GetMapping("")
    public List<CodeGroupDTO> selectList(CodeGroupVo vo){
        List<CodeGroupDTO> list = codeGroupService.selectList(vo);
        return list;
    }

    @GetMapping("/{seq}")
    public CodeGroupDTO selectOne(@PathVariable String seq, CodeGroupVo vo){
        vo.setSeq(seq);
        CodeGroupDTO item = codeGroupService.selectOne(vo);
        return item;
    }
    @PostMapping(value = "" )
    public String insert(CodeGroupDTO dto) throws Exception{
        System.out.println("heyheyhey");
        codeGroupService.insert(dto);
        System.out.println(dto.getCodeName());
        System.out.println(dto.getDelNy());
        return dto.getSeq();
    }

//    @PatchMapping("/{seq}")
    @PutMapping("/{seq}")
    public void update(@PathVariable String seq, @RequestBody CodeGroupDTO dto){
        dto.setSeq(seq);
        codeGroupService.update(dto);
    }





}//END OF REST CONTROLLER
