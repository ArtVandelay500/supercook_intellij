package com.vandelay.app.infra.controller;

import com.vandelay.app.infra.dto.IngDTO;
import com.vandelay.app.infra.dto.IngGroupDTO;
import com.vandelay.app.infra.service.IngGroupService;
import com.vandelay.app.infra.vo.IngGroupVo;
import com.vandelay.app.infra.vo.IngVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequiredArgsConstructor
public class IngGroupController {
    private final IngGroupService ingGroupService;

    @ModelAttribute("ingGroup")
    public List<IngGroupDTO> ingGroupDTOList(IngVo vo){
        return ingGroupService.selectLvlOne(vo);
    }
    @RequestMapping("/ingGroupList/list")
    public String selectList(@ModelAttribute("vo") IngGroupVo vo, Model model){
        vo.setShKey(vo.getShKey() == null ? "" : vo.getShKey());
        vo.setOptDelNy(vo.getOptDelNy() == null ? "" : vo.getOptDelNy());
        vo.setParamsPaging(ingGroupService.selectOneCount(vo));

        if(vo.getTotalRows() > 0) {
            List<IngGroupDTO> list = ingGroupService.selectList(vo);
            model.addAttribute("list", list);
        }else{

        }
        return "admin/infra/prj_1/inggroup/ingGroupList";
    }


    @RequestMapping("/ingGroupForm")
    public String ingGroupForm(IngGroupVo vo,Model model){
        IngGroupDTO ingGroupDTO = ingGroupService.selectOne(vo);
        model.addAttribute("item",ingGroupDTO);
        return "admin/infra/prj_1/inggroup/ingGroupForm";
    }

    @RequestMapping("/ingGroupForm/update")
    public String ingGroupFormUpdate(IngGroupDTO dto){
        ingGroupService.update(dto);
        return "redirect:/ingGroupList/list";
    }

    @RequestMapping("/ingGroupForm/insert")
    public String ingGroupFormInsert(IngGroupDTO dto){
        ingGroupService.insert(dto);
        return "redirect:/ingGroupList/list";
    }

    @RequestMapping("/ingGroupForm/delete")
    public String ingGroupFormDelete(IngGroupVo vo){
        ingGroupService.delete(vo);
        return "redirect:/ingGroupList/list";
    }


}
