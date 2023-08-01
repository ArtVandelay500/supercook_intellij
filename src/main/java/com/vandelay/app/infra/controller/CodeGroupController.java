package com.vandelay.app.infra.controller;

import com.vandelay.app.infra.dto.CodeDTO;
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

//MAIN SELECTLIST FUNCTION
//MAIN SELECTLIST FUNCTION
//MAIN SELECTLIST FUNCTION
//MAIN SELECTLIST FUNCTION
//MAIN SELECTLIST FUNCTION
//MAIN SELECTLIST FUNCTION
    @RequestMapping("/codeGroupList/list")
    public String selectList(@ModelAttribute("vo")CodeGroupVo vo, Model model){
        vo.setShKey(vo.getShKey() == null ? "" : vo.getShKey());
        vo.setParamsPaging(codeGroupService.selectOneCount(vo));

        if(vo.getTotalRows() > 0) {
            List<CodeGroupDTO> list = codeGroupService.selectList(vo);
            model.addAttribute("list", list);
//			model.addAttribute("vo", vo);
        } else {
//			by pass
        }

        return "admin/infra/prj_1/codegroup/codeGroupList";
    }

    @RequestMapping("/codeGroupForm")
    public String codeGroupForm(CodeGroupVo vo, Model model){
        CodeGroupDTO codeGroupDTO =  codeGroupService.selectOne(vo);
        model.addAttribute("item",codeGroupDTO);
        return "admin/infra/prj_1/codegroup/codeGroupForm";
    }

    @RequestMapping("/codeGroupForm/update")
    public String codeGroupUpdate(CodeGroupDTO dto){
        codeGroupService.update(dto);
        return "redirect:/codeGroupList/list";
    }

    @RequestMapping("/codeGroupForm/insert")
    public String codeGroupInsert(CodeGroupDTO dto){
        codeGroupService.insert(dto);
        return "redirect:/codeGroupList/list";
    }

    @RequestMapping("/codeGroupForm/delete")
    public String codeGroupDelete(CodeGroupDTO dto){
        codeGroupService.delete(dto);
        return "redirect:/codeGroupList/list";
    }



}
