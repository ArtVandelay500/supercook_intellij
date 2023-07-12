package com.vandelay.app.infra.controller;

import com.vandelay.app.infra.dto.IngGroupDTO;
import com.vandelay.app.infra.service.IngGroupService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequiredArgsConstructor
public class IngGroupController {
    private final IngGroupService ingGroupService;

    @RequestMapping("/ingGroupList/list")
    public String selectList(Model model){
        List<IngGroupDTO> ingGroupDTOList = ingGroupService.selectList();
        model.addAttribute("list", ingGroupDTOList);
        return "admin/infra/prj_1/inggroup/ingGroupList";
    }
}
