package com.vandelay.app.infra.controller;

import com.vandelay.app.infra.dto.CodeGroupDTO;
import com.vandelay.app.infra.service.CodeGroupService;
import com.vandelay.app.infra.vo.CodeGroupVo;
import com.vandelay.app.infra.vo.CodeVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequiredArgsConstructor
public class CodeGroupController {
    private final CodeGroupService codeGroupService;


    @RequestMapping("/codeGroupList/list")
    public String selectList(@ModelAttribute("vo")CodeGroupVo vo, Model model){
        /*if the searchInput is empty we set "x"*/
//        vo.setShKey(vo.getShKey() == null ? "x" : vo.getShKey());
        /*if the searchInput is empty we set "x"*/

        List<CodeGroupDTO> codeGroupDTOList = codeGroupService.selectList(vo);
        model.addAttribute("list",codeGroupDTOList);


        return "admin/infra/prj_1/codegroup/codeGroupList";
    }

    @RequestMapping("/codeGroupForm")
    public String codeGroupForm(CodeGroupVo vo, Model model){
        CodeGroupDTO codeGroupDTO =  codeGroupService.selectOne(vo);
        model.addAttribute("item",codeGroupDTO);
        return "admin/infra/prj_1/codegroup/codeGroupForm";
    }






}
