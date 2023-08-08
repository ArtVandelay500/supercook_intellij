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

    @GetMapping("/login")
    public String indexLogin(){ return "login/infra/prj_1/login";}

    @GetMapping("/loginAdmin")
    public String indexAdminLogin(){ return "login/infra/prj_1/loginAdmin";}

    @GetMapping("/loginForm")
    public String indexLoginForm(){
        return "login/infra/prj_1/loginForm";
    }
    @GetMapping("/indexUserView")
    public String indexUserView(){
        return "user/infra/prj_1/indexUserView";
    }





//TEAMM
//TEAMM
//TEAMM
    @GetMapping("/indexUsrView")
    public String  indexUsrView(){return "team/usr/index/indexUsrView";}

    @GetMapping("/partyApproved")
    public String  partyApproved(){return "team/usr/party/partyApproved";}
//TEAMM
//TEAMM
//TEAMM
//TEAMM

}
