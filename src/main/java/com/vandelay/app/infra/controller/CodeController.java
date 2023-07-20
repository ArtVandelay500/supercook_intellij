package com.vandelay.app.infra.controller;

import com.vandelay.app.infra.dto.CodeDTO;
import com.vandelay.app.infra.dto.IngGroupDTO;
import com.vandelay.app.infra.service.CodeGroupService;
import com.vandelay.app.infra.service.CodeService;
import com.vandelay.app.infra.vo.CodeGroupVo;
import com.vandelay.app.infra.vo.CodeVo;
import com.vandelay.app.infra.vo.IngVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequiredArgsConstructor
public class CodeController {
    private final CodeService codeService;
    private final CodeGroupService codeGroupService;
    @RequestMapping("/codeList/list")
    public String selectList(@ModelAttribute("vo") CodeVo vo, Model model){

        vo.setShKey(vo.getShKey() == null ? "" : vo.getShKey());
        vo.setParamsPaging(codeService.selectOneCount(vo));
        // Pagination pre-import code
        // Pagination pre-import code
            //        vo.setShKey(vo.getShKey() == null ? "조리법" : vo.getShKey());
            //        List<CodeDTO> codeDTOList = codeService.selectList(vo);
            //        model.addAttribute("list", codeDTOList);
            //        /*        model.addAttribute("vo",vo); <--- @ModelAttribute("vo")와 동일 */
            //        return "admin/infra/prj_1/code/codeList";
        // Pagination pre-import code
        // Pagination pre-import code

        if(vo.getTotalRows() > 0) {
            List<CodeDTO> list = codeService.selectList(vo);
            model.addAttribute("list", list);
//			model.addAttribute("vo", vo);
        } else {
//			by pass
        }
        return "admin/infra/prj_1/code/codeList";
    }


    @RequestMapping("/codeForm")
    public String codeForm(CodeVo vo, Model model){
        CodeDTO codeDTO = codeService.selectOne(vo);
        model.addAttribute("item", codeDTO);
        return "admin/infra/prj_1/code/codeForm";
    }
    @RequestMapping("/codeForm/update")
    public String codeUpdate(CodeDTO dto){
        codeService.update(dto);
        System.out.println();
        return "redirect:/codeList/list";
    }

    @RequestMapping("/codeForm/insert")
    public String codeInsert(CodeDTO dto){
        codeService.insert(dto);
        return "redirect:/codeList/list";
    }

    @RequestMapping("/codeForm/delete")
    public String codeDelete(CodeVo vo){
        codeService.delete(vo);
        return "redirect:/codeList/list";
    }

//    AJAX DATA TOSSING AND RECEIVING
//    AJAX DATA TOSSING AND RECEIVING
//    @ResponseBody
//    @RequestMapping("/codeList/sort")
//    public Map<String, Object> codeListSort(CodeVo vo){
//        Map<String, Object> returnMap = new HashMap<String,Object>();
//        CodeDTO rtCodeDTO = codeService.selectListAJAX(vo);
//
//        if(rtCodeDTO != null){
//            returnMap.put("rtCodeDTO",rtCodeDTO);
//            returnMap.put("rt","success");
//        }else{
//            returnMap.put("rt","fail");
//        }
//        return returnMap;
//    }

//    AJAX DATA TOSSING AND RECEIVING
//    AJAX DATA TOSSING AND RECEIVING

    //CodeGroup SELECT OPTION
    //CodeGroup SELECT OPTION
    @ModelAttribute("codeGroup")
    public List<IngGroupDTO> ingGroupDTOList(CodeGroupVo vo){
        return codeGroupService.selectOpt(vo);
    }
    //CodeGroup SELECT OPTION
    //CodeGroup SELECT OPTION




}