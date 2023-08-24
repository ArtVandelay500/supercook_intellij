package com.vandelay.app.infra.controller;

import com.vandelay.app.infra.dto.MemberDTO;
import com.vandelay.app.infra.dto.UploadDTO;
import com.vandelay.app.infra.service.KakaoAPI;
import com.vandelay.app.infra.service.MemberService;
import com.vandelay.app.infra.vo.MemberVo;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.socket.WebSocketSession;

import javax.servlet.http.HttpSession;
import java.lang.reflect.Member;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequiredArgsConstructor
public class MemberController {
    private final MemberService memberService;
    @Autowired
    KakaoAPI kakaoAPI;

    @RequestMapping("/member/list")
    public String memberList(Model model){

        List<MemberDTO> list = memberService.selectList();
        model.addAttribute("list",list);

        return "admin/infra/prj_1/member/memberList";
    }

    @RequestMapping("/member/save")
    public String memberSave(MemberDTO dto){
        memberService.save(dto);
        return "login/infra/prj_1/login";
    }

    @RequestMapping("/memberForm")
    public String memberForm(MemberDTO dto, Model model){
        MemberDTO memberDTO = memberService.selectOne(dto);
        model.addAttribute("item",memberDTO);

        List<UploadDTO> uploadList = memberService.selectListUpload(dto);
        model.addAttribute("listUploaded",uploadList);
        return "admin/infra/prj_1/member/memberForm";
    }

    @RequestMapping("/memberForm/update")
    public String memberUpdate(MemberDTO dto) throws Exception {
        memberService.update(dto);
        return "redirect:/member/list";
    }

    @RequestMapping("/memberForm/insert")
    public String memberInsert(MemberDTO dto) throws Exception {
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
            httpSession.setAttribute("sessionProfilePath",rtMemberDTO.getPath());
            httpSession.setAttribute("sessionProfileName",rtMemberDTO.getUuidName());
            httpSession.setAttribute("sessionSeq",rtMemberDTO.getSeq());
            returnMap.put("rtMemberDTO",rtMemberDTO);
            System.out.println(rtMemberDTO.getSeq());
            System.out.println(rtMemberDTO.getUuidName());
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
/**
 * @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 * @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 * @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 * @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 */

@RequestMapping("/userMemberForm/update")
public String userMemberUpdate(MemberDTO dto) throws Exception {
    memberService.update(dto);
    return "redirect:/indexUserView";
}


//@GetMapping("/login")
//    public String preventLogin(Model model){
//
//        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
//        if (authentication == null || authentication instanceof AnonymousAuthenticationToken) {
//            return "login/infra/prj_1/login";
//        }
//
//        return "redirect:/indexUserView";
//    }

//
@RequestMapping(value="/login/kakao")
public String login(@RequestParam("code") String code, HttpSession session) {
    System.out.println("code : " + code);

    String access_Token = kakaoAPI.getAccessToken(code);
    System.out.println("access_Token : " + access_Token);

    HashMap<String, Object> userInfo = kakaoAPI.getUserInfo(access_Token);
    System.out.println("login Controller : " + userInfo);

    //    클라이언트의 이메일이 존재할 때 세션에 해당 이메일과 토큰 등록
    if (userInfo.get("nickname") != null) {
        session.setAttribute("userId", userInfo.get("nickname"));
        session.setAttribute("access_Token", access_Token);
        session.setAttribute("userProfile",  userInfo.get("profile_image"));
        session.setAttribute("sessionId",  userInfo.get("nickname"));
    }

    return "/user/infra/prj_1/indexUserView";
}


}//END OF MEMBER CONTROLLER
