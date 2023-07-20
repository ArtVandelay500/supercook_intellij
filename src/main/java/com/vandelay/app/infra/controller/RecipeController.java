package com.vandelay.app.infra.controller;

import com.vandelay.app.infra.dto.CodeDTO;
import com.vandelay.app.infra.dto.RecipeDTO;
import com.vandelay.app.infra.service.RecipeService;
import com.vandelay.app.infra.vo.RecipeVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequiredArgsConstructor
public class RecipeController {
    private final RecipeService recipeService;

    @RequestMapping("/recipeList/list")
    public String recipeList(@ModelAttribute("vo") RecipeVo vo, Model model){
        vo.setShKey(vo.getShKey() == null ? "" : vo.getShKey());
        vo.setParamsPaging(recipeService.selectOneCount(vo));

        if(vo.getTotalRows() > 0) {
            List<CodeDTO> list = recipeService.selectList(vo);
            model.addAttribute("list", list);
//			model.addAttribute("vo", vo);
        } else {
//			by pass
        }

        return "admin/infra/prj_1/recipe/recipeList";
    }

    @RequestMapping("/recipeForm")
    public String recipeForm(RecipeVo vo,Model model){
        RecipeDTO recipeDTO = recipeService.selectOne(vo);
        return "admin/infra/prj_1/recipe/recipeForm";
    }

    @RequestMapping("/recipeForm/insert")
    public String insert(RecipeDTO dto){
        recipeService.insert(dto);
        return "redirect:/recipeList/list";
    }

    @RequestMapping("/recipeForm/update")
    public String update(RecipeDTO dto){
        recipeService.update(dto);
        return "redirect:/recipeList/list";
    }
    @RequestMapping("/recipeForm/delete")
    public String delete(RecipeVo vo){
        recipeService.delete(vo);
        return "redirect:/recipeList/list";
    }
}
