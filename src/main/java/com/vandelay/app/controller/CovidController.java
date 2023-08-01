package com.vandelay.app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CovidController {
    @RequestMapping("/covid")
    public String indexCovid(){
        return "covidTest";
    }
}
