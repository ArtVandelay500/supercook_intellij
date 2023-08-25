package com.vandelay.app.infra.controller;

import com.vandelay.app.infra.service.LikeService;
import com.vandelay.app.infra.service.RecipeService;
import com.vandelay.app.infra.vo.LikeVo;
import com.vandelay.app.infra.vo.MemberVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequiredArgsConstructor
public class LikeController {
    private final LikeService likeService;
    private final RecipeService recipeService;



    @ResponseBody
    @RequestMapping("/likeUp")
    public Map<String, Object> like(LikeVo vo, HttpServletRequest request) {
        Map<String, Object> returnMap = new HashMap<String, Object>();
        String sessionSeq = (String)request.getSession().getAttribute("sessionSeq");
        vo.setMember_seq(Integer.parseInt(sessionSeq));
        int likeNum =  likeService.findLike(vo);
        if(likeNum == 0){
            recipeService.insertLike(vo);
            likeService.likeUp(vo);
        }else{
            recipeService.deleteLike(vo);
            likeService.likeDown(vo);
        }
        returnMap.put("rt", "success");
        returnMap.put("likeNum", likeNum);
        return returnMap;
    }

    @ResponseBody
    @RequestMapping("/likeCheck")
    public Map<String, Object> likeCheck(LikeVo vo, HttpServletRequest request) {
        Map<String, Object> returnMap = new HashMap<String, Object>();
        int likeNum =  likeService.findLike(vo);
        System.out.println("여기가 바로 자바맛집이오??????????????");
        System.out.println(vo.getMember_seq());
        System.out.println(likeNum);
        returnMap.put("rt", "success");
        returnMap.put("likeNum", likeNum);
        return returnMap;
    }





}
