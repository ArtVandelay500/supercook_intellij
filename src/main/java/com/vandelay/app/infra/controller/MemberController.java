package com.vandelay.app.infra.controller;

import com.vandelay.app.infra.dto.MemberDTO;
import com.vandelay.app.infra.service.MemberService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.lang.reflect.Member;
import java.util.List;

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







}
