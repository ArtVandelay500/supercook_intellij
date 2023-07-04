package com.vandelay.app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
    @GetMapping("/")
    public String index(){
        return "user/infra/biography/biographyUserView";
    }

    @GetMapping("/indexAdminView")
    public String indexAdminView(){ return "admin/infra/prj_1/index/indexAdminView";}
}
