package com.vandelay.app.infra.controller;


import com.vandelay.app.infra.dto.IngDTO;
import com.vandelay.app.infra.dto.IngGroupDTO;
import com.vandelay.app.infra.service.IngGroupService;
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
    private final IngGroupService ingGroupService;

    @ModelAttribute("ingGroup")
    public List<IngGroupDTO> ingGroupDTOList(@ModelAttribute("vo") IngVo vo){
        vo.setOptCatName(vo.getOptCatName() == null ? "" : vo.getOptCatName());
        return ingGroupService.selectLvlOne(vo);
    }
    @ModelAttribute("ingGroup2")
    public List<IngGroupDTO> ingGroupDTOList2(@ModelAttribute("vo") IngVo vo){
        vo.setOptCatName(vo.getOptCatName() == null ? "" : vo.getOptCatName());
        vo.setOptCatName2(vo.getOptCatName2() == null ? "" : vo.getOptCatName2());
        return ingGroupService.selectLvlTwo(vo);
    }
    @RequestMapping("/ingList/list")
    public String selectList(@ModelAttribute("vo") IngVo vo, Model model){

        vo.setShKey(vo.getShKey() == null ? "" : vo.getShKey());
        vo.setOptCatName(vo.getOptCatName() == null ? "" : vo.getOptCatName());
        vo.setParamsPaging(ingService.selectOneCount(vo));

        if(vo.getTotalRows() > 0) {

            List<IngDTO> list = ingService.selectList(vo);
            model.addAttribute("list", list);

        } else {
//			by pass
        }
        return "admin/infra/prj_1/ing/ingList";
    }

    //FORM W/ seq
    @RequestMapping("/ingForm")
    public String ingForm(IngVo vo, Model model){
        IngDTO ingDTO = ingService.selectOne(vo);
        model.addAttribute("item",ingDTO);
        return "admin/infra/prj_1/ing/ingForm";
    }
    //FORM W/ seq

    //UPDATE&DELETE
    @RequestMapping("/ingForm/update")
    public String ingUpdate(IngDTO dto){
        ingService.update(dto);
        return "redirect:/ingList/list";
    }
    @RequestMapping("/ingForm/delete")
    public String ingDelete(IngVo vo){
        ingService.delete(vo);
        return"redirect:/ingList/list";
    }
    //UPDATE&DELETE




}//END OF THE CONTROLLER
