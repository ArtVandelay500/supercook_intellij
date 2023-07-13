package com.vandelay.app.infra.controller;

import com.vandelay.app.infra.dto.MemberDTO;
import com.vandelay.app.infra.service.MemberService;
import com.vandelay.app.infra.vo.MemberVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.lang.reflect.Member;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller

@RequiredArgsConstructor
public class MemberController {
    private final MemberService memberService;

    @RequestMapping("/member/list")
    public String memberList(Model model){

        List<MemberDTO> list = memberService.selectList();
        model.addAttribute("list",list);

        return "admin/infra/prj_1/member/memberList";
    }

    @RequestMapping("/member/save")
    public String memberSave(MemberDTO dto){
        memberService.save(dto);
        return "redirect:/login";
    }

    @RequestMapping("/memberForm")
    public String memberForm(MemberDTO dto, Model model){
        MemberDTO memberDTO = memberService.selectOne(dto);
        model.addAttribute("item",memberDTO);
        return "admin/infra/prj_1/member/memberForm";
    }

    @RequestMapping("/memberForm/update")
    public String memberUpdate(MemberDTO dto){
        memberService.update(dto);
        return "redirect:/member/list";
    }

    @RequestMapping("/memberForm/insert")
    public String memberInsert(MemberDTO dto){
        memberService.insert(dto);
        return "redirect:/member/list";
    }

    @RequestMapping("/memberForm/delete")
    public String memberDelete(MemberDTO dto){
        memberService.delete(dto);
        return "redirect:/member/list";
    }

//SIGNUP ID DUPLICATION CHECK
//SIGNUP ID DUPLICATION CHECK
//    @ResponseBody
//    @RequestMapping(value= "/idCheck", method = RequestMethod.POST)
//    public Map<String,Object> idCheck(MemberVo vo){
//        Map<String,Object> returnMap = new HashMap<String, Object>();
//        MemberDTO rtMemberDTO = memberService.selectOneID(vo);
//        if(rtMemberDTO != null){
//            returnMap.put("rtMemberDTO",rtMemberDTO);
//            returnMap.put("rt","unavailable");
//        }else{
//            returnMap.put("rt","available");
//        }
//        return returnMap;
//    }

    @ResponseBody
    @RequestMapping(value= "/idCheck", method = RequestMethod.POST)
    public Map<String,Object> idCheck(MemberVo vo){
        Map<String,Object> returnMap = new HashMap<String, Object>();
        int rtNum = memberService.selectOneCheckId(vo);
        if (rtNum == 0) {
            returnMap.put("rt","available");
        }else{
            returnMap.put("rt","unavailable");
        }
        return returnMap;
    }

//SIGNUP ID DUPLICATION CHECK
//SIGNUP ID DUPLICATION CHECK

//LOGIN ID AND PWD CHECK
//LOGIN ID AND PWD CHECK

    @ResponseBody
    @RequestMapping(value = "/member/login", method = RequestMethod.POST)
    public Map<String, Object> login(MemberVo vo, HttpSession httpSession){
        Map<String,Object> returnMap = new HashMap<String,Object>();

        MemberDTO rtMemberDTO = memberService.selectOneAJAX(vo);
        if(rtMemberDTO != null){
            httpSession.setMaxInactiveInterval(60*60);
            httpSession.setAttribute("sessionId",vo.getEmail());
            returnMap.put("rtMemberDTO",rtMemberDTO);
            returnMap.put("rt","success");
        }else{
            returnMap.put("rt","fail");
        }
        System.out.println(vo.getEmail());
        return returnMap;
    }
    @ResponseBody
    @RequestMapping("/member/logout")
    public Map<String, Object> logoutUsrProc(MemberVo vo, HttpSession httpSession) {
        Map<String, Object> returnMap = new HashMap<String, Object>();

        httpSession.invalidate();
        returnMap.put("rt", "success");

        return returnMap;
    }

//LOGIN ID AND PWD CHECK
//LOGIN ID AND PWD CHECK



}
