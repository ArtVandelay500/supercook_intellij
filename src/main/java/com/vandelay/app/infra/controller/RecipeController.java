package com.vandelay.app.infra.controller;

import com.vandelay.app.infra.dto.CodeDTO;
import com.vandelay.app.infra.dto.IngDTO;
import com.vandelay.app.infra.dto.IngGroupDTO;
import com.vandelay.app.infra.dto.RecipeDTO;
import com.vandelay.app.infra.service.CodeService;
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
    private final CodeService codeService;

    /**
     *
     * @param vo
     * @param model
     * @return
     */
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
        model.addAttribute("item" ,recipeDTO);
        System.out.println(model.getAttribute("item"));
        return "admin/infra/prj_1/recipe/recipeForm";
    }


    @RequestMapping("/recipeForm/insert")
    public String insert(RecipeDTO dto){
        dto.setIngredient_seqArray(dto.getIngredient_seq().split(","));
        dto.setIngredientAmountArray(dto.getIngredientAmount().split(","));
        dto.setIngredientBigCatArray(dto.getIngredientBigCat().split(","));
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
        dto.setIngredient_seqArray(dto.getIngredient_seq().split(","));
        dto.setIngredientAmountArray(dto.getIngredientAmount().split(","));
        dto.setIngredientBigCatArray(dto.getIngredientBigCat().split(","));
        recipeService.update(dto);
        return "redirect:/recipeList/list";
    }
    @RequestMapping("/recipeForm/delete")
    public String delete(RecipeVo vo){
        recipeService.delete(vo);
        return "redirect:/recipeList/list";
    }

    /**
     *
     * @param vo: shKey typed and search from ingredient table
     * @return : returns a value matches with the shKey input
     */
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

        return returnMap;
    }

    /**
     *
     * @param vo: shKeyCode from recipeForm for searching 'code'
     * @return: return set of data matches with the given 'shKeyCode'
     */
    @ResponseBody
    @RequestMapping(value="/searchCode",method = RequestMethod.POST)
    public Map<String, Object> selectOneShKeyCode(RecipeVo vo){
        Map<String,Object> returnMap = new HashMap<String,Object>();

        List<CodeDTO> listShKeyCode = codeService.selectOneShKeyCode(vo);
        if(listShKeyCode != null){
            returnMap.put("listShKeyCode", listShKeyCode);
            returnMap.put("rt","success");
        }else{
            returnMap.put("rt","fail");
        }
        System.out.println(listShKeyCode);
        System.out.println(returnMap.get("listShKeyCode"));
        System.out.println(returnMap.get("rt"));
        System.out.println(returnMap);

        return returnMap;
    }







    /**
     *
     * @param dto: recipeIngredient의 ingredient_seq
     * @return : ingredient_seq = (ingredient)seq, ingredient의 이름
     */
    @ModelAttribute("ingList")
    public List<RecipeDTO> ingList(RecipeDTO dto){
        System.out.println("ingredient_seq is : " + dto.getIngredient_seq());
        return recipeService.selectIngList(dto);
    }





}//END OF THE CONTROLLER
