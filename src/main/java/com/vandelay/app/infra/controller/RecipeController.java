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
        /**
         * split the String of texts by comma and Set those into Array
         */
        dto.setIngredient_seqArray(dto.getIngredient_seq().split(","));
        dto.setIngredientAmountArray(dto.getIngredientAmount().split(","));
        // Insert the ingredient_seq items using the modified insertIng method
        recipeService.insert(dto);
        return "redirect:/recipeList/list";
    }

    @RequestMapping("/recipeForm/update")
    public String update(RecipeDTO dto){
        dto.setIngredient_seqArray(dto.getIngredient_seq().split(","));
        dto.setIngredientAmountArray(dto.getIngredientAmount().split(","));
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

//    /**
//     *
//     * @param vo: shKeyCode from recipeForm for searching 'code'
//     * @return: return set of data matches with the given 'shKeyCode'
//     */
//    @ResponseBody
//    @RequestMapping(value="/searchTheme",method = RequestMethod.POST)
//    public Map<String, Object> selectOneShKeyTheme(RecipeVo vo){
//        Map<String,Object> returnMap = new HashMap<String,Object>();
//
//        List<CodeDTO> listShKeyTheme = codeService.selectOneShKeyTheme(vo);
//        if(listShKeyTheme != null){
//            returnMap.put("listShKeyTheme", listShKeyTheme);
//            returnMap.put("rt","success");
//        }else{
//            returnMap.put("rt","fail");
//        }
//        System.out.println(listShKeyTheme);
//        System.out.println(returnMap.get("listShKeyTheme"));
//        System.out.println(returnMap.get("rt"));
//        System.out.println(returnMap);
//
//        return returnMap;
//    }
//
//    /**
//     *
//     * @param vo: search for cooking tools in codeList
//     * @return : returns a set of data that are only cooking tools from codeList
//     */
//    @ResponseBody
//    @RequestMapping(value="/searchTool",method = RequestMethod.POST)
//    public Map<String, Object> selectOneShKeyTool(RecipeVo vo){
//        Map<String,Object> returnMap = new HashMap<String,Object>();
//
//        List<CodeDTO> listShKeyTool = codeService.selectOneShKeyTool(vo);
//        if(listShKeyTool != null){
//            returnMap.put("listShKeyTool", listShKeyTool);
//            returnMap.put("rt","success");
//        }else{
//            returnMap.put("rt","fail");
//        }
//        System.out.println(listShKeyTool);
//        System.out.println(returnMap.get("listShKeyTool"));
//        System.out.println(returnMap.get("rt"));
//        System.out.println(returnMap);
//
//        return returnMap;
//    }
//
//




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

    //RecipeForm SELECT OPTION
    //RecipeForm SELECT OPTION
    @ModelAttribute("codeType")
    public List<CodeDTO> codeTypeList(Model model){
        List<CodeDTO> list = codeService.selectType();
        model.addAttribute("codeType",list);
        return codeService.selectType();
    }
    //RecipeForm SELECT OPTION
    //RecipeForm SELECT OPTION

    //RecipeForm SELECT OPTION
    //RecipeForm SELECT OPTION
    @ModelAttribute("codeMethod")
    public List<CodeDTO> codeMethodList(Model model){
        List<CodeDTO> list = codeService.selectMethod();
        model.addAttribute("codeMethod",list);
         return codeService.selectMethod();

    }
    //RecipeForm SELECT OPTION
    //RecipeForm SELECT OPTION





}//END OF THE CONTROLLER
