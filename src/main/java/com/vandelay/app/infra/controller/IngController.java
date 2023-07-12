package com.vandelay.app.infra.controller;

import com.vandelay.app.infra.dto.IngDTO;
import com.vandelay.app.infra.service.IngService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@RequiredArgsConstructor
@Controller
public class IngController {
    private final IngService ingService;

    @RequestMapping("/ingList/list")
    public String selectList(Model model){

        List<IngDTO> ingDTOList = ingService.selectList();
        model.addAttribute("list",ingDTOList);
        return "admin/infra/prj_1/ing/ingList";
    }

}
