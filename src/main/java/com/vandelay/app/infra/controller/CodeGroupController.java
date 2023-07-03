package com.vandelay.app.infra.controller;

import com.vandelay.app.infra.dto.CodeGroupDTO;
import com.vandelay.app.infra.service.CodeGroupService;
import com.vandelay.app.infra.vo.CodeGroupVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller

@RequiredArgsConstructor
public class CodeGroupController {
    private final CodeGroupService codeGroupService;
    @RequestMapping("/codeGroupList/list")
    public String selectList(@ModelAttribute("vo") CodeGroupVo vo, Model model){

        System.out.println(vo.getOptCodeName());
        System.out.println(vo.getOptDelNy());

        vo.setShKey(vo.getShKey() == null ? "조리법" : vo.getShKey());

        List<CodeGroupDTO> codeGroupDTOList = codeGroupService.selectList(vo);
        model.addAttribute("list",codeGroupDTOList);
/*        model.addAttribute("vo",vo);*/
        System.out.println(vo.getShKey());
        return "admin/infra/codegroup/codeGroupList";
    }


    @RequestMapping("/codeGroupForm")
    public String codeGroupForm(CodeGroupVo vo, Model model){
        CodeGroupDTO codeGroupDTO = codeGroupService.selectOne(vo);
        model.addAttribute("item",codeGroupDTO);
        return "admin/infra/codegroup/codeGroupForm";
    }
    @RequestMapping("/codeGroupForm/update")
    public String codeGroupUpdate(CodeGroupDTO dto){
        codeGroupService.update(dto);
        System.out.println();
        return "redirect:/codeGroupList/list";
    }

    @RequestMapping("/codeGroupForm/insert")
    public String codeGroupInsert(CodeGroupDTO dto){
        codeGroupService.insert(dto);
        return "redirect:/codeGroupList/list";
    }


}