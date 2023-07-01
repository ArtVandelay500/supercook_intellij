package com.vandelay.app.infra.controller;

import com.vandelay.app.infra.dto.CodeGroupDTO;
import com.vandelay.app.infra.service.CodeGroupService;
import lombok.RequiredArgsConstructor;
import org.apache.logging.log4j.LogManager;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/codeGroupList")
@RequiredArgsConstructor
public class CodeGroupController {
    private final CodeGroupService codeGroupService;
    @GetMapping("/list")
    public String selectList(Model model){
        List<CodeGroupDTO> codeGroupDTOList = codeGroupService.selectList();
        model.addAttribute("list",codeGroupDTOList);
        return "codeGroupList";
    }

}