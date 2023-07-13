package com.vandelay.app.infra.controller;

import com.vandelay.app.infra.dto.CodeDTO;
import com.vandelay.app.infra.dto.IngDTO;
import com.vandelay.app.infra.service.IngService;
import com.vandelay.app.infra.vo.IngVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@RequiredArgsConstructor
@Controller
public class IngController {
    private final IngService ingService;

    @RequestMapping("/ingList/list")
    public String selectList(@ModelAttribute("vo") IngVo vo, Model model){

        vo.setShKey(vo.getShKey() == null ? "" : vo.getShKey());
        vo.setOptCodeName(vo.getOptCodeName() == null ? "" : vo.getOptCodeName());
        vo.setParamsPaging(ingService.selectOneCount(vo));

        if(vo.getTotalRows() > 0) {

            List<IngDTO> list = ingService.selectList(vo);
            model.addAttribute("list", list);

        } else {
//			by pass
        }
        return "admin/infra/prj_1/ing/ingList";
    }

}
