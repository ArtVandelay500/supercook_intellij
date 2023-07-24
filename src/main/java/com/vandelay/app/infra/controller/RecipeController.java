package com.vandelay.app.infra.controller;

import com.vandelay.app.infra.dto.CodeDTO;
import com.vandelay.app.infra.dto.IngDTO;
import com.vandelay.app.infra.dto.IngGroupDTO;
import com.vandelay.app.infra.dto.RecipeDTO;
import com.vandelay.app.infra.service.IngService;
import com.vandelay.app.infra.service.RecipeService;
import com.vandelay.app.infra.vo.IngVo;
import com.vandelay.app.infra.vo.RecipeVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequiredArgsConstructor
public class RecipeController {
    private final RecipeService recipeService;
    private final IngService ingService;

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
    public String recipeForm(RecipeVo vo, Model model){
        RecipeDTO recipeDTO = recipeService.selectOne(vo);
        return "admin/infra/prj_1/recipe/recipeForm";
    }

    @RequestMapping("/recipeForm/insert")
    public String insert(RecipeDTO dto){
        dto.setIngredient_seqArray(dto.getIngredient_seq().split(","));
        recipeService.insert(dto);

        //multi-insert as many as the number of the ingredient items
        for (String item : dto.getIngredient_seqArray()) {
            System.out.println("#########################");
            System.out.println(item);
            System.out.println("#########################");
        }

        // Insert the ingredient_seq items using the modified insertIng method
//        recipeService.insertIng(dto.getIngredient_seqArray());

        System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        System.out.println(dto);
        System.out.println(dto.getIngredient_seqArray());
        System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
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

    @ResponseBody
    @RequestMapping(value = "/searchIng", method = RequestMethod.POST)
    public Map<String, Object> selectOneShKey(RecipeVo vo){
        Map<String,Object> returnMap = new HashMap<String,Object>();

        List<IngDTO> listShKey = ingService.selectOneShKey(vo);
        if(listShKey != null){

            returnMap.put("listShKey",listShKey);
            returnMap.put("rt","success");
        }else{
            returnMap.put("rt","fail");
        }
        System.out.println(listShKey);
        System.out.println(returnMap.get("listShKey"));
        System.out.println(returnMap.get("rt"));
        System.out.println(returnMap);
        return returnMap;
    }




}
