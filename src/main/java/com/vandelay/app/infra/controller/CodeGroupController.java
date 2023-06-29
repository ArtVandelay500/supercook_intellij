package com.vandelay.app.infra.codegroup;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class CodeGroupController {

    @Autowired
    CodeGroupServiceImpl service;

    @RequestMapping("/codeGroupList")
    public String codeGroupList( CodeGroupVo vo, Model model){
        System.out.println(vo.getShOption());
        System.out.println(vo.getShKeyword());


        List<CodeGroup> list = service.selectList(vo);
        model.addAttribute("list", list);

//        model.addAttribute("list", service.selectList());


        return "codeGroupList";
    }

    @RequestMapping("/codeGroupForm")
    public String codeGroupForm(CodeGroupVo vo, Model model){
        CodeGroup codeGroup = service.selectOne(vo);

        model.addAttribute("item",codeGroup);

        return "codeGroupForm";
    }

    @RequestMapping("/codeGroupUpdt")
    public String codeGroupUpdt(CodeGroup dto){
        System.out.println("heyheyhey");
        service.update(dto);
        return "redirect:/codeGroupList";
    }

    @RequestMapping("/codeGroupDelt")
    public String codeGroupDelt(CodeGroup dto){
        service.delete(dto);
        return "redirect:/codeGroupList";
    }
    @RequestMapping("/codeGroupNsrt")
    public String codeGroupNsrt(CodeGroup vo){
        service.insert(vo);
        return "redirect:/codeGroupList";
    }

    @RequestMapping("/codeGroupUelt")
    public String codeGroupUelt(CodeGroup dto){
        service.update(dto);
        return "redirect:/codeGroupList";
    }
}