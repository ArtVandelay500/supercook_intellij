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

    @RequestMapping("/ingGroupList/list")
    public String selectList(IngGroupVo vo, Model model){
        vo.setShKey(vo.getShKey() == null ? "" : vo.getShKey());
        vo.setOptDelNy(vo.getOptDelNy() == null ? "" : vo.getOptDelNy());
        vo.setParamsPaging(ingGroupService.selectOneCount(vo));
        model.addAttribute("vo", vo);
        if(vo.getTotalRows() > 0) {
            List<IngGroupDTO> list = ingGroupService.selectList(vo);
            model.addAttribute("list", list);
        }else{

        }
        return "admin/infra/prj_1/inggroup/ingGroupList";
    }



    @ModelAttribute("ingGroup")
    public List<IngGroupDTO> ingGroupDTOList(@ModelAttribute("vo") IngVo vo){
        return ingGroupService.selectLvlOne(vo);
    }
}
